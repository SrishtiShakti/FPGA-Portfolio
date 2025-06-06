`timescale 1ns / 1ps
module FIFO_tb;

    reg clk, rst, wren, rden;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire fifo_full, fifo_empty, data_out_valid;

    // Instantiate FIFO
    FIFO8x8 fifo_inst (
        .clk(clk),
        .rst(rst),
        .wren(wren),
        .rden(rden),
        .DataIn(data_in),
        .DataOut(data_out),
        .fifo_full(fifo_full),
        .fifo_empty(fifo_empty),
        .data_out_valid(data_out_valid)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10ns clock period

    initial begin
        clk = 0; rst = 1; wren = 0; rden = 0; data_in = 8'b00000000;
        #10 rst = 0;

        // Write data into FIFO
        repeat (16) begin
            #10 wren = 1; data_in = data_in + 1;
        end
        #10 wren = 0;

        // Read back data from FIFO
        repeat (16) begin
            #10 rden = 1;
        end
        #10 rden = 0;

        #20 $finish;  // End simulation
    end

endmodule
