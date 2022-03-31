`timescale 1ns / 1ps
`include "def.v"

module stall(
    input [31:0] D_Instr,
    input [31:0] E_Instr,
    input [31:0] M_Instr,

    input E_MDU_Busy,
    input E_MDU_Start,

    output Stall
    );

    // 对指令进行解析，同时计算出每一级的Tuse, Tnew

    wire D_load, D_store, D_calc_r, D_calc_i, D_shift_s, D_shift_v, D_branch, D_jump_reg, D_jump_addr, D_jump_link, D_md, D_mf, D_mt;
    wire [4:0] D_rs_addr, D_rt_addr;
    control D_classifyer(
        .Instr(D_Instr),

        .rs(D_rs_addr),
        .rt(D_rt_addr),

        .load(D_load),
        .store(D_store),
        .calc_r(D_calc_r),
        .calc_i(D_calc_i),
        .shift_s(D_shift_s),
        .shift_v(D_shift_v),
        .branch(D_branch),
        .jump_reg(D_jump_reg),
        .jump_addr(D_jump_addr),
        .jump_link(D_jump_link),
        .md(D_md),
        .mf(D_mf),
        .mt(D_mt)
    );

    wire [7:0] D_Tuse_rt, D_Tuse_rs;
    assign D_Tuse_rt = (D_branch) ? 8'd0 :
                       (D_calc_r | D_md) ? 8'd1 :
                       (D_store) ? 8'd2 :
                       8'd3;
    assign D_Tuse_rs = (D_branch | D_jump_reg) ? 8'd0 :
                       (D_calc_i | (D_calc_r & !D_shift_s) | D_load | D_store | D_mt | D_md) ? 8'd1 :
                       8'd3;

    wire E_load, E_store, E_calc_r, E_calc_i, E_shift_s, E_shift_v, E_branch, E_jump_reg, E_jump_addr, E_jump_link, E_mf, E_mt;
    wire [4:0] E_GRFA3;
    control E_classifyer(
        .Instr(E_Instr),

        .GRFA3(E_GRFA3),

        .load(E_load),
        .store(E_store),
        .calc_r(E_calc_r),
        .calc_i(E_calc_i),
        .shift_s(E_shift_s),
        .shift_v(E_shift_v),
        .branch(E_branch),
        .jump_reg(E_jump_reg),
        .jump_addr(E_jump_addr),
        .jump_link(E_jump_link),
        .mf(E_mf),
        .mt(E_mt)
    );

    wire [7:0] E_Tnew;
    assign E_Tnew = (E_calc_i | E_calc_r | E_mf) ? 8'd1 :
                    (E_load) ? 8'd2 :
                    8'd0;

    wire M_load, M_store, M_calc_r, M_calc_i, M_shift_s, M_shift_v, M_branch, M_jump_reg, M_jump_addr, M_jump_link, M_mf, M_mt;
    wire [4:0] M_GRFA3;
    control M_classifyer(
        .Instr(M_Instr),

        .GRFA3(M_GRFA3),

        .load(M_load),
        .store(M_store),
        .calc_r(M_calc_r),
        .calc_i(M_calc_i),
        .shift_s(M_shift_s),
        .shift_v(M_shift_v),
        .branch(M_branch),
        .jump_reg(M_jump_reg),
        .jump_addr(M_jump_addr),
        .jump_link(M_jump_link),
        .mf(M_mf),
        .mt(M_mt)
    );

    wire [7:0] M_Tnew;
    assign M_Tnew = (M_load) ? 8'd1 :
                    8'd0;    

    // 根据Tuse和Tnew的值判断是否进行阻塞

    wire E_stall_rs = (E_GRFA3 == D_rs_addr && D_rs_addr != 0) && (E_Tnew > D_Tuse_rs);
    wire E_stall_rt = (E_GRFA3 == D_rt_addr && D_rt_addr != 0) && (E_Tnew > D_Tuse_rt);

    wire M_stall_rs = (M_GRFA3 == D_rs_addr && D_rs_addr != 0) && (M_Tnew > D_Tuse_rs);
    wire M_stall_rt = (M_GRFA3 == D_rt_addr && D_rt_addr != 0) && (M_Tnew > D_Tuse_rt);

    wire E_stall_mdu = ((D_md | D_mt | D_mf) && (E_MDU_Busy | E_MDU_Start));

    assign Stall = E_stall_rs | E_stall_rt | M_stall_rs | M_stall_rt | E_stall_mdu;



endmodule
