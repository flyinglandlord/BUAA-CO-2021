module cpu_checker (
    input clk,
    input reset,
    input [7:0] char,
    input [15:0] freq,
    output reg [1:0] format_type,
    output reg [3:0] error_code
);

    parameter COM_START = 0, COM_START_SYM = 22,
                TIME_NUM = 1,
                COM_SYM1 = 2, 
                PC_NUM = 3,
                COM_SYM2 = 4, COM_SPACE = 5;
    parameter MEM_SYM1 = 6,
                ADDR_NUM = 7, 
                MEM_SPACE1 = 8, MEM_SYM2 = 9, MEM_SYM3 = 10,  MEM_SPACE2 = 11,
                MEM_NUM = 12,
                MEM_FINISH = 13;
    parameter REG_SYM1 = 14,
                GRF_NUM = 15,
                REG_SPACE1 = 16, REG_SYM2 = 17, REG_SYM3 = 18, REG_SPACE2 = 19,
                REG_NUM = 20,
                REG_FINISH = 21;
    
    reg [6:0] state, next_state;
    reg [31:0] cnt;
    reg [31:0] _pc, _addr, _data;
    reg [31:0] _time, _grf;

    initial begin
        state = COM_START;
        next_state = COM_START;
        cnt = 0;
    end

    //Status shift list
    always @(char, state, next_state) begin
        case(state)

            //共通线部分
            COM_START: begin
                if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            COM_START_SYM: begin
                if(char >= "0" && char <= "9") next_state = TIME_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            TIME_NUM: begin
                if(cnt > 4) next_state = COM_START;
                else if(char >= "0" && char <= "9") next_state = TIME_NUM;
                else if(char == "@") next_state = COM_SYM1;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            COM_SYM1: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = PC_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            PC_NUM: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") begin
                    if(cnt > 8) next_state = COM_START;
                    else next_state = PC_NUM;
                end
                else if(cnt == 8) begin
                    if(char == ":") next_state = COM_SYM2;
                    else if(char == "^") next_state = COM_START_SYM;
                    else next_state = COM_START;
                end
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            COM_SYM2: begin
                if(char == " ") next_state = COM_SPACE;
                else if(char == 8'd42) next_state = MEM_SYM1;
                else if(char == "$") next_state = REG_SYM1;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            COM_SPACE: begin
                if(char == " ") next_state = COM_SPACE;
                else if(char == 8'd42) next_state = MEM_SYM1;
                else if(char == "$") next_state = REG_SYM1;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            //数据储存器线部分
            MEM_SYM1: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = ADDR_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            ADDR_NUM: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") begin
                    if(cnt > 8) next_state = COM_START;
                    else next_state = ADDR_NUM;
                end
                else if(cnt == 8) begin
                    if(char == " ") next_state = MEM_SPACE1;
                    else if(char == "<") next_state = MEM_SYM2;
                    else if(char == "^") next_state = COM_START_SYM;
                    else next_state = COM_START;
                end
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_SPACE1: begin
                if(char == " ") next_state = MEM_SPACE1;
                else if(char == "<") next_state = MEM_SYM2;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_SYM2: begin
                if(char == "=") next_state = MEM_SYM3;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_SYM3: begin
                if(char == " ") next_state = MEM_SPACE2;
                else if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = MEM_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_SPACE2: begin
                if(char == " ") next_state = MEM_SPACE2;
                else if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = MEM_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_NUM: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") begin
                    if(cnt > 8) next_state = COM_START;
                    else next_state = MEM_NUM;
                end
                else if(cnt == 8) begin
                    if(char == "#") next_state = MEM_FINISH;
                    else if(char == "^") next_state = COM_START_SYM;
                    else next_state = COM_START;
                end
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            MEM_FINISH: begin
                if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            //寄存器线部分
            REG_SYM1: begin
                if(char >= "0" && char <= "9") next_state = GRF_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            GRF_NUM: begin
                if(cnt > 4) next_state = COM_START;
                else if(char >= "0" && char <= "9") next_state = GRF_NUM;
                else if(char == " ") next_state = REG_SPACE1;
                else if(char == "<") next_state = REG_SYM2;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_SPACE1: begin
                if(char == " ") next_state = REG_SPACE1;
                else if(char == "<") next_state = REG_SYM2;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_SYM2: begin
                if(char == "=") next_state = REG_SYM3;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_SYM3: begin
                if(char == " ") next_state = REG_SPACE2;
                else if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = REG_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_SPACE2: begin
                if(char == " ") next_state = REG_SPACE2;
                else if(char >= "0" && char <= "9" || char >= "a" && char <= "f") next_state = REG_NUM;
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_NUM: begin
                if(char >= "0" && char <= "9" || char >= "a" && char <= "f") begin
                    if(cnt > 8) next_state = COM_START;
                    else next_state = REG_NUM;
                end
                else if(cnt == 8) begin
                    if(char == "#") next_state = REG_FINISH;
                    else if(char == "^") next_state = COM_START_SYM;
                    else next_state = COM_START;
                end
                else if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end

            REG_FINISH: begin
                if(char == "^") next_state = COM_START_SYM;
                else next_state = COM_START;
            end            

        endcase
    end

    always @(posedge clk) begin
        if(reset) state <= COM_START;
        else state <= next_state;
    end

    //Counter, count the number input
    always @(posedge clk) begin
        if(reset) cnt <= 0;
        else begin
            if(next_state == TIME_NUM || next_state == PC_NUM || next_state == ADDR_NUM || next_state == MEM_NUM || next_state == GRF_NUM || next_state == REG_NUM) 
                cnt <= cnt + 1;
            else cnt <= 0;
        end
    end

    always @(posedge clk) begin
        if(reset) begin
            _time <= 0;
            _pc <= 0;
            _addr <= 0;
            _grf <= 0;
            error_code <= 0;

        end
        else begin
            if(next_state == TIME_NUM) begin
                _time <= (_time << 1) + (_time << 3) + char - 48;
            end
            else if(next_state == PC_NUM) begin
                _pc[31:4] <= _pc[27:0];
                _pc[3:0] <= (char >= "0" && char <= "9") ? char - 48 : char - 87;
            end
            else if(next_state == ADDR_NUM) begin
                _addr[31:4] <= _addr[27:0];
                _addr[3:0] <= (char >= "0" && char <= "9") ? char - 48 : char - 87;
            end
            else if(next_state == MEM_NUM) begin
                _data[31:4] <= _data[27:0];
                _data[3:0] <= (char >= "0" && char <= "9") ? char - 48 : char - 87;
            end
            else if(next_state == GRF_NUM) begin
                _grf <= (_grf << 1) + (_grf << 3) + char - 48;
            end
            else if(next_state == REG_NUM) begin
                _data[31:4] <= _data[27:0];
                _data[3:0] <= (char >= "0" && char <= "9") ? char - 48 : char - 87;
            end
            else if(next_state == COM_START || next_state == COM_START_SYM) begin
                _data <= 0;
                _addr <= 0;
                _pc <= 0;
                _time <= 0;
                _grf <= 0;
            end
        end
        
    end

    always @(state) begin
        format_type[0] <= (state == REG_FINISH);
        format_type[1] <= (state == MEM_FINISH);
        if(state == MEM_FINISH) begin
            if((_time & ((freq >> 1) - 1)) != 0) error_code[0] <= 1;
            if(!(_pc < 32'h0000_4fff && _pc > 32'h0000_3000) || (_pc & 32'd3) != 0) error_code[1] <= 1;
            if(!(_addr <= 32'h0000_2fff && _addr >= 32'h0000_0000) || (_addr & 32'd3) != 0) error_code[2] <= 1;
        end
        else if(state == REG_FINISH) begin
            if((_time & ((freq >> 1) - 1)) != 0) error_code[0] <= 1;
            if(!(_pc < 32'h0000_4fff && _pc > 32'h0000_3000) || (_pc & 32'd3) != 0) error_code[1] <= 1;
            if(!(_grf >= 0 && _grf <= 31)) error_code[3] <= 1; 
        end
        else error_code <= 0;
    end


endmodule //cpu_checker_2