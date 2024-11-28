`timescale 1ns/1ps

module uart_rx 
#( parameter BAUD_RATE = 9600) // Use this value to check functionality on actual baud rate, also needed for FPGA testing
//#( parameter BAUD_RATE = 10000000) // Use this value to check post-synthesis waveform on EDA playground
(
    input clk,
    input nrst,
    input rx,
    output reg [7:0] data_out,
    output reg valid
);

reg [13:0] baud_ctr;
reg [2:0] idx, cyc;
reg state, start;

localparam CLOCK_FREQUENCY = 100000000;
localparam BAUD_CYCLE = CLOCK_FREQUENCY/BAUD_RATE;

always @ (posedge clk) begin
    if (!nrst) begin
        data_out <= 8'b00000000;
        valid <= 0;
        state <= 0;
        start <= 0;
        idx <= 3'b000;
        cyc <= 3'b000;
        baud_ctr <= 0;
    end
    else begin
        if (state == 0) begin
            start <= rx;
            valid <= 0;
            if ((rx == 0) & (start == 1)) begin
                state <= 1;
                baud_ctr <= baud_ctr + 1;
            end
        end
        
        else if (state == 1) begin
            if ((baud_ctr == (BAUD_CYCLE + BAUD_CYCLE/2)) & (cyc == 3'b000)) begin
                data_out[idx] <= rx;
                idx <= idx + 1;
                cyc <= cyc + 1;
                baud_ctr <= 1;
            end
            else if ((baud_ctr == BAUD_CYCLE) & (cyc < 3'b111) & (cyc > 3'b000)) begin
                data_out[idx] <= rx;
                idx <= idx + 1;
                cyc <= cyc + 1;
                baud_ctr <= 1;
            end
            else if ((baud_ctr == (BAUD_CYCLE)) & (cyc == 3'b111)) begin
                data_out[idx] <= rx;
                valid <= 1;
                state <= 0;
                start <= 0;
                idx <= 3'b000;
                cyc <= 3'b000;
                baud_ctr <= 0;
            end
            else
                baud_ctr <= baud_ctr + 1;
        end

    end
end

endmodule