`timescale 1ns/1ps

module uart_tx 
#( parameter BAUD_RATE = 9600) // Use this value to check functionality on actual baud rate, also needed for FPGA testing
//#( parameter BAUD_RATE = 10000000) // Use this value to check post-synthesis waveform on EDA playground
(
    input clk,
    input nrst,
    input en,
    input [7:0] data_in,
    output reg tx,
    output ready
);

reg [13:0] baud_ctr;
reg baud_ctr_en;
reg [1:0] state;
reg [2:0] bit_ctr;
reg [7:0] sr;

localparam S_IDLE  = 2'd0;
localparam S_SYNC  = 2'd1;
localparam S_START = 2'd2;
localparam S_DATA  = 2'd3;
localparam CLOCK_FREQUENCY = 100000000;
localparam BAUD_CYCLE = CLOCK_FREQUENCY/BAUD_RATE;

// frequency divider for the baud rate
always@(posedge clk  or negedge nrst) begin
    if (!nrst) begin
        baud_ctr <= 'd0;
        baud_ctr_en <= 0;
    end else begin
        if (baud_ctr < BAUD_CYCLE) begin
            baud_ctr    <= baud_ctr + 1;
            baud_ctr_en <= 0;
        end else begin
            baud_ctr    <= 0;
            baud_ctr_en <= 1'b1;
        end
    end
end

// state transition
always@(posedge clk or negedge nrst) begin
    if (!nrst) begin
        state <= S_IDLE;
        bit_ctr <= 0;
        sr <= 0;
    end else begin 
        case(state)
            S_IDLE: if (en) begin // wait for the en signal (the go signal)
                state <= S_SYNC;  // start syncing to the baud rate
                sr <= data_in;
            end
            S_SYNC: if (baud_ctr_en) state <= S_START; // sync to baud cycle, before sending the start bit
            S_START: if (baud_ctr_en) state <= S_DATA; // state to send the start bit, wait for 1 baud cycle then send data
            S_DATA: if (baud_ctr_en) begin  // send data every 1 baud cycle, LSB first (that's why we shift to the right
                bit_ctr <= bit_ctr + 1; // count how many bits we sent so far
                sr <= {1'b0, sr[7:1]};  // shift right, since we are sending LSB first 
                if (bit_ctr == 3'd7) state <= S_IDLE; // after sending all 8 bits, we go back to the IDLE state
            end
            default: state <= S_IDLE;
        endcase
    end
end

always@(*) begin
    case(state)
        S_START: tx = 1'b0; // start bit
        S_DATA: tx = sr[0]; // 8-bit data sent serially
        default: tx = 1'b1; // if idle, default to 1
    endcase
end
assign ready = (state == S_IDLE);

endmodule

