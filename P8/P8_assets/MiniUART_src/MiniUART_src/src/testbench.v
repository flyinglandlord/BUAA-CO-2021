`include    ".\\src\\head_uart.v"
`define     DELAY_MS    1000000         // the delay unit is millisecond

module testbench_miniuart() ;
    // WISHBONE interface
    reg             clk, rst ;
    reg             stb, we ;
    reg     [4:2]   off ;
    reg     [31:0]  din ;               // 32-bit data writen to UART
    wire    [31:0]  dout ;              // 32-bit data output from UART
    reg     [31:0]  dsave ;             // saved 32-bit data output from UART
    wire            ack ;
    // Serial interface
    reg             rxd ;
    wire            txd ;
    
    // instantiate the controller module
    MiniUART    U_MiniUART( off, din, dout, stb, we, clk, rst, ack, rxd, txd ) ;
    
    //
    initial begin
        clk     = 0 ;
        rst     = 1 ;                       // reset the controller
        stb     = 0 ;
        we      = 0 ;
        off     = 0 ;
        din     = 32'h0 ;
        dsave   = 32'h0 ;
        rxd     = 1'b1 ;                    // serial line is idle!
        #50 rst = 0 ;
        // read LSR
        WB_Read(`OFF_UART_LSR) ;                    /* If you add dout and dsave to wave window,
                                                       you should see a value of 0x20 on dout
                                                       and dsave change to 0x20 at the 3rd positive 
                                                       edge of clk */
        // set send divisor register for 9600 baud
        WB_Write(`OFF_UART_DIVT, `BAUD_SND_9600) ;  /* 0x9(din) is written to 0x4(off) */
        // send a data with value of 0x12
        WB_Write(`OFF_UART_DATA, 32'h12) ;          /* 0x12(din) is written to 0x0(off) */
        
        #(1.2*`DELAY_MS) ;
        $stop ;
    end
      
    // generate clock  
    always  
        #(`CYCLE/2) clk = ~clk ;

    // task to read register with WISHBONE specification
    task    WB_Read ;
        input   [3:0]   a ;         // offset of the register to be read
        
        begin
            /* generate all stimulus signals for one cycle and ensure all
               of the signals are asserted at the positive edge of clock */
            @(negedge clk) ;        
            stb = 1 ;               // CPU strobes MiniUART
            we  = 0 ;               // CPU read data to MiniUART
            off = a ;               // a is the number of register
            @(posedge clk)
                dsave = dout ;
            @(negedge clk) ;
            stb = 0 ;               // read/write operation has finished
            off = 0 ;
        end
    endtask
    
    // task to write register with WISHBONE specification
    task    WB_Write ;
        input   [3:0]   a ;         // offset of the register to be written
        input   [31:0]  d ;         // data to be written to the register
        //
        begin    
            /* generate all stimulus signals for one cycle and ensure all
               of the signals are asserted at the positive edge of clock */
            @(negedge clk) ;        
            stb = 1 ;               // CPU strobes MiniUART
            we  = 1 ;               // CPU writes data to MiniUART
            off = a ;               
            din = d ;               
            @(negedge clk) ;
            stb = 0 ;               // read/write operation has finished
            we  = 0 ;               // deserts the write-enable
            off = 0 ;
            din = 0 ;
        end        
    endtask
    
endmodule