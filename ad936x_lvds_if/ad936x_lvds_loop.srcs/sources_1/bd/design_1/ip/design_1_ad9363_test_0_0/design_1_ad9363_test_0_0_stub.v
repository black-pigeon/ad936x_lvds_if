// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May  8 16:03:26 2021
// Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_test_0_0/design_1_ad9363_test_0_0_stub.v
// Design      : design_1_ad9363_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ad9363_test,Vivado 2019.2" *)
module design_1_ad9363_test_0_0(clk, rst, mode_1r1t, rx_status, adc_valid, 
  adc_data_i0, adc_data_q0, adc_data_i1, adc_data_q1, phase_inc, dds_en, dac_valid, dac_data_i0, 
  dac_data_q0, dac_data_i1, dac_data_q1)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,mode_1r1t,rx_status,adc_valid,adc_data_i0[11:0],adc_data_q0[11:0],adc_data_i1[11:0],adc_data_q1[11:0],phase_inc[31:0],dds_en,dac_valid,dac_data_i0[11:0],dac_data_q0[11:0],dac_data_i1[11:0],dac_data_q1[11:0]" */;
  input clk;
  input rst;
  input mode_1r1t;
  input rx_status;
  input adc_valid;
  input [11:0]adc_data_i0;
  input [11:0]adc_data_q0;
  input [11:0]adc_data_i1;
  input [11:0]adc_data_q1;
  input [31:0]phase_inc;
  input dds_en;
  output dac_valid;
  output [11:0]dac_data_i0;
  output [11:0]dac_data_q0;
  output [11:0]dac_data_i1;
  output [11:0]dac_data_q1;
endmodule
