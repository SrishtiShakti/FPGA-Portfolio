module FSM_Packetizer (
    input clk, rst, 
    input fifo_empty, tx_ready, tx_busy,   // ← ADDED tx_busy as input
    input [7:0] fifo_data,        
    output reg tx_enable,         
    output reg [9:0] tx_data      
);


// FSM states
parameter IDLE = 3'b000; 
parameter WAIT_TX_READY = 3'b001;
parameter LOAD_DATA = 3'b010;
parameter SEND_BITS = 3'b011;
parameter DONE = 3'b100;

reg [2:0] state, next_state;
reg [3:0] bit_counter; // Only 0–9 needed

// FSM state transition
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= IDLE;
    else
        state <= next_state;
end

// FSM next state logic
always @(*) begin
    case (state)
        IDLE:
            if (!fifo_empty) next_state = WAIT_TX_READY;
            else next_state = IDLE;

        WAIT_TX_READY:
            if (tx_ready) next_state = LOAD_DATA;
            else next_state = WAIT_TX_READY;

        LOAD_DATA:
            next_state = SEND_BITS;

        SEND_BITS:
            if (bit_counter == 9)
                next_state = DONE;
            else
                next_state = SEND_BITS;

        DONE:
            next_state = IDLE;

        default: next_state = IDLE;
    endcase
end

// FSM output and control
always @(posedge clk or posedge rst) begin
    if (rst) begin
        tx_data <= 10'b0;
        tx_enable <= 0;
        bit_counter <= 0;
    end else begin
        case (state)
            IDLE: begin
                tx_enable <= 0;
                bit_counter <= 0;
            end

            LOAD_DATA: begin
                tx_data <= {1'b1, fifo_data, 1'b0}; // Stop bit, data, start bit
                tx_enable <= 1;
                bit_counter <= 0;
            end

            SEND_BITS: begin
                tx_enable <= 0; // Only pulse once
                bit_counter <= bit_counter + 1;
            end

            DONE: begin
               
            end
        endcase
    end
end

endmodule
