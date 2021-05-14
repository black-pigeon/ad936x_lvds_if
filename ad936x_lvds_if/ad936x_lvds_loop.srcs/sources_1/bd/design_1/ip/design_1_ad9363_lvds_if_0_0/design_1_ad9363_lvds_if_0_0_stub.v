// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May  8 14:48:53 2021
// Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_lvds_if_0_0/design_1_ad9363_lvds_if_0_0_stub.v
// Design      : design_1_ad9363_lvds_if_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ad9363_lvds_if,Vivado 2019.2" *)
module design_1_ad9363_lvds_if_0_0(ref_clk, rst, rx_clk_in_p, rx_clk_in_n, 
  rx_frame_in_p, rx_frame_in_n, rx_data_in_p, rx_data_in_n, tx_clk_out_p, tx_clk_out_n, 
  tx_frame_out_p, tx_frame_out_n, tx_data_out_p, tx_data_out_n, adc_valid, adc_data_i0, 
  adc_data_q0, adc_data_i1, adc_data_q1, rx_status, dac_valid, dac_data_i0, dac_data_q0, 
  dac_data_i1, dac_data_q1, mode_1r1t, data_clk, fb_clk, delay_value, delay_load_en, data_clk_ce)
/* synthesis syn_black_box black_box_pad_pin="ref_clk,rst,rx_clk_in_p,rx_clk_in_n,rx_frame_in_p,rx_frame_in_n,rx_data_in_p[5:0],rx_data_in_n[5:0],tx_clk_out_p,tx_clk_out_n,tx_frame_out_p,tx_frame_out_n,tx_data_out_p[5:0],tx_data_out_n[5:0],adc_valid,adc_data_i0[11:0],adc_data_q0[11:0],adc_data_i1[11:0],adc_data_q1[11:0],rx_status,dac_valid,dac_data_i0[11:0],dac_data_q0[11:0],dac_data_i1[11:0],dac_data_q1[11:0],mode_1r1t,data_clk,fb_clk,delay_value[4:0],delay_load_en,data_clk_ce" */;
  input ref_clk;
  input rst;
  input rx_clk_in_p;
  input rx_clk_in_n;
  input rx_frame_in_p;
  input rx_frame_in_n;
  input [5:0]rx_data_in_p;
  input [5:0]rx_data_in_n;
  output tx_clk_out_p;
  output tx_clk_out_n;
  output tx_frame_out_p;
  output tx_frame_out_n;
  output [5:0]tx_data_out_p;
  output [5:0]tx_data_out_n;
  output adc_valid;
  output [11:0]adc_data_i0;
  output [11:0]adc_data_q0;
  output [11:0]adc_data_i1;
  output [11:0]adc_data_q1;
  output rx_status;
  input dac_valid;
  input [11:0]dac_data_i0;
  input [11:0]dac_data_q0;
  input [11:0]dac_data_i1;
  input [11:0]dac_data_q1;
  input mode_1r1t;
  output data_clk;
  input fb_clk;
  input [4:0]delay_value;
  input delay_load_en;
  input data_clk_ce;
endmodule
