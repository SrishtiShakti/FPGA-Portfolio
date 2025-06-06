`timescale 1ns / 1ps
module FSM_tb;

    reg clk, rst, fifo_empty, tx_ready;
    reg [7:0] fifo_data;
    wire tx_enable, tx_busy;
    wire [9:0] tx_data;

    // Instantiate FSM
    FSM_Packetizer fsm_inst (
        .clk(clk),
        .rst(rst),
        .fifo_empty(fifo_empty),
        .tx_ready(tx_ready),
        .fifo_data(fifo_data),
        .tx_enable(tx_enable),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

    // Clock generation
    always #5 clk = ~clk;  

    initial begin
        clk = 0; rst = 1; fifo_empty = 1; tx_ready = 1; fifo_data = 8'b11001100;
        #10 rst = 0;

        // Simulate FIFO containing data
        #10 fifo_empty = 0;
        #10 tx_ready = 1;  // UART is ready

        #50 $finish;  // End simulation
    end

endmodule
