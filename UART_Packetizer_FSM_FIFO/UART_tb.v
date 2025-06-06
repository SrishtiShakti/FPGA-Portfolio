`timescale 1ns / 1ps
module UART_tb;

    reg clk, rst, start_tx;
    reg [9:0] tx_data;
    wire tx_out, tx_busy, tx_ready;

    // Instantiate UART
    UART_Transmitter uart_inst (
        .clk(clk),
        .rst(rst),
        .start_tx(start_tx),
        .tx_data(tx_data),
        .tx_out(tx_out),
        .tx_busy(tx_busy),
        .tx_ready(tx_ready)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; start_tx = 0; tx_data = 10'b0110011011;  
        #10 rst = 0;

        // Start transmission
        #10 start_tx = 1;
        #10 start_tx = 0;  

        #100 $finish;  // End simulation
    end

endmodule
