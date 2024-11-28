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

endmodule
