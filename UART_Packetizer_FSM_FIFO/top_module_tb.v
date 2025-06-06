`timescale 1ns / 1ps
module Top_Module_tb;

    reg clk, rst, wr_en, rd_en, tx_ready;
    reg [7:0] data_in;
    wire tx_out, fifo_full, fifo_empty, tx_busy, tx_ready_out;

    // Instantiate Top Module
    Top_Module uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .tx_ready(tx_ready),
        .data_in(data_in),
        .tx_out(tx_out),
        .fifo_full(fifo_full),
        .fifo_empty(fifo_empty),
        .tx_busy(tx_busy),
        .tx_ready_out(tx_ready_out)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10ns clock period

    initial begin
        clk = 0; rst = 1; wr_en = 0; rd_en = 0; tx_ready = 1; data_in = 8'b00000000;
        #10 rst = 0;

        // Fill FIFO with data
        repeat (16) begin
            #10 wr_en = 1; data_in = data_in + 1;
        end
        #10 wr_en = 0;

        // Simulate UART readiness and FIFO reading
        repeat (16) begin
            #10 rd_en = 1; tx_ready = 1;
        end
        #10 rd_en = 0;

        #50 $finish;  // End simulation
    end

endmodule
