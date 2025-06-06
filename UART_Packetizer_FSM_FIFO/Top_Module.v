module Top_Module (
    input clk, rst, 
    input wr_en, rd_en,         // FIFO control signals
    input tx_ready,             // UART ready signal
    input [7:0] data_in,        // 8-bit input data
    output tx_out,              // UART serial output
    output fifo_full, fifo_empty, // FIFO status flags
    output tx_busy, tx_ready_out // UART transmission status
);

// Internal connections
wire [7:0] fifo_data_out;
wire fifo_rden, uart_start_tx;
wire [9:0] uart_tx_data;

// FIFO instance
FIFO8x8 fifo_inst (
    .clk(clk),
    .rst(rst),
    .wren(wr_en),
    .rden(fifo_rden),
    .DataIn(data_in),
    .DataOut(fifo_data_out),
    .fifo_full(fifo_full),
    .fifo_empty(fifo_empty),
    .data_out_valid(uart_start_tx)
);

// FSM instance (Packetizer)
FSM_Packetizer fsm_inst (
    .clk(clk),
    .rst(rst),
    .fifo_empty(fifo_empty),
    .tx_ready(tx_ready),
    .fifo_data(fifo_data_out),
    .tx_enable(fifo_rden),
    .tx_data(uart_tx_data),
     .tx_busy(tx_busy)
);

// UART Transmitter instance
UART_Transmitter uart_inst (
    .clk(clk),
    .rst(rst),
    .start_tx(uart_start_tx),
    .tx_data(uart_tx_data),
    .tx_out(tx_out),
    .tx_busy(tx_busy),
    .tx_ready(tx_ready_out)
);

endmodule
