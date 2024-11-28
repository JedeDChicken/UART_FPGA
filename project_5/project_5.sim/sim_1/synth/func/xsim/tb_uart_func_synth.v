// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec 12 11:18:50 2023
// Host        : JedeDChicken running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/danie/Desktop/project_5/project_5.sim/sim_1/synth/func/xsim/tb_uart_func_synth.v
// Design      : uart_loopback
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BAUD_RATE = "9600" *) 
(* NotValidForBitStream *)
module uart_loopback
   (clk,
    nrst,
    rx,
    tx,
    probe_data);
  input clk;
  input nrst;
  input rx;
  output tx;
  output [7:0]probe_data;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire [13:1]baud_ctr0;
  wire \baud_ctr[0]_i_2__0_n_0 ;
  wire \baud_ctr[0]_i_2_n_0 ;
  wire \baud_ctr[0]_i_3_n_0 ;
  wire \baud_ctr[0]_i_4_n_0 ;
  wire \baud_ctr[0]_i_5_n_0 ;
  wire \baud_ctr[0]_i_6_n_0 ;
  wire \baud_ctr[0]_i_7_n_0 ;
  wire \baud_ctr[12]_i_2_n_0 ;
  wire \baud_ctr[12]_i_3_n_0 ;
  wire \baud_ctr[13]_i_2_n_0 ;
  wire \baud_ctr[4]_i_2_n_0 ;
  wire \baud_ctr[4]_i_3_n_0 ;
  wire \baud_ctr[4]_i_4_n_0 ;
  wire \baud_ctr[4]_i_5_n_0 ;
  wire \baud_ctr[4]_i_6_n_0 ;
  wire \baud_ctr[4]_i_7_n_0 ;
  wire \baud_ctr[8]_i_2_n_0 ;
  wire \baud_ctr[8]_i_3_n_0 ;
  wire \baud_ctr[8]_i_4_n_0 ;
  wire \baud_ctr[8]_i_5_n_0 ;
  wire baud_ctr_en_i_2_n_0;
  wire baud_ctr_en_i_3_n_0;
  wire \baud_ctr_reg[0]_i_1_n_0 ;
  wire \baud_ctr_reg[0]_i_1_n_1 ;
  wire \baud_ctr_reg[0]_i_1_n_2 ;
  wire \baud_ctr_reg[0]_i_1_n_3 ;
  wire \baud_ctr_reg[0]_i_1_n_4 ;
  wire \baud_ctr_reg[0]_i_1_n_5 ;
  wire \baud_ctr_reg[0]_i_1_n_6 ;
  wire \baud_ctr_reg[0]_i_1_n_7 ;
  wire \baud_ctr_reg[12]_i_1_n_3 ;
  wire \baud_ctr_reg[12]_i_1_n_6 ;
  wire \baud_ctr_reg[12]_i_1_n_7 ;
  wire \baud_ctr_reg[4]_i_1_n_0 ;
  wire \baud_ctr_reg[4]_i_1_n_1 ;
  wire \baud_ctr_reg[4]_i_1_n_2 ;
  wire \baud_ctr_reg[4]_i_1_n_3 ;
  wire \baud_ctr_reg[4]_i_1_n_4 ;
  wire \baud_ctr_reg[4]_i_1_n_5 ;
  wire \baud_ctr_reg[4]_i_1_n_6 ;
  wire \baud_ctr_reg[4]_i_1_n_7 ;
  wire \baud_ctr_reg[8]_i_1_n_0 ;
  wire \baud_ctr_reg[8]_i_1_n_1 ;
  wire \baud_ctr_reg[8]_i_1_n_2 ;
  wire \baud_ctr_reg[8]_i_1_n_3 ;
  wire \baud_ctr_reg[8]_i_1_n_4 ;
  wire \baud_ctr_reg[8]_i_1_n_5 ;
  wire \baud_ctr_reg[8]_i_1_n_6 ;
  wire \baud_ctr_reg[8]_i_1_n_7 ;
  wire [2:0]bit_ctr;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \cyc[0]_i_1_n_0 ;
  wire \cyc[1]_i_1_n_0 ;
  wire \cyc[2]_i_1_n_0 ;
  wire [7:0]data_out;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire [2:0]idx;
  wire [2:0]idx0;
  wire \idx[2]_i_10_n_0 ;
  wire \idx[2]_i_4_n_0 ;
  wire \idx[2]_i_5_n_0 ;
  wire \idx[2]_i_6_n_0 ;
  wire \idx[2]_i_7_n_0 ;
  wire \idx[2]_i_8_n_0 ;
  wire \idx[2]_i_9_n_0 ;
  wire nrst;
  wire nrst_IBUF;
  wire output_valid;
  wire p_0_in;
  wire [7:0]probe_data;
  wire [7:0]probe_data_OBUF;
  wire rx;
  wire rx_IBUF;
  wire [7:0]sr;
  wire start_i_1_n_0;
  wire start_i_2_n_0;
  wire state_i_1_n_0;
  wire tx;
  wire tx_OBUF;
  wire [13:0]\uart_rx/baud_ctr ;
  wire \uart_rx/baud_ctr0_carry__0_n_0 ;
  wire \uart_rx/baud_ctr0_carry__0_n_1 ;
  wire \uart_rx/baud_ctr0_carry__0_n_2 ;
  wire \uart_rx/baud_ctr0_carry__0_n_3 ;
  wire \uart_rx/baud_ctr0_carry__1_n_0 ;
  wire \uart_rx/baud_ctr0_carry__1_n_1 ;
  wire \uart_rx/baud_ctr0_carry__1_n_2 ;
  wire \uart_rx/baud_ctr0_carry__1_n_3 ;
  wire \uart_rx/baud_ctr0_carry_n_0 ;
  wire \uart_rx/baud_ctr0_carry_n_1 ;
  wire \uart_rx/baud_ctr0_carry_n_2 ;
  wire \uart_rx/baud_ctr0_carry_n_3 ;
  wire \uart_rx/baud_ctr[0]_i_1_n_0 ;
  wire [13:13]\uart_rx/baud_ctr__0 ;
  wire \uart_rx/cyc ;
  wire \uart_rx/cyc_reg_n_0_[0] ;
  wire \uart_rx/cyc_reg_n_0_[1] ;
  wire \uart_rx/cyc_reg_n_0_[2] ;
  wire \uart_rx/idx ;
  wire \uart_rx/start_reg_n_0 ;
  wire \uart_rx/state_reg_n_0 ;
  wire \uart_tx/baud_ctr_en ;
  wire [13:4]\uart_tx/baud_ctr_reg ;
  wire \uart_tx/baud_ctr_reg_n_0_[0] ;
  wire \uart_tx/baud_ctr_reg_n_0_[1] ;
  wire \uart_tx/baud_ctr_reg_n_0_[2] ;
  wire \uart_tx/baud_ctr_reg_n_0_[3] ;
  wire \uart_tx/bit_ctr[0]_i_1_n_0 ;
  wire \uart_tx/bit_ctr[1]_i_1_n_0 ;
  wire \uart_tx/bit_ctr[2]_i_1_n_0 ;
  wire \uart_tx/sr ;
  wire \uart_tx/sr_reg_n_0_[0] ;
  wire \uart_tx/sr_reg_n_0_[1] ;
  wire \uart_tx/sr_reg_n_0_[2] ;
  wire \uart_tx/sr_reg_n_0_[3] ;
  wire \uart_tx/sr_reg_n_0_[4] ;
  wire \uart_tx/sr_reg_n_0_[5] ;
  wire \uart_tx/sr_reg_n_0_[6] ;
  wire \uart_tx/sr_reg_n_0_[7] ;
  wire [1:0]\uart_tx/state__0 ;
  wire valid_i_1_n_0;
  wire [3:1]\NLW_baud_ctr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_baud_ctr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_uart_rx/baud_ctr0_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_uart_rx/baud_ctr0_carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0B0BD3D0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\uart_tx/baud_ctr_en ),
        .I1(\uart_tx/state__0 [1]),
        .I2(\uart_tx/state__0 [0]),
        .I3(output_valid),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h38EC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\uart_tx/baud_ctr_en ),
        .I1(\uart_tx/state__0 [1]),
        .I2(\uart_tx/state__0 [0]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(nrst_IBUF),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC040404040404040)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\uart_tx/state__0 [0]),
        .I1(\uart_tx/state__0 [1]),
        .I2(\uart_tx/baud_ctr_en ),
        .I3(bit_ctr[0]),
        .I4(bit_ctr[2]),
        .I5(bit_ctr[1]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \baud_ctr[0]_i_2 
       (.I0(\uart_rx/baud_ctr [6]),
        .I1(\uart_rx/baud_ctr [9]),
        .I2(\uart_rx/baud_ctr [11]),
        .I3(\uart_rx/baud_ctr [13]),
        .I4(\uart_rx/baud_ctr [2]),
        .I5(\uart_rx/baud_ctr [1]),
        .O(\baud_ctr[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0155)) 
    \baud_ctr[0]_i_2__0 
       (.I0(\uart_tx/baud_ctr_reg [12]),
        .I1(\uart_tx/baud_ctr_reg [7]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [11]),
        .I4(\baud_ctr[0]_i_7_n_0 ),
        .O(\baud_ctr[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBBF00000000)) 
    \baud_ctr[0]_i_3 
       (.I0(\baud_ctr[0]_i_7_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [7]),
        .I4(\uart_tx/baud_ctr_reg [12]),
        .I5(\uart_tx/baud_ctr_reg_n_0_[3] ),
        .O(\baud_ctr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBBF00000000)) 
    \baud_ctr[0]_i_4 
       (.I0(\baud_ctr[0]_i_7_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [7]),
        .I4(\uart_tx/baud_ctr_reg [12]),
        .I5(\uart_tx/baud_ctr_reg_n_0_[2] ),
        .O(\baud_ctr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBBF00000000)) 
    \baud_ctr[0]_i_5 
       (.I0(\baud_ctr[0]_i_7_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [7]),
        .I4(\uart_tx/baud_ctr_reg [12]),
        .I5(\uart_tx/baud_ctr_reg_n_0_[1] ),
        .O(\baud_ctr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444445454555)) 
    \baud_ctr[0]_i_6 
       (.I0(\uart_tx/baud_ctr_reg_n_0_[0] ),
        .I1(\baud_ctr[0]_i_7_n_0 ),
        .I2(\uart_tx/baud_ctr_reg [11]),
        .I3(baud_ctr_en_i_3_n_0),
        .I4(\uart_tx/baud_ctr_reg [7]),
        .I5(\uart_tx/baud_ctr_reg [12]),
        .O(\baud_ctr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00010101FFFFFFFF)) 
    \baud_ctr[0]_i_7 
       (.I0(baud_ctr_en_i_3_n_0),
        .I1(\uart_tx/baud_ctr_reg [12]),
        .I2(\uart_tx/baud_ctr_reg [6]),
        .I3(\uart_tx/baud_ctr_reg [5]),
        .I4(\uart_tx/baud_ctr_reg [4]),
        .I5(\uart_tx/baud_ctr_reg [13]),
        .O(\baud_ctr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00370000003F0000)) 
    \baud_ctr[12]_i_2 
       (.I0(\uart_tx/baud_ctr_reg [7]),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [12]),
        .I4(\uart_tx/baud_ctr_reg [13]),
        .I5(baud_ctr_en_i_2_n_0),
        .O(\baud_ctr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_ctr[12]_i_3 
       (.I0(\uart_tx/baud_ctr_reg [12]),
        .I1(\uart_tx/baud_ctr_reg [13]),
        .O(\baud_ctr[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \baud_ctr[13]_i_1 
       (.I0(\data_out[7]_i_3_n_0 ),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\idx[2]_i_5_n_0 ),
        .I3(nrst_IBUF),
        .O(\uart_rx/baud_ctr__0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \baud_ctr[13]_i_2 
       (.I0(rx_IBUF),
        .I1(\uart_rx/start_reg_n_0 ),
        .I2(\uart_rx/state_reg_n_0 ),
        .O(\baud_ctr[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF010)) 
    \baud_ctr[4]_i_2 
       (.I0(\uart_tx/baud_ctr_reg [11]),
        .I1(\uart_tx/baud_ctr_reg [12]),
        .I2(\uart_tx/baud_ctr_reg [7]),
        .I3(\baud_ctr[0]_i_7_n_0 ),
        .O(\baud_ctr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555777F00000000)) 
    \baud_ctr[4]_i_3 
       (.I0(\uart_tx/baud_ctr_reg [13]),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [7]),
        .I4(\uart_tx/baud_ctr_reg [12]),
        .I5(\uart_tx/baud_ctr_reg [6]),
        .O(\baud_ctr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF000200)) 
    \baud_ctr[4]_i_4 
       (.I0(\baud_ctr[4]_i_6_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [6]),
        .I2(\uart_tx/baud_ctr_reg [4]),
        .I3(\uart_tx/baud_ctr_reg [5]),
        .I4(\baud_ctr[4]_i_7_n_0 ),
        .O(\baud_ctr[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000200)) 
    \baud_ctr[4]_i_5 
       (.I0(\baud_ctr[4]_i_6_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [6]),
        .I2(\uart_tx/baud_ctr_reg [5]),
        .I3(\uart_tx/baud_ctr_reg [4]),
        .I4(\baud_ctr[4]_i_7_n_0 ),
        .O(\baud_ctr[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \baud_ctr[4]_i_6 
       (.I0(\uart_tx/baud_ctr_reg [9]),
        .I1(\uart_tx/baud_ctr_reg [10]),
        .I2(\uart_tx/baud_ctr_reg [8]),
        .I3(\uart_tx/baud_ctr_reg [12]),
        .O(\baud_ctr[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0155FFFF)) 
    \baud_ctr[4]_i_7 
       (.I0(\uart_tx/baud_ctr_reg [12]),
        .I1(\uart_tx/baud_ctr_reg [7]),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [11]),
        .I4(\uart_tx/baud_ctr_reg [13]),
        .O(\baud_ctr[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF020)) 
    \baud_ctr[8]_i_2 
       (.I0(\baud_ctr[4]_i_6_n_0 ),
        .I1(\uart_tx/baud_ctr_reg [7]),
        .I2(\uart_tx/baud_ctr_reg [11]),
        .I3(\baud_ctr[0]_i_7_n_0 ),
        .O(\baud_ctr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \baud_ctr[8]_i_3 
       (.I0(\uart_tx/baud_ctr_reg [13]),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(\uart_tx/baud_ctr_reg [12]),
        .I3(\uart_tx/baud_ctr_reg [10]),
        .O(\baud_ctr[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \baud_ctr[8]_i_4 
       (.I0(\uart_tx/baud_ctr_reg [13]),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(\uart_tx/baud_ctr_reg [12]),
        .I3(\uart_tx/baud_ctr_reg [9]),
        .O(\baud_ctr[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \baud_ctr[8]_i_5 
       (.I0(\uart_tx/baud_ctr_reg [13]),
        .I1(\uart_tx/baud_ctr_reg [11]),
        .I2(\uart_tx/baud_ctr_reg [12]),
        .I3(\uart_tx/baud_ctr_reg [8]),
        .O(\baud_ctr[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF80000000000)) 
    baud_ctr_en_i_1
       (.I0(\uart_tx/baud_ctr_reg [7]),
        .I1(baud_ctr_en_i_2_n_0),
        .I2(baud_ctr_en_i_3_n_0),
        .I3(\uart_tx/baud_ctr_reg [11]),
        .I4(\uart_tx/baud_ctr_reg [12]),
        .I5(\uart_tx/baud_ctr_reg [13]),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hEA)) 
    baud_ctr_en_i_2
       (.I0(\uart_tx/baud_ctr_reg [6]),
        .I1(\uart_tx/baud_ctr_reg [5]),
        .I2(\uart_tx/baud_ctr_reg [4]),
        .O(baud_ctr_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    baud_ctr_en_i_3
       (.I0(\uart_tx/baud_ctr_reg [8]),
        .I1(\uart_tx/baud_ctr_reg [10]),
        .I2(\uart_tx/baud_ctr_reg [9]),
        .O(baud_ctr_en_i_3_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \baud_ctr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\baud_ctr_reg[0]_i_1_n_0 ,\baud_ctr_reg[0]_i_1_n_1 ,\baud_ctr_reg[0]_i_1_n_2 ,\baud_ctr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\baud_ctr[0]_i_2__0_n_0 }),
        .O({\baud_ctr_reg[0]_i_1_n_4 ,\baud_ctr_reg[0]_i_1_n_5 ,\baud_ctr_reg[0]_i_1_n_6 ,\baud_ctr_reg[0]_i_1_n_7 }),
        .S({\baud_ctr[0]_i_3_n_0 ,\baud_ctr[0]_i_4_n_0 ,\baud_ctr[0]_i_5_n_0 ,\baud_ctr[0]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \baud_ctr_reg[12]_i_1 
       (.CI(\baud_ctr_reg[8]_i_1_n_0 ),
        .CO({\NLW_baud_ctr_reg[12]_i_1_CO_UNCONNECTED [3:1],\baud_ctr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_baud_ctr_reg[12]_i_1_O_UNCONNECTED [3:2],\baud_ctr_reg[12]_i_1_n_6 ,\baud_ctr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\baud_ctr[12]_i_2_n_0 ,\baud_ctr[12]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \baud_ctr_reg[4]_i_1 
       (.CI(\baud_ctr_reg[0]_i_1_n_0 ),
        .CO({\baud_ctr_reg[4]_i_1_n_0 ,\baud_ctr_reg[4]_i_1_n_1 ,\baud_ctr_reg[4]_i_1_n_2 ,\baud_ctr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_ctr_reg[4]_i_1_n_4 ,\baud_ctr_reg[4]_i_1_n_5 ,\baud_ctr_reg[4]_i_1_n_6 ,\baud_ctr_reg[4]_i_1_n_7 }),
        .S({\baud_ctr[4]_i_2_n_0 ,\baud_ctr[4]_i_3_n_0 ,\baud_ctr[4]_i_4_n_0 ,\baud_ctr[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \baud_ctr_reg[8]_i_1 
       (.CI(\baud_ctr_reg[4]_i_1_n_0 ),
        .CO({\baud_ctr_reg[8]_i_1_n_0 ,\baud_ctr_reg[8]_i_1_n_1 ,\baud_ctr_reg[8]_i_1_n_2 ,\baud_ctr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_ctr_reg[8]_i_1_n_4 ,\baud_ctr_reg[8]_i_1_n_5 ,\baud_ctr_reg[8]_i_1_n_6 ,\baud_ctr_reg[8]_i_1_n_7 }),
        .S({\baud_ctr[8]_i_2_n_0 ,\baud_ctr[8]_i_3_n_0 ,\baud_ctr[8]_i_4_n_0 ,\baud_ctr[8]_i_5_n_0 }));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cyc[0]_i_1 
       (.I0(\uart_rx/cyc_reg_n_0_[0] ),
        .O(\cyc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cyc[1]_i_1 
       (.I0(\uart_rx/cyc_reg_n_0_[0] ),
        .I1(\uart_rx/cyc_reg_n_0_[1] ),
        .O(\cyc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cyc[2]_i_1 
       (.I0(\uart_rx/cyc_reg_n_0_[0] ),
        .I1(\uart_rx/cyc_reg_n_0_[1] ),
        .I2(\uart_rx/cyc_reg_n_0_[2] ),
        .O(\cyc[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \data_out[0]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[0]));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \data_out[1]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[1]));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \data_out[2]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[2]));
  LUT6 #(
    .INIT(64'h4000400040000000)) 
    \data_out[3]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[3]));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \data_out[4]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[4]));
  LUT6 #(
    .INIT(64'h4000400040000000)) 
    \data_out[5]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[5]));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    \data_out[6]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[6]));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \data_out[7]_i_1 
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \data_out[7]_i_2 
       (.I0(\data_out[7]_i_4_n_0 ),
        .I1(\uart_rx/baud_ctr [10]),
        .I2(\uart_rx/baud_ctr [12]),
        .I3(\uart_rx/baud_ctr [7]),
        .I4(\uart_rx/baud_ctr [8]),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \data_out[7]_i_3 
       (.I0(\data_out[7]_i_5_n_0 ),
        .I1(\uart_rx/baud_ctr [4]),
        .I2(\uart_rx/baud_ctr [5]),
        .I3(\uart_rx/baud_ctr [3]),
        .I4(\uart_rx/cyc_reg_n_0_[0] ),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    \data_out[7]_i_4 
       (.I0(\uart_rx/baud_ctr [3]),
        .I1(\uart_rx/baud_ctr [4]),
        .I2(\uart_rx/baud_ctr [5]),
        .I3(\uart_rx/cyc_reg_n_0_[2] ),
        .I4(\uart_rx/cyc_reg_n_0_[0] ),
        .I5(\uart_rx/cyc_reg_n_0_[1] ),
        .O(\data_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \data_out[7]_i_5 
       (.I0(\uart_rx/baud_ctr [8]),
        .I1(\uart_rx/baud_ctr [7]),
        .I2(\uart_rx/baud_ctr [10]),
        .I3(\uart_rx/baud_ctr [12]),
        .I4(\uart_rx/cyc_reg_n_0_[2] ),
        .I5(\uart_rx/cyc_reg_n_0_[1] ),
        .O(\data_out[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \idx[0]_i_1 
       (.I0(idx[0]),
        .O(idx0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \idx[1]_i_1 
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(idx0[1]));
  LUT3 #(
    .INIT(8'h4F)) 
    \idx[2]_i_1 
       (.I0(\idx[2]_i_4_n_0 ),
        .I1(\idx[2]_i_5_n_0 ),
        .I2(nrst_IBUF),
        .O(\uart_rx/cyc ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[2]_i_10 
       (.I0(\uart_rx/baud_ctr [4]),
        .I1(\uart_rx/baud_ctr [5]),
        .O(\idx[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00303030303030A0)) 
    \idx[2]_i_2 
       (.I0(\idx[2]_i_6_n_0 ),
        .I1(\idx[2]_i_7_n_0 ),
        .I2(\idx[2]_i_5_n_0 ),
        .I3(\uart_rx/cyc_reg_n_0_[2] ),
        .I4(\uart_rx/cyc_reg_n_0_[1] ),
        .I5(\uart_rx/cyc_reg_n_0_[0] ),
        .O(\uart_rx/idx ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \idx[2]_i_3 
       (.I0(idx[1]),
        .I1(idx[0]),
        .I2(idx[2]),
        .O(idx0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \idx[2]_i_4 
       (.I0(\uart_rx/cyc_reg_n_0_[0] ),
        .I1(\uart_rx/cyc_reg_n_0_[1] ),
        .I2(\uart_rx/cyc_reg_n_0_[2] ),
        .I3(\uart_rx/baud_ctr [3]),
        .I4(\uart_rx/baud_ctr [10]),
        .I5(\idx[2]_i_8_n_0 ),
        .O(\idx[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \idx[2]_i_5 
       (.I0(\uart_rx/state_reg_n_0 ),
        .I1(\baud_ctr[0]_i_2_n_0 ),
        .I2(\uart_rx/baud_ctr [0]),
        .O(\idx[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \idx[2]_i_6 
       (.I0(\idx[2]_i_9_n_0 ),
        .I1(\uart_rx/baud_ctr [3]),
        .I2(\uart_rx/baud_ctr [4]),
        .I3(\uart_rx/baud_ctr [5]),
        .O(\idx[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \idx[2]_i_7 
       (.I0(\uart_rx/baud_ctr [8]),
        .I1(\idx[2]_i_10_n_0 ),
        .I2(\uart_rx/baud_ctr [12]),
        .I3(\uart_rx/baud_ctr [7]),
        .I4(\uart_rx/baud_ctr [10]),
        .I5(\uart_rx/baud_ctr [3]),
        .O(\idx[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \idx[2]_i_8 
       (.I0(\uart_rx/baud_ctr [7]),
        .I1(\uart_rx/baud_ctr [12]),
        .I2(\uart_rx/baud_ctr [4]),
        .I3(\uart_rx/baud_ctr [5]),
        .I4(\uart_rx/baud_ctr [8]),
        .O(\idx[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \idx[2]_i_9 
       (.I0(\uart_rx/baud_ctr [12]),
        .I1(\uart_rx/baud_ctr [10]),
        .I2(\uart_rx/baud_ctr [7]),
        .I3(\uart_rx/baud_ctr [8]),
        .O(\idx[2]_i_9_n_0 ));
  IBUF nrst_IBUF_inst
       (.I(nrst),
        .O(nrst_IBUF));
  OBUF \probe_data_OBUF[0]_inst 
       (.I(probe_data_OBUF[0]),
        .O(probe_data[0]));
  OBUF \probe_data_OBUF[1]_inst 
       (.I(probe_data_OBUF[1]),
        .O(probe_data[1]));
  OBUF \probe_data_OBUF[2]_inst 
       (.I(probe_data_OBUF[2]),
        .O(probe_data[2]));
  OBUF \probe_data_OBUF[3]_inst 
       (.I(probe_data_OBUF[3]),
        .O(probe_data[3]));
  OBUF \probe_data_OBUF[4]_inst 
       (.I(probe_data_OBUF[4]),
        .O(probe_data[4]));
  OBUF \probe_data_OBUF[5]_inst 
       (.I(probe_data_OBUF[5]),
        .O(probe_data[5]));
  OBUF \probe_data_OBUF[6]_inst 
       (.I(probe_data_OBUF[6]),
        .O(probe_data[6]));
  OBUF \probe_data_OBUF[7]_inst 
       (.I(probe_data_OBUF[7]),
        .O(probe_data[7]));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[0]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[1] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[0]),
        .O(sr[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[1]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[2] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[1]),
        .O(sr[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[2]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[3] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[2]),
        .O(sr[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[3]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[4] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[3]),
        .O(sr[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[4]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[5] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[4]),
        .O(sr[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[5]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[6] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[5]),
        .O(sr[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[6]_i_1 
       (.I0(\uart_tx/sr_reg_n_0_[7] ),
        .I1(\uart_tx/state__0 [1]),
        .I2(probe_data_OBUF[6]),
        .O(sr[6]));
  LUT4 #(
    .INIT(16'h8830)) 
    \sr[7]_i_1 
       (.I0(\uart_tx/baud_ctr_en ),
        .I1(\uart_tx/state__0 [0]),
        .I2(output_valid),
        .I3(\uart_tx/state__0 [1]),
        .O(\uart_tx/sr ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[7]_i_2 
       (.I0(probe_data_OBUF[7]),
        .I1(\uart_tx/state__0 [1]),
        .O(sr[7]));
  LUT6 #(
    .INIT(64'hBB3B880800000000)) 
    start_i_1
       (.I0(\uart_rx/start_reg_n_0 ),
        .I1(\uart_rx/state_reg_n_0 ),
        .I2(start_i_2_n_0),
        .I3(\idx[2]_i_4_n_0 ),
        .I4(rx_IBUF),
        .I5(nrst_IBUF),
        .O(start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    start_i_2
       (.I0(\baud_ctr[0]_i_2_n_0 ),
        .I1(\uart_rx/baud_ctr [0]),
        .O(start_i_2_n_0));
  LUT6 #(
    .INIT(64'hDCDC10DC00000000)) 
    state_i_1
       (.I0(rx_IBUF),
        .I1(\uart_rx/state_reg_n_0 ),
        .I2(\uart_rx/start_reg_n_0 ),
        .I3(\idx[2]_i_5_n_0 ),
        .I4(\idx[2]_i_4_n_0 ),
        .I5(nrst_IBUF),
        .O(state_i_1_n_0));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  LUT3 #(
    .INIT(8'hD5)) 
    tx_OBUF_inst_i_1
       (.I0(\uart_tx/state__0 [1]),
        .I1(\uart_tx/sr_reg_n_0_[0] ),
        .I2(\uart_tx/state__0 [0]),
        .O(tx_OBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uart_rx/baud_ctr0_carry 
       (.CI(1'b0),
        .CO({\uart_rx/baud_ctr0_carry_n_0 ,\uart_rx/baud_ctr0_carry_n_1 ,\uart_rx/baud_ctr0_carry_n_2 ,\uart_rx/baud_ctr0_carry_n_3 }),
        .CYINIT(\uart_rx/baud_ctr [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(baud_ctr0[4:1]),
        .S(\uart_rx/baud_ctr [4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uart_rx/baud_ctr0_carry__0 
       (.CI(\uart_rx/baud_ctr0_carry_n_0 ),
        .CO({\uart_rx/baud_ctr0_carry__0_n_0 ,\uart_rx/baud_ctr0_carry__0_n_1 ,\uart_rx/baud_ctr0_carry__0_n_2 ,\uart_rx/baud_ctr0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(baud_ctr0[8:5]),
        .S(\uart_rx/baud_ctr [8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uart_rx/baud_ctr0_carry__1 
       (.CI(\uart_rx/baud_ctr0_carry__0_n_0 ),
        .CO({\uart_rx/baud_ctr0_carry__1_n_0 ,\uart_rx/baud_ctr0_carry__1_n_1 ,\uart_rx/baud_ctr0_carry__1_n_2 ,\uart_rx/baud_ctr0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(baud_ctr0[12:9]),
        .S(\uart_rx/baud_ctr [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uart_rx/baud_ctr0_carry__2 
       (.CI(\uart_rx/baud_ctr0_carry__1_n_0 ),
        .CO(\NLW_uart_rx/baud_ctr0_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_uart_rx/baud_ctr0_carry__2_O_UNCONNECTED [3:1],baud_ctr0[13]}),
        .S({1'b0,1'b0,1'b0,\uart_rx/baud_ctr [13]}));
  LUT6 #(
    .INIT(64'h6666626600000000)) 
    \uart_rx/baud_ctr[0]_i_1 
       (.I0(\uart_rx/baud_ctr [0]),
        .I1(\baud_ctr[13]_i_2_n_0 ),
        .I2(\idx[2]_i_4_n_0 ),
        .I3(\uart_rx/state_reg_n_0 ),
        .I4(\baud_ctr[0]_i_2_n_0 ),
        .I5(nrst_IBUF),
        .O(\uart_rx/baud_ctr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\uart_rx/baud_ctr[0]_i_1_n_0 ),
        .Q(\uart_rx/baud_ctr [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[10]),
        .Q(\uart_rx/baud_ctr [10]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[11]),
        .Q(\uart_rx/baud_ctr [11]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[12]),
        .Q(\uart_rx/baud_ctr [12]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[13]),
        .Q(\uart_rx/baud_ctr [13]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[1]),
        .Q(\uart_rx/baud_ctr [1]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[2]),
        .Q(\uart_rx/baud_ctr [2]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[3]),
        .Q(\uart_rx/baud_ctr [3]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[4]),
        .Q(\uart_rx/baud_ctr [4]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[5]),
        .Q(\uart_rx/baud_ctr [5]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[6]),
        .Q(\uart_rx/baud_ctr [6]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[7]),
        .Q(\uart_rx/baud_ctr [7]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[8]),
        .Q(\uart_rx/baud_ctr [8]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/baud_ctr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\baud_ctr[13]_i_2_n_0 ),
        .D(baud_ctr0[9]),
        .Q(\uart_rx/baud_ctr [9]),
        .R(\uart_rx/baud_ctr__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/cyc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(\cyc[0]_i_1_n_0 ),
        .Q(\uart_rx/cyc_reg_n_0_[0] ),
        .R(\uart_rx/cyc ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/cyc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(\cyc[1]_i_1_n_0 ),
        .Q(\uart_rx/cyc_reg_n_0_[1] ),
        .R(\uart_rx/cyc ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/cyc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(\cyc[2]_i_1_n_0 ),
        .Q(\uart_rx/cyc_reg_n_0_[2] ),
        .R(\uart_rx/cyc ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[0]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[0]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[1]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[1]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[2]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[2]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[3]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[3]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[4]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[4]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[5]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[5]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[6]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[6]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_out[7]),
        .D(rx_IBUF),
        .Q(probe_data_OBUF[7]),
        .R(\FSM_sequential_state[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \uart_rx/idx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(idx0[0]),
        .Q(idx[0]),
        .S(\uart_rx/cyc ));
  FDSE #(
    .INIT(1'b1)) 
    \uart_rx/idx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(idx0[1]),
        .Q(idx[1]),
        .S(\uart_rx/cyc ));
  FDSE #(
    .INIT(1'b1)) 
    \uart_rx/idx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_rx/idx ),
        .D(idx0[2]),
        .Q(idx[2]),
        .S(\uart_rx/cyc ));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/start_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(\uart_rx/start_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/state_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(\uart_rx/state_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rx/valid_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(output_valid),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S_SYNC:01,S_START:10,S_IDLE:00,S_DATA:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\uart_tx/state__0 [0]));
  (* FSM_ENCODED_STATES = "S_SYNC:01,S_START:10,S_IDLE:00,S_DATA:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\uart_tx/state__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_en_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(p_0_in),
        .Q(\uart_tx/baud_ctr_en ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[0]_i_1_n_7 ),
        .Q(\uart_tx/baud_ctr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[8]_i_1_n_5 ),
        .Q(\uart_tx/baud_ctr_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[8]_i_1_n_4 ),
        .Q(\uart_tx/baud_ctr_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[12]_i_1_n_7 ),
        .Q(\uart_tx/baud_ctr_reg [12]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[12]_i_1_n_6 ),
        .Q(\uart_tx/baud_ctr_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[0]_i_1_n_6 ),
        .Q(\uart_tx/baud_ctr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[0]_i_1_n_5 ),
        .Q(\uart_tx/baud_ctr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[0]_i_1_n_4 ),
        .Q(\uart_tx/baud_ctr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[4]_i_1_n_7 ),
        .Q(\uart_tx/baud_ctr_reg [4]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[4]_i_1_n_6 ),
        .Q(\uart_tx/baud_ctr_reg [5]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[4]_i_1_n_5 ),
        .Q(\uart_tx/baud_ctr_reg [6]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[4]_i_1_n_4 ),
        .Q(\uart_tx/baud_ctr_reg [7]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[8]_i_1_n_7 ),
        .Q(\uart_tx/baud_ctr_reg [8]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/baud_ctr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\baud_ctr_reg[8]_i_1_n_6 ),
        .Q(\uart_tx/baud_ctr_reg [9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \uart_tx/bit_ctr[0]_i_1 
       (.I0(\uart_tx/baud_ctr_en ),
        .I1(\uart_tx/state__0 [0]),
        .I2(\uart_tx/state__0 [1]),
        .I3(bit_ctr[0]),
        .O(\uart_tx/bit_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \uart_tx/bit_ctr[1]_i_1 
       (.I0(bit_ctr[0]),
        .I1(\uart_tx/state__0 [1]),
        .I2(\uart_tx/state__0 [0]),
        .I3(\uart_tx/baud_ctr_en ),
        .I4(bit_ctr[1]),
        .O(\uart_tx/bit_ctr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \uart_tx/bit_ctr[2]_i_1 
       (.I0(bit_ctr[0]),
        .I1(bit_ctr[1]),
        .I2(\uart_tx/state__0 [1]),
        .I3(\uart_tx/state__0 [0]),
        .I4(\uart_tx/baud_ctr_en ),
        .I5(bit_ctr[2]),
        .O(\uart_tx/bit_ctr[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/bit_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\uart_tx/bit_ctr[0]_i_1_n_0 ),
        .Q(bit_ctr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/bit_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\uart_tx/bit_ctr[1]_i_1_n_0 ),
        .Q(bit_ctr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/bit_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\uart_tx/bit_ctr[2]_i_1_n_0 ),
        .Q(bit_ctr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[0]),
        .Q(\uart_tx/sr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[1]),
        .Q(\uart_tx/sr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[2]),
        .Q(\uart_tx/sr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[3]),
        .Q(\uart_tx/sr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[4]),
        .Q(\uart_tx/sr_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[5]),
        .Q(\uart_tx/sr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[6]),
        .Q(\uart_tx/sr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_tx/sr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\uart_tx/sr ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(sr[7]),
        .Q(\uart_tx/sr_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'hAA200000)) 
    valid_i_1
       (.I0(\uart_rx/state_reg_n_0 ),
        .I1(\idx[2]_i_4_n_0 ),
        .I2(\idx[2]_i_5_n_0 ),
        .I3(output_valid),
        .I4(nrst_IBUF),
        .O(valid_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
