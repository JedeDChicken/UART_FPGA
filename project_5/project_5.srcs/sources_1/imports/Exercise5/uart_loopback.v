`timescale 1ns / 1ps

module uart_loopback 
#( parameter BAUD_RATE = 9600) // Use this value to check functionality on actual baud rate, also needed for FPGA testing
//#( parameter BAUD_RATE = 10000000) // Use this value to check post-synthesis waveform on EDA playground
(
    input clk,
    input nrst,
    input rx,
    output tx,
    output [7:0] probe_data
);

wire [7:0] output_data;
wire output_valid; 
wire input_en;
wire [7:0] input_data;
wire input_ready;

assign input_data = output_data;
assign input_en = output_valid;
assign probe_data = output_data;

uart_tx 
#( .BAUD_RATE(BAUD_RATE))
uart_tx(
    .clk   (clk),
    .nrst  (nrst),
    .en    (input_en),
    .data_in   (input_data),
    .tx    (tx),
    .ready (input_ready)
);

uart_rx 
#( .BAUD_RATE(BAUD_RATE))
uart_rx(
    .clk   (clk),
    .nrst  (nrst),
    .rx    (rx),
    .data_out  (output_data),
    .valid (output_valid)
);

endmodule
