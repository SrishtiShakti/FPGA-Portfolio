module UART_Transmitter (
    input clk, rst, 
    input start_tx,         // Signal to start transmission
    input [9:0] tx_data,    // 10-bit data packet (start + 8-bit data + stop)
    output reg tx_out,      // Serial output bitstream
    output reg tx_busy,     // HIGH when transmission is in progress
    output reg tx_ready     // HIGH when ready to accept a new frame
);

// Parameter for baud rate control
parameter BAUD_RATE = 9600;      // Adjustable baud rate
parameter CLOCK_FREQ = 50000000; // System clock frequency (50 MHz)
parameter BAUD_TICKS = CLOCK_FREQ / BAUD_RATE;

// Internal registers
reg [3:0] bit_counter;           // Tracks which bit is being transmitted
reg [15:0] baud_counter;         // Controls baud rate timing
reg transmitting;                // Flag indicating ongoing transmission

always @(posedge clk or posedge rst) begin
    if (rst) begin
        tx_out <= 1'b1;   // Idle state (UART default HIGH)
        tx_busy <= 0;
        tx_ready <= 1;
        transmitting <= 0;
        bit_counter <= 0;
        baud_counter <= 0;
    end 
    else begin
        if (start_tx && !tx_busy) begin
            tx_ready <= 0;      // Disable new data input
            tx_busy <= 1;       // Mark as busy
            transmitting <= 1;  // Start transmission
            bit_counter <= 0;   // Reset bit tracking
        end

        // Baud rate clocking
        if (transmitting) begin
            baud_counter <= baud_counter + 1;
            if (baud_counter >= BAUD_TICKS) begin
                baud_counter <= 0;

                // Send bits sequentially
                tx_out <= tx_data[bit_counter];  // Transmit current bit
                
                bit_counter <= bit_counter + 1;
                
                // Stop transmission after all 10 bits are sent
                if (bit_counter == 10) begin
                    transmitting <= 0;
                    tx_busy <= 0;
                    tx_ready <= 1;  // Ready for new data
                    bit_counter <= 0;
                    tx_out <= 1'b1; // Go back to idle state
                end
            end
        end
    end
end

endmodule
