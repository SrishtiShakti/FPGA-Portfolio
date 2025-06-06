module FIFO8x8 (
    input clk, rst, 
    input rden, wren,          // Read & Write enable signals
    input [7:0] DataIn,        // 8-bit input data
    output [7:0] DataOut,      // 8-bit output data
    output fifo_full,          // HIGH when FIFO is full
    output fifo_empty,         // HIGH when FIFO is empty
    output data_out_valid      // HIGH when valid data is available for read
);


reg [7:0] fifo_array [15:0];  // 16-entry array for FIFO storage
reg [3:0] wrptr, rdptr;       // 4-bit write/read pointers (range 0-15)
wire [4:0] fifo_count;        // Count of stored elements

always @(posedge clk or posedge rst) begin
    if (rst) begin
        wrptr <= 0;
        rdptr <= 0;
    end
    else begin
        // Write 
        if (wren && !fifo_full) begin
            fifo_array[wrptr] <= DataIn;
            wrptr <= wrptr + 1;
        end
        
        // Read operation
        if (rden && !fifo_empty) begin
            rdptr <= rdptr + 1;
        end
    end
end

// Compute FIFO count
assign fifo_count = wrptr - rdptr;

// FIFO status
assign fifo_full  = (fifo_count == 16);
assign fifo_empty = (fifo_count == 0);

// Output valid
assign data_out_valid = (rden && !fifo_empty);

// Read data output
assign DataOut = fifo_array[rdptr];

endmodule
