`timescale 1ns/1ps

module tb_uart;

reg clk, nrst;
wire rx_from_loopback, tx_from_tester, ready, valid;
reg [7:0] data_in;
reg en;
wire [7:0] data_out;
localparam CLK_PERIOD = 10;
localparam CLOCK_FREQUENCY = 100000000;
  
// You can use the larger BAUD_RATE value for quick testing, since the actual 9600 value would make the simulation waveform too long
// EDA Playground will not display the waveforms when using the 9600 value, you will just have to rely on the terminal outputs to check if you pass the tests
// Vivado can still show the waveform even at 9600 BAUD_RATE. Post-synthesis simulation using this value takes about 10 real-life seconds on my machine.
//localparam BAUD_RATE = 10000000; // use this for quick testing, also needed for EDA playground to show waveforms
localparam BAUD_RATE = 9600; // this is the actual baud rate, but simulating using this value would take time

uart_tx
#( .BAUD_RATE(BAUD_RATE))
input_driver( // uart_tx module that sends packets following the UART protocol
    .clk   (clk),
    .nrst  (nrst),
    .en    (en),
    .data_in   (data_in),
    .tx    (tx_from_tester), // this is the data that is being sent out by the uart_tx
    .ready (ready)
);

uart_rx
#( .BAUD_RATE(BAUD_RATE))
output_checker( // uart_rx module that checks what has been received
    .clk   (clk),
    .nrst  (nrst),
    .rx    (rx_from_loopback), // this is the data that is being received by the uart_rx from uart_loopback, comment this out if you just want to test uart_rx
    //.rx (tx_from_tester), // use this connection instead if you just want to test the uart_rx with the uart_tx tester (without the loopback module)
    .data_out  (data_out),
    .valid (valid)
);

uart_loopback  
#( .BAUD_RATE(BAUD_RATE)  )
uart_loopback( // loopback module that has uart_tx and uart_rx inside
    .clk   (clk),
    .nrst  (nrst),
    .rx(tx_from_tester), // the uart_tx sends 'tx', loopback module receives it through 'rx'
    .tx(rx_from_loopback) // then the loopback module sends the same data that was received to 'tx'
);

reg valid_del;
reg [7:0] data_to_send [0:7];
reg [2:0] test_index;
reg extended_check;

always@(posedge clk or negedge nrst) begin
if (!nrst) begin
    valid_del <= 1'b0;
    test_index <= 'd0;
    extended_check <= 1'b0;
end else begin
    valid_del <= valid; // save the previous value of valid
    if ({valid,valid_del} == 2'b01) begin // check for the 0->1 transition of valid
        test_index <= test_index + 1; 
        // start checking the data_out when valid had 0->1 transition
        if(data_out == data_to_send[test_index]) $display("Received byte: 0x%X (output) == 0x%X (reference). TEST PASS!", data_out, data_to_send[test_index]);
        else $display("Received byte: 0x%X (output) != 0x%X (reference). TEST FAIL!", data_out, data_to_send[test_index]);
        if(test_index == 7) extended_check <= 1'b1;
        if(extended_check) $display("valid became 1 even after the transaction is finished! TEST FAIL!");
    end
 end
end

always #(CLK_PERIOD/2.0) clk = ~clk; // infinite loop for the main clock

task send_byte; // 'function' to perform the byte send through the uart_tx module
    input [7:0] data;
    begin
        while(!ready) #(CLK_PERIOD);// wait for uart_tx module to be ready before sending another data 
        en = 1'b1; // go signal for the uart_tx module
        data_in = data; // the data that the uart_tx module will send.
        #(CLK_PERIOD);
        en = 1'b0; // turn off the go signal after 1 cycle
    end
endtask

initial begin
    //$dumpfile("dump.vcd"); $dumpvars; // uncomment this line if running in EDA Playground
    clk = 0; nrst = 0; en = 0; data_in = 0;

    data_to_send[0] = 8'h01; data_to_send[1] = 8'h23; data_to_send[2] = 8'h45; data_to_send[3] = 8'h67;
    data_to_send[4] = 8'hAD; data_to_send[5] = 8'hE1; data_to_send[6] = 8'hB0; data_to_send[7] = 8'h55;

    #(CLK_PERIOD * 11) nrst = 1'b1;
    #(CLK_PERIOD * 10) send_byte(data_to_send[0]); // we call the 'function' to send the byte through uart_tx
    #(CLK_PERIOD * 10) send_byte(data_to_send[1]);
    #(CLK_PERIOD * 10) send_byte(data_to_send[2]);
    #(CLK_PERIOD * 10) send_byte(data_to_send[3]);
    #(CLK_PERIOD * (15*CLOCK_FREQUENCY/BAUD_RATE)) // misalign the start of process again, just for sanity check
    // check if bytes can still be received in succession.
    send_byte(data_to_send[4]);
    send_byte(data_to_send[5]);
    send_byte(data_to_send[6]);
    send_byte(data_to_send[7]);

    while(!extended_check) #(CLK_PERIOD); // wait until all the sent packets have been received
    #(CLK_PERIOD * (20*CLOCK_FREQUENCY/BAUD_RATE))
    if(!rx_from_loopback) $display("rx_from_loopback remains at 0 even after the transaction is finished! TEST FAIL!");
    $finish; // wait for a couple more time to check if we are still receiving packets at the end of the test
end

endmodule
