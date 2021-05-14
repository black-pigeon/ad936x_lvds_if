// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May  8 14:48:53 2021
// Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_lvds_if_0_0/design_1_ad9363_lvds_if_0_0_sim_netlist.v
// Design      : design_1_ad9363_lvds_if_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ad9363_lvds_if_0_0,ad9363_lvds_if,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ad9363_lvds_if,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_ad9363_lvds_if_0_0
   (ref_clk,
    rst,
    rx_clk_in_p,
    rx_clk_in_n,
    rx_frame_in_p,
    rx_frame_in_n,
    rx_data_in_p,
    rx_data_in_n,
    tx_clk_out_p,
    tx_clk_out_n,
    tx_frame_out_p,
    tx_frame_out_n,
    tx_data_out_p,
    tx_data_out_n,
    adc_valid,
    adc_data_i0,
    adc_data_q0,
    adc_data_i1,
    adc_data_q1,
    rx_status,
    dac_valid,
    dac_data_i0,
    dac_data_q0,
    dac_data_i1,
    dac_data_q1,
    mode_1r1t,
    data_clk,
    fb_clk,
    delay_value,
    delay_load_en,
    data_clk_ce);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 data_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ad9363_lvds_if_0_0_data_clk, INSERT_VIP 0" *) output data_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fb_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fb_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ad9363_lvds_if_0_0_data_clk, INSERT_VIP 0" *) input fb_clk;
  input [4:0]delay_value;
  input delay_load_en;
  input data_clk_ce;

  wire [11:0]adc_data_i0;
  wire [11:0]adc_data_i1;
  wire [11:0]adc_data_q0;
  wire [11:0]adc_data_q1;
  wire adc_valid;
  wire [11:0]dac_data_i0;
  wire [11:0]dac_data_i1;
  wire [11:0]dac_data_q0;
  wire [11:0]dac_data_q1;
  wire dac_valid;
  wire data_clk;
  wire data_clk_ce;
  wire delay_load_en;
  wire [4:0]delay_value;
  wire fb_clk;
  wire mode_1r1t;
  wire ref_clk;
  wire rst;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire rx_clk_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire rx_clk_in_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [5:0]rx_data_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [5:0]rx_data_in_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire rx_frame_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire rx_frame_in_p;
  wire rx_status;
  (* SLEW = "SLOW" *) wire tx_clk_out_n;
  (* SLEW = "SLOW" *) wire tx_clk_out_p;
  (* SLEW = "SLOW" *) wire [5:0]tx_data_out_n;
  (* SLEW = "SLOW" *) wire [5:0]tx_data_out_p;
  (* SLEW = "SLOW" *) wire tx_frame_out_n;
  (* SLEW = "SLOW" *) wire tx_frame_out_p;

  design_1_ad9363_lvds_if_0_0_ad9363_lvds_if inst
       (.adc_data_i0(adc_data_i0),
        .adc_data_i1(adc_data_i1),
        .adc_data_q0(adc_data_q0),
        .adc_data_q1(adc_data_q1),
        .adc_valid(adc_valid),
        .dac_data_i0(dac_data_i0),
        .dac_data_i1(dac_data_i1),
        .dac_data_q0(dac_data_q0),
        .dac_data_q1(dac_data_q1),
        .dac_valid(dac_valid),
        .data_clk(data_clk),
        .data_clk_ce(data_clk_ce),
        .delay_load_en(delay_load_en),
        .delay_value(delay_value),
        .fb_clk(fb_clk),
        .mode_1r1t(mode_1r1t),
        .ref_clk(ref_clk),
        .rst(rst),
        .rx_clk_in_n(rx_clk_in_n),
        .rx_clk_in_p(rx_clk_in_p),
        .rx_data_in_n(rx_data_in_n),
        .rx_data_in_p(rx_data_in_p),
        .rx_frame_in_n(rx_frame_in_n),
        .rx_frame_in_p(rx_frame_in_p),
        .rx_status(rx_status),
        .tx_clk_out_n(tx_clk_out_n),
        .tx_clk_out_p(tx_clk_out_p),
        .tx_data_out_n(tx_data_out_n),
        .tx_data_out_p(tx_data_out_p),
        .tx_frame_out_n(tx_frame_out_n),
        .tx_frame_out_p(tx_frame_out_p));
endmodule

(* ORIG_REF_NAME = "ad9363_lvds_if" *) 
module design_1_ad9363_lvds_if_0_0_ad9363_lvds_if
   (data_clk,
    tx_clk_out_p,
    tx_clk_out_n,
    tx_frame_out_p,
    tx_frame_out_n,
    tx_data_out_p,
    tx_data_out_n,
    adc_data_i0,
    adc_data_q0,
    adc_data_i1,
    adc_data_q1,
    rx_status,
    adc_valid,
    mode_1r1t,
    ref_clk,
    rst,
    rx_clk_in_p,
    rx_clk_in_n,
    rx_frame_in_p,
    rx_frame_in_n,
    data_clk_ce,
    delay_load_en,
    delay_value,
    rx_data_in_p,
    rx_data_in_n,
    fb_clk,
    dac_valid,
    dac_data_i0,
    dac_data_i1,
    dac_data_q0,
    dac_data_q1);
  output data_clk;
  output tx_clk_out_p;
  output tx_clk_out_n;
  output tx_frame_out_p;
  output tx_frame_out_n;
  output [5:0]tx_data_out_p;
  output [5:0]tx_data_out_n;
  output [11:0]adc_data_i0;
  output [11:0]adc_data_q0;
  output [11:0]adc_data_i1;
  output [11:0]adc_data_q1;
  output rx_status;
  output adc_valid;
  input mode_1r1t;
  input ref_clk;
  input rst;
  input rx_clk_in_p;
  input rx_clk_in_n;
  input rx_frame_in_p;
  input rx_frame_in_n;
  input data_clk_ce;
  input delay_load_en;
  input [4:0]delay_value;
  input [5:0]rx_data_in_p;
  input [5:0]rx_data_in_n;
  input fb_clk;
  input dac_valid;
  input [11:0]dac_data_i0;
  input [11:0]dac_data_i1;
  input [11:0]dac_data_q0;
  input [11:0]dac_data_q1;

  wire [11:0]adc_data_i0;
  wire [11:0]adc_data_i1;
  wire [11:0]adc_data_q0;
  wire [11:0]adc_data_q1;
  wire adc_valid;
  wire [11:0]dac_data_i0;
  wire [11:0]dac_data_i1;
  wire [11:0]dac_data_q0;
  wire [11:0]dac_data_q1;
  wire dac_valid;
  wire data_clk;
  wire data_clk_ce;
  wire delay_load_en;
  wire [4:0]delay_value;
  wire fb_clk;
  wire mode_1r1t;
  wire ref_clk;
  wire rst;
  wire rx_clk_in_n;
  wire rx_clk_in_p;
  wire [5:0]rx_data_in_n;
  wire [5:0]rx_data_in_p;
  wire rx_frame_in_n;
  wire rx_frame_in_p;
  wire rx_status;
  wire tx_clk_out_n;
  wire tx_clk_out_p;
  wire [5:0]tx_data_out_n;
  wire [5:0]tx_data_out_p;
  wire tx_frame_out_n;
  wire tx_frame_out_p;

  design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx u_ad9363_lvds_if_rx
       (.adc_data_i0(adc_data_i0),
        .adc_data_i1(adc_data_i1),
        .adc_data_q0(adc_data_q0),
        .adc_data_q1(adc_data_q1),
        .adc_valid(adc_valid),
        .data_clk(data_clk),
        .data_clk_ce(data_clk_ce),
        .delay_load_en(delay_load_en),
        .delay_value(delay_value),
        .mode_1r1t(mode_1r1t),
        .ref_clk(ref_clk),
        .rst(rst),
        .rx_clk_in_n(rx_clk_in_n),
        .rx_clk_in_p(rx_clk_in_p),
        .rx_data_in_n(rx_data_in_n),
        .rx_data_in_p(rx_data_in_p),
        .rx_frame_in_n(rx_frame_in_n),
        .rx_frame_in_p(rx_frame_in_p),
        .rx_status(rx_status));
  design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx u_ad9363_lvds_if_tx
       (.dac_data_i0(dac_data_i0),
        .dac_data_i1(dac_data_i1),
        .dac_data_q0(dac_data_q0),
        .dac_data_q1(dac_data_q1),
        .dac_valid(dac_valid),
        .fb_clk(fb_clk),
        .mode_1r1t(mode_1r1t),
        .rst(rst),
        .tx_clk_out_n(tx_clk_out_n),
        .tx_clk_out_p(tx_clk_out_p),
        .tx_data_out_n(tx_data_out_n),
        .tx_data_out_p(tx_data_out_p),
        .tx_frame_out_n(tx_frame_out_n),
        .tx_frame_out_p(tx_frame_out_p));
endmodule

(* ORIG_REF_NAME = "ad9363_lvds_if_rx" *) 
module design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx
   (data_clk,
    rx_status,
    adc_valid,
    adc_data_i0,
    adc_data_q0,
    adc_data_i1,
    adc_data_q1,
    ref_clk,
    rst,
    rx_clk_in_p,
    rx_clk_in_n,
    rx_frame_in_p,
    rx_frame_in_n,
    data_clk_ce,
    delay_load_en,
    delay_value,
    rx_data_in_p,
    rx_data_in_n,
    mode_1r1t);
  output data_clk;
  output rx_status;
  output adc_valid;
  output [11:0]adc_data_i0;
  output [11:0]adc_data_q0;
  output [11:0]adc_data_i1;
  output [11:0]adc_data_q1;
  input ref_clk;
  input rst;
  input rx_clk_in_p;
  input rx_clk_in_n;
  input rx_frame_in_p;
  input rx_frame_in_n;
  input data_clk_ce;
  input delay_load_en;
  input [4:0]delay_value;
  input [5:0]rx_data_in_p;
  input [5:0]rx_data_in_n;
  input mode_1r1t;

  wire IDDR_inst_frame_n_0;
  wire IDDR_inst_frame_n_1;
  wire [11:0]adc_data_i0;
  wire adc_data_i0_r;
  wire [11:0]adc_data_i1;
  wire adc_data_i1_r;
  wire [11:0]adc_data_q0;
  wire [11:0]adc_data_q1;
  wire adc_valid;
  wire adc_valid_r_i_1_n_0;
  wire data_clk;
  wire data_clk_ce;
  wire \data_iddr[3].IDDR_inst_data_n_0 ;
  wire \data_iddr[3].IDDR_inst_data_n_1 ;
  wire \data_iddr[4].IDDR_inst_data_n_0 ;
  wire \data_iddr[4].IDDR_inst_data_n_1 ;
  wire \data_iddr[5].IDDR_inst_data_n_0 ;
  wire \data_iddr[5].IDDR_inst_data_n_1 ;
  wire delay_load_en;
  wire [4:0]delay_value;
  wire mode_1r1t;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire ref_clk;
  wire rst;
  wire rx_clk_in;
  wire rx_clk_in_n;
  wire rx_clk_in_p;
  wire [5:0]rx_data_in_n;
  wire [5:0]rx_data_in_p;
  wire [11:0]rx_data_shift_i;
  wire [11:0]rx_data_shift_q;
  wire rx_frame_delay;
  wire rx_frame_in;
  wire rx_frame_in_n;
  wire rx_frame_in_p;
  wire [3:0]rx_frame_shift;
  wire rx_status;
  wire rx_status_r;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;
  wire [4:0]NLW_IDELAYE2_inst_frame_delay_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]\NLW_genblk2[0].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_genblk2[1].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_genblk2[2].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_genblk2[3].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_genblk2[4].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_genblk2[5].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    BUFGCE_inst
       (.CE0(data_clk_ce),
        .CE1(1'b0),
        .I0(rx_clk_in),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(data_clk),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_clock_inst
       (.I(rx_clk_in_p),
        .IB(rx_clk_in_n),
        .O(rx_clk_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_frame_inst
       (.I(rx_frame_in_p),
        .IB(rx_frame_in_n),
        .O(rx_frame_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_inst_frame
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_frame_delay),
        .Q1(IDDR_inst_frame_n_0),
        .Q2(IDDR_inst_frame_n_1),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(ref_clk),
        .RST(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_inst_frame_delay
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(NLW_IDELAYE2_inst_frame_delay_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_frame_delay),
        .IDATAIN(rx_frame_in),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  LUT5 #(
    .INIT(32'h40000080)) 
    \adc_data_i0_r[11]_i_1 
       (.I0(mode_1r1t),
        .I1(rx_frame_shift[2]),
        .I2(rx_frame_shift[3]),
        .I3(rx_frame_shift[1]),
        .I4(rx_frame_shift[0]),
        .O(adc_data_i0_r));
  FDRE \adc_data_i0_r_reg[0] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[0]),
        .Q(adc_data_i0[0]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[10] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[10]),
        .Q(adc_data_i0[10]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[11] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[11]),
        .Q(adc_data_i0[11]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[1] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[1]),
        .Q(adc_data_i0[1]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[2] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[2]),
        .Q(adc_data_i0[2]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[3] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[3]),
        .Q(adc_data_i0[3]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[4] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[4]),
        .Q(adc_data_i0[4]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[5] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[5]),
        .Q(adc_data_i0[5]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[6] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[6]),
        .Q(adc_data_i0[6]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[7] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[7]),
        .Q(adc_data_i0[7]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[8] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[8]),
        .Q(adc_data_i0[8]),
        .R(rst));
  FDRE \adc_data_i0_r_reg[9] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_i[9]),
        .Q(adc_data_i0[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc_data_i1_r[11]_i_1 
       (.I0(mode_1r1t),
        .I1(rx_frame_shift[2]),
        .I2(rx_frame_shift[3]),
        .I3(rx_frame_shift[0]),
        .I4(rx_frame_shift[1]),
        .I5(rst),
        .O(adc_data_i1_r));
  FDRE \adc_data_i1_r_reg[0] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[0]),
        .Q(adc_data_i1[0]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[10] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[10]),
        .Q(adc_data_i1[10]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[11] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[11]),
        .Q(adc_data_i1[11]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[1] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[1]),
        .Q(adc_data_i1[1]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[2] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[2]),
        .Q(adc_data_i1[2]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[3] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[3]),
        .Q(adc_data_i1[3]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[4] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[4]),
        .Q(adc_data_i1[4]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[5] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[5]),
        .Q(adc_data_i1[5]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[6] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[6]),
        .Q(adc_data_i1[6]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[7] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[7]),
        .Q(adc_data_i1[7]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[8] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[8]),
        .Q(adc_data_i1[8]),
        .R(1'b0));
  FDRE \adc_data_i1_r_reg[9] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_i[9]),
        .Q(adc_data_i1[9]),
        .R(1'b0));
  FDRE \adc_data_q0_r_reg[0] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[0]),
        .Q(adc_data_q0[0]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[10] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[10]),
        .Q(adc_data_q0[10]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[11] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[11]),
        .Q(adc_data_q0[11]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[1] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[1]),
        .Q(adc_data_q0[1]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[2] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[2]),
        .Q(adc_data_q0[2]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[3] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[3]),
        .Q(adc_data_q0[3]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[4] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[4]),
        .Q(adc_data_q0[4]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[5] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[5]),
        .Q(adc_data_q0[5]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[6] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[6]),
        .Q(adc_data_q0[6]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[7] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[7]),
        .Q(adc_data_q0[7]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[8] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[8]),
        .Q(adc_data_q0[8]),
        .R(rst));
  FDRE \adc_data_q0_r_reg[9] 
       (.C(data_clk),
        .CE(adc_data_i0_r),
        .D(rx_data_shift_q[9]),
        .Q(adc_data_q0[9]),
        .R(rst));
  FDRE \adc_data_q1_r_reg[0] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[0]),
        .Q(adc_data_q1[0]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[10] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[10]),
        .Q(adc_data_q1[10]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[11] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[11]),
        .Q(adc_data_q1[11]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[1] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[1]),
        .Q(adc_data_q1[1]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[2] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[2]),
        .Q(adc_data_q1[2]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[3] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[3]),
        .Q(adc_data_q1[3]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[4] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[4]),
        .Q(adc_data_q1[4]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[5] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[5]),
        .Q(adc_data_q1[5]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[6] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[6]),
        .Q(adc_data_q1[6]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[7] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[7]),
        .Q(adc_data_q1[7]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[8] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[8]),
        .Q(adc_data_q1[8]),
        .R(1'b0));
  FDRE \adc_data_q1_r_reg[9] 
       (.C(data_clk),
        .CE(adc_data_i1_r),
        .D(rx_data_shift_q[9]),
        .Q(adc_data_q1[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000C080000003)) 
    adc_valid_r_i_1
       (.I0(adc_valid),
        .I1(rx_frame_shift[2]),
        .I2(rx_frame_shift[3]),
        .I3(rx_frame_shift[0]),
        .I4(rx_frame_shift[1]),
        .I5(mode_1r1t),
        .O(adc_valid_r_i_1_n_0));
  FDRE adc_valid_r_reg
       (.C(data_clk),
        .CE(1'b1),
        .D(adc_valid_r_i_1_n_0),
        .Q(adc_valid),
        .R(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[0].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_11_out),
        .Q1(p_17_out),
        .Q2(p_16_out),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[1].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_10_out),
        .Q1(p_15_out),
        .Q2(p_14_out),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[2].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_9_out),
        .Q1(p_13_out),
        .Q2(p_12_out),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[3].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_8_out),
        .Q1(\data_iddr[3].IDDR_inst_data_n_0 ),
        .Q2(\data_iddr[3].IDDR_inst_data_n_1 ),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[4].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_7_out),
        .Q1(\data_iddr[4].IDDR_inst_data_n_0 ),
        .Q2(\data_iddr[4].IDDR_inst_data_n_1 ),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \data_iddr[5].IDDR_inst_data 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_6_out),
        .Q1(\data_iddr[5].IDDR_inst_data_n_0 ),
        .Q2(\data_iddr[5].IDDR_inst_data_n_1 ),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[0].IBUFDS_data_inst 
       (.I(rx_data_in_p[0]),
        .IB(rx_data_in_n[0]),
        .O(p_5_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[1].IBUFDS_data_inst 
       (.I(rx_data_in_p[1]),
        .IB(rx_data_in_n[1]),
        .O(p_4_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[2].IBUFDS_data_inst 
       (.I(rx_data_in_p[2]),
        .IB(rx_data_in_n[2]),
        .O(p_3_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[3].IBUFDS_data_inst 
       (.I(rx_data_in_p[3]),
        .IB(rx_data_in_n[3]),
        .O(p_2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[4].IBUFDS_data_inst 
       (.I(rx_data_in_p[4]),
        .IB(rx_data_in_n[4]),
        .O(p_1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[5].IBUFDS_data_inst 
       (.I(rx_data_in_p[5]),
        .IB(rx_data_in_n[5]),
        .O(p_0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[0].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[0].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_11_out),
        .IDATAIN(p_5_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[1].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[1].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_10_out),
        .IDATAIN(p_4_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[2].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[2].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_9_out),
        .IDATAIN(p_3_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[3].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[3].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_8_out),
        .IDATAIN(p_2_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[4].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[4].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_7_out),
        .IDATAIN(p_1_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \genblk2[5].IDELAYE2_inst_data_delay 
       (.C(ref_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_value),
        .CNTVALUEOUT(\NLW_genblk2[5].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(p_6_out),
        .IDATAIN(p_0_out),
        .INC(1'b0),
        .LD(delay_load_en),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  FDRE \rx_data_shift_i_reg[0] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_17_out),
        .Q(rx_data_shift_i[0]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[10] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[4]),
        .Q(rx_data_shift_i[10]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[11] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[5]),
        .Q(rx_data_shift_i[11]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[1] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_15_out),
        .Q(rx_data_shift_i[1]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[2] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_13_out),
        .Q(rx_data_shift_i[2]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[3] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[3].IDDR_inst_data_n_0 ),
        .Q(rx_data_shift_i[3]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[4] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[4].IDDR_inst_data_n_0 ),
        .Q(rx_data_shift_i[4]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[5] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[5].IDDR_inst_data_n_0 ),
        .Q(rx_data_shift_i[5]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[6] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[0]),
        .Q(rx_data_shift_i[6]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[7] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[1]),
        .Q(rx_data_shift_i[7]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[8] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[2]),
        .Q(rx_data_shift_i[8]),
        .R(rst));
  FDRE \rx_data_shift_i_reg[9] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_i[3]),
        .Q(rx_data_shift_i[9]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[0] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_16_out),
        .Q(rx_data_shift_q[0]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[10] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[4]),
        .Q(rx_data_shift_q[10]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[11] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[5]),
        .Q(rx_data_shift_q[11]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[1] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_14_out),
        .Q(rx_data_shift_q[1]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[2] 
       (.C(data_clk),
        .CE(1'b1),
        .D(p_12_out),
        .Q(rx_data_shift_q[2]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[3] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[3].IDDR_inst_data_n_1 ),
        .Q(rx_data_shift_q[3]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[4] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[4].IDDR_inst_data_n_1 ),
        .Q(rx_data_shift_q[4]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[5] 
       (.C(data_clk),
        .CE(1'b1),
        .D(\data_iddr[5].IDDR_inst_data_n_1 ),
        .Q(rx_data_shift_q[5]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[6] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[0]),
        .Q(rx_data_shift_q[6]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[7] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[1]),
        .Q(rx_data_shift_q[7]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[8] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[2]),
        .Q(rx_data_shift_q[8]),
        .R(rst));
  FDRE \rx_data_shift_q_reg[9] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_data_shift_q[3]),
        .Q(rx_data_shift_q[9]),
        .R(rst));
  FDRE \rx_frame_shift_reg[0] 
       (.C(data_clk),
        .CE(1'b1),
        .D(IDDR_inst_frame_n_1),
        .Q(rx_frame_shift[0]),
        .R(rst));
  FDRE \rx_frame_shift_reg[1] 
       (.C(data_clk),
        .CE(1'b1),
        .D(IDDR_inst_frame_n_0),
        .Q(rx_frame_shift[1]),
        .R(rst));
  FDRE \rx_frame_shift_reg[2] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_frame_shift[0]),
        .Q(rx_frame_shift[2]),
        .R(rst));
  FDRE \rx_frame_shift_reg[3] 
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_frame_shift[1]),
        .Q(rx_frame_shift[3]),
        .R(rst));
  LUT5 #(
    .INIT(32'h10089009)) 
    rx_status_r_i_1
       (.I0(rx_frame_shift[3]),
        .I1(rx_frame_shift[2]),
        .I2(rx_frame_shift[0]),
        .I3(rx_frame_shift[1]),
        .I4(mode_1r1t),
        .O(rx_status_r));
  FDRE rx_status_r_reg
       (.C(data_clk),
        .CE(1'b1),
        .D(rx_status_r),
        .Q(rx_status),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ad9363_lvds_if_tx" *) 
module design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx
   (tx_clk_out_p,
    tx_clk_out_n,
    tx_frame_out_p,
    tx_frame_out_n,
    tx_data_out_p,
    tx_data_out_n,
    fb_clk,
    mode_1r1t,
    rst,
    dac_valid,
    dac_data_i0,
    dac_data_i1,
    dac_data_q0,
    dac_data_q1);
  output tx_clk_out_p;
  output tx_clk_out_n;
  output tx_frame_out_p;
  output tx_frame_out_n;
  output [5:0]tx_data_out_p;
  output [5:0]tx_data_out_n;
  input fb_clk;
  input mode_1r1t;
  input rst;
  input dac_valid;
  input [11:0]dac_data_i0;
  input [11:0]dac_data_i1;
  input [11:0]dac_data_q0;
  input [11:0]dac_data_q1;

  wire \cnt_data[0]_i_1_n_0 ;
  wire \cnt_data[1]_i_1_n_0 ;
  wire \cnt_data[2]_i_1_n_0 ;
  wire \cnt_data_reg_n_0_[0] ;
  wire \cnt_data_reg_n_0_[2] ;
  wire [11:0]dac_data_i0;
  wire [11:0]dac_data_i0_r;
  wire [11:0]dac_data_i1;
  wire [11:0]dac_data_i1_r;
  wire [11:0]dac_data_q0;
  wire [11:0]dac_data_q0_r;
  wire [11:0]dac_data_q1;
  wire [11:0]dac_data_q1_r;
  wire dac_valid;
  wire fb_clk;
  wire mode_1r1t;
  wire p_0_in0;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire rst;
  wire tx_clk_out;
  wire tx_clk_out_n;
  wire tx_clk_out_p;
  wire \tx_data_i[0]_i_1_n_0 ;
  wire \tx_data_i[0]_i_2_n_0 ;
  wire \tx_data_i[1]_i_1_n_0 ;
  wire \tx_data_i[1]_i_2_n_0 ;
  wire \tx_data_i[2]_i_1_n_0 ;
  wire \tx_data_i[2]_i_2_n_0 ;
  wire \tx_data_i[3]_i_1_n_0 ;
  wire \tx_data_i[3]_i_2_n_0 ;
  wire \tx_data_i[4]_i_1_n_0 ;
  wire \tx_data_i[4]_i_2_n_0 ;
  wire \tx_data_i[5]_i_2_n_0 ;
  wire \tx_data_i[5]_i_3_n_0 ;
  wire \tx_data_i[5]_i_4_n_0 ;
  wire \tx_data_i_reg_n_0_[0] ;
  wire \tx_data_i_reg_n_0_[1] ;
  wire \tx_data_i_reg_n_0_[2] ;
  wire \tx_data_i_reg_n_0_[3] ;
  wire \tx_data_i_reg_n_0_[4] ;
  wire \tx_data_i_reg_n_0_[5] ;
  wire [5:0]tx_data_out_n;
  wire [5:0]tx_data_out_p;
  wire tx_data_q;
  wire \tx_data_q[0]_i_1_n_0 ;
  wire \tx_data_q[0]_i_2_n_0 ;
  wire \tx_data_q[1]_i_1_n_0 ;
  wire \tx_data_q[1]_i_2_n_0 ;
  wire \tx_data_q[2]_i_1_n_0 ;
  wire \tx_data_q[2]_i_2_n_0 ;
  wire \tx_data_q[3]_i_1_n_0 ;
  wire \tx_data_q[3]_i_2_n_0 ;
  wire \tx_data_q[4]_i_1_n_0 ;
  wire \tx_data_q[4]_i_2_n_0 ;
  wire \tx_data_q[5]_i_1_n_0 ;
  wire \tx_data_q[5]_i_2_n_0 ;
  wire \tx_data_q_reg_n_0_[0] ;
  wire \tx_data_q_reg_n_0_[1] ;
  wire \tx_data_q_reg_n_0_[2] ;
  wire \tx_data_q_reg_n_0_[3] ;
  wire \tx_data_q_reg_n_0_[4] ;
  wire \tx_data_q_reg_n_0_[5] ;
  wire tx_flag;
  wire tx_flag_i_1_n_0;
  wire tx_flag_i_2_n_0;
  wire tx_frame_out;
  wire tx_frame_out_n;
  wire tx_frame_out_p;
  wire [1:1]tx_frame_shift;
  wire \tx_frame_shift[1]_i_1_n_0 ;
  wire NLW_ODDR_inst_clock_R_UNCONNECTED;
  wire NLW_ODDR_inst_clock_S_UNCONNECTED;
  wire NLW_ODDR_inst_frame_R_UNCONNECTED;
  wire NLW_ODDR_inst_frame_S_UNCONNECTED;
  wire \NLW_genblk1[0].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[0].ODDR_inst_clock_S_UNCONNECTED ;
  wire \NLW_genblk1[1].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[1].ODDR_inst_clock_S_UNCONNECTED ;
  wire \NLW_genblk1[2].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[2].ODDR_inst_clock_S_UNCONNECTED ;
  wire \NLW_genblk1[3].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[3].ODDR_inst_clock_S_UNCONNECTED ;
  wire \NLW_genblk1[4].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[4].ODDR_inst_clock_S_UNCONNECTED ;
  wire \NLW_genblk1[5].ODDR_inst_clock_R_UNCONNECTED ;
  wire \NLW_genblk1[5].ODDR_inst_clock_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock_inst
       (.I(tx_clk_out),
        .O(tx_clk_out_p),
        .OB(tx_clk_out_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_frame_inst
       (.I(tx_frame_out),
        .O(tx_frame_out_p),
        .OB(tx_frame_out_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_inst_clock
       (.C(fb_clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(tx_clk_out),
        .R(NLW_ODDR_inst_clock_R_UNCONNECTED),
        .S(NLW_ODDR_inst_clock_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_inst_frame
       (.C(fb_clk),
        .CE(1'b1),
        .D1(tx_frame_shift),
        .D2(tx_frame_shift),
        .Q(tx_frame_out),
        .R(NLW_ODDR_inst_frame_R_UNCONNECTED),
        .S(NLW_ODDR_inst_frame_S_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_data[0]_i_1 
       (.I0(tx_flag),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(rst),
        .O(\cnt_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006C4C6C6C)) 
    \cnt_data[1]_i_1 
       (.I0(tx_flag),
        .I1(p_0_in0),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(mode_1r1t),
        .I5(rst),
        .O(\cnt_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F807F00)) 
    \cnt_data[2]_i_1 
       (.I0(tx_flag),
        .I1(p_0_in0),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(mode_1r1t),
        .I5(rst),
        .O(\cnt_data[2]_i_1_n_0 ));
  FDRE \cnt_data_reg[0] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\cnt_data[0]_i_1_n_0 ),
        .Q(\cnt_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_data_reg[1] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\cnt_data[1]_i_1_n_0 ),
        .Q(p_0_in0),
        .R(1'b0));
  FDRE \cnt_data_reg[2] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\cnt_data[2]_i_1_n_0 ),
        .Q(\cnt_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dac_data_i0_r_reg[0] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[0]),
        .Q(dac_data_i0_r[0]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[10] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[10]),
        .Q(dac_data_i0_r[10]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[11] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[11]),
        .Q(dac_data_i0_r[11]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[1] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[1]),
        .Q(dac_data_i0_r[1]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[2] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[2]),
        .Q(dac_data_i0_r[2]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[3] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[3]),
        .Q(dac_data_i0_r[3]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[4] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[4]),
        .Q(dac_data_i0_r[4]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[5] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[5]),
        .Q(dac_data_i0_r[5]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[6] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[6]),
        .Q(dac_data_i0_r[6]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[7] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[7]),
        .Q(dac_data_i0_r[7]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[8] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[8]),
        .Q(dac_data_i0_r[8]),
        .R(rst));
  FDRE \dac_data_i0_r_reg[9] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i0[9]),
        .Q(dac_data_i0_r[9]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[0] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[0]),
        .Q(dac_data_i1_r[0]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[10] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[10]),
        .Q(dac_data_i1_r[10]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[11] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[11]),
        .Q(dac_data_i1_r[11]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[1] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[1]),
        .Q(dac_data_i1_r[1]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[2] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[2]),
        .Q(dac_data_i1_r[2]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[3] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[3]),
        .Q(dac_data_i1_r[3]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[4] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[4]),
        .Q(dac_data_i1_r[4]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[5] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[5]),
        .Q(dac_data_i1_r[5]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[6] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[6]),
        .Q(dac_data_i1_r[6]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[7] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[7]),
        .Q(dac_data_i1_r[7]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[8] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[8]),
        .Q(dac_data_i1_r[8]),
        .R(rst));
  FDRE \dac_data_i1_r_reg[9] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_i1[9]),
        .Q(dac_data_i1_r[9]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[0] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[0]),
        .Q(dac_data_q0_r[0]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[10] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[10]),
        .Q(dac_data_q0_r[10]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[11] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[11]),
        .Q(dac_data_q0_r[11]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[1] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[1]),
        .Q(dac_data_q0_r[1]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[2] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[2]),
        .Q(dac_data_q0_r[2]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[3] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[3]),
        .Q(dac_data_q0_r[3]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[4] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[4]),
        .Q(dac_data_q0_r[4]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[5] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[5]),
        .Q(dac_data_q0_r[5]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[6] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[6]),
        .Q(dac_data_q0_r[6]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[7] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[7]),
        .Q(dac_data_q0_r[7]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[8] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[8]),
        .Q(dac_data_q0_r[8]),
        .R(rst));
  FDRE \dac_data_q0_r_reg[9] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q0[9]),
        .Q(dac_data_q0_r[9]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[0] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[0]),
        .Q(dac_data_q1_r[0]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[10] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[10]),
        .Q(dac_data_q1_r[10]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[11] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[11]),
        .Q(dac_data_q1_r[11]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[1] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[1]),
        .Q(dac_data_q1_r[1]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[2] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[2]),
        .Q(dac_data_q1_r[2]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[3] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[3]),
        .Q(dac_data_q1_r[3]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[4] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[4]),
        .Q(dac_data_q1_r[4]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[5] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[5]),
        .Q(dac_data_q1_r[5]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[6] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[6]),
        .Q(dac_data_q1_r[6]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[7] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[7]),
        .Q(dac_data_q1_r[7]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[8] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[8]),
        .Q(dac_data_q1_r[8]),
        .R(rst));
  FDRE \dac_data_q1_r_reg[9] 
       (.C(fb_clk),
        .CE(dac_valid),
        .D(dac_data_q1[9]),
        .Q(dac_data_q1_r[9]),
        .R(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[0].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[0] ),
        .D2(\tx_data_q_reg_n_0_[0] ),
        .Q(p_5_out),
        .R(\NLW_genblk1[0].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[0].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[1].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[1] ),
        .D2(\tx_data_q_reg_n_0_[1] ),
        .Q(p_4_out),
        .R(\NLW_genblk1[1].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[1].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[2].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[2] ),
        .D2(\tx_data_q_reg_n_0_[2] ),
        .Q(p_3_out),
        .R(\NLW_genblk1[2].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[2].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[3].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[3] ),
        .D2(\tx_data_q_reg_n_0_[3] ),
        .Q(p_2_out),
        .R(\NLW_genblk1[3].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[3].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[4].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[4] ),
        .D2(\tx_data_q_reg_n_0_[4] ),
        .Q(p_1_out),
        .R(\NLW_genblk1[4].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[4].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[5].ODDR_inst_clock 
       (.C(fb_clk),
        .CE(1'b1),
        .D1(\tx_data_i_reg_n_0_[5] ),
        .D2(\tx_data_q_reg_n_0_[5] ),
        .Q(p_0_out),
        .R(\NLW_genblk1[5].ODDR_inst_clock_R_UNCONNECTED ),
        .S(\NLW_genblk1[5].ODDR_inst_clock_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[0].OBUFDS_frame_inst 
       (.I(p_5_out),
        .O(tx_data_out_p[0]),
        .OB(tx_data_out_n[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[1].OBUFDS_frame_inst 
       (.I(p_4_out),
        .O(tx_data_out_p[1]),
        .OB(tx_data_out_n[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[2].OBUFDS_frame_inst 
       (.I(p_3_out),
        .O(tx_data_out_p[2]),
        .OB(tx_data_out_n[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[3].OBUFDS_frame_inst 
       (.I(p_2_out),
        .O(tx_data_out_p[3]),
        .OB(tx_data_out_n[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[4].OBUFDS_frame_inst 
       (.I(p_1_out),
        .O(tx_data_out_p[4]),
        .OB(tx_data_out_n[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \genblk2[5].OBUFDS_frame_inst 
       (.I(p_0_out),
        .O(tx_data_out_p[5]),
        .OB(tx_data_out_n[5]));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[0]_i_1 
       (.I0(\tx_data_i[0]_i_2_n_0 ),
        .I1(dac_data_i1_r[0]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[6]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[0]_i_2 
       (.I0(dac_data_i0_r[6]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[0]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[1]_i_1 
       (.I0(\tx_data_i[1]_i_2_n_0 ),
        .I1(dac_data_i1_r[1]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[7]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[1]_i_2 
       (.I0(dac_data_i0_r[7]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[1]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[2]_i_1 
       (.I0(\tx_data_i[2]_i_2_n_0 ),
        .I1(dac_data_i1_r[2]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[8]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[2]_i_2 
       (.I0(dac_data_i0_r[8]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[2]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[3]_i_1 
       (.I0(\tx_data_i[3]_i_2_n_0 ),
        .I1(dac_data_i1_r[3]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[9]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[3]_i_2 
       (.I0(dac_data_i0_r[9]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[3]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[4]_i_1 
       (.I0(\tx_data_i[4]_i_2_n_0 ),
        .I1(dac_data_i1_r[4]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[10]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[4]_i_2 
       (.I0(dac_data_i0_r[10]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[4]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tx_data_i[5]_i_1 
       (.I0(rst),
        .I1(tx_flag),
        .O(tx_data_q));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_i[5]_i_2 
       (.I0(\tx_data_i[5]_i_3_n_0 ),
        .I1(dac_data_i1_r[5]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_i1_r[11]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_i[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_i[5]_i_3 
       (.I0(dac_data_i0_r[11]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_i0_r[5]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_i[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \tx_data_i[5]_i_4 
       (.I0(\cnt_data_reg_n_0_[2] ),
        .I1(mode_1r1t),
        .I2(tx_flag),
        .O(\tx_data_i[5]_i_4_n_0 ));
  FDRE \tx_data_i_reg[0] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[0]_i_1_n_0 ),
        .Q(\tx_data_i_reg_n_0_[0] ),
        .R(tx_data_q));
  FDRE \tx_data_i_reg[1] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[1]_i_1_n_0 ),
        .Q(\tx_data_i_reg_n_0_[1] ),
        .R(tx_data_q));
  FDRE \tx_data_i_reg[2] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[2]_i_1_n_0 ),
        .Q(\tx_data_i_reg_n_0_[2] ),
        .R(tx_data_q));
  FDRE \tx_data_i_reg[3] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[3]_i_1_n_0 ),
        .Q(\tx_data_i_reg_n_0_[3] ),
        .R(tx_data_q));
  FDRE \tx_data_i_reg[4] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[4]_i_1_n_0 ),
        .Q(\tx_data_i_reg_n_0_[4] ),
        .R(tx_data_q));
  FDRE \tx_data_i_reg[5] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_i[5]_i_2_n_0 ),
        .Q(\tx_data_i_reg_n_0_[5] ),
        .R(tx_data_q));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[0]_i_1 
       (.I0(\tx_data_q[0]_i_2_n_0 ),
        .I1(dac_data_q1_r[0]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[6]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[0]_i_2 
       (.I0(dac_data_q0_r[6]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[0]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[1]_i_1 
       (.I0(\tx_data_q[1]_i_2_n_0 ),
        .I1(dac_data_q1_r[1]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[7]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[1]_i_2 
       (.I0(dac_data_q0_r[7]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[1]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[2]_i_1 
       (.I0(\tx_data_q[2]_i_2_n_0 ),
        .I1(dac_data_q1_r[2]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[8]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[2]_i_2 
       (.I0(dac_data_q0_r[8]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[2]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[3]_i_1 
       (.I0(\tx_data_q[3]_i_2_n_0 ),
        .I1(dac_data_q1_r[3]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[9]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[3]_i_2 
       (.I0(dac_data_q0_r[9]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[3]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[4]_i_1 
       (.I0(\tx_data_q[4]_i_2_n_0 ),
        .I1(dac_data_q1_r[4]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[10]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[4]_i_2 
       (.I0(dac_data_q0_r[10]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[4]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEAAAAAAAAAAA)) 
    \tx_data_q[5]_i_1 
       (.I0(\tx_data_q[5]_i_2_n_0 ),
        .I1(dac_data_q1_r[5]),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .I4(dac_data_q1_r[11]),
        .I5(\tx_data_i[5]_i_4_n_0 ),
        .O(\tx_data_q[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tx_data_q[5]_i_2 
       (.I0(dac_data_q0_r[11]),
        .I1(\cnt_data_reg_n_0_[0] ),
        .I2(dac_data_q0_r[5]),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(p_0_in0),
        .O(\tx_data_q[5]_i_2_n_0 ));
  FDRE \tx_data_q_reg[0] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[0]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[0] ),
        .R(tx_data_q));
  FDRE \tx_data_q_reg[1] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[1]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[1] ),
        .R(tx_data_q));
  FDRE \tx_data_q_reg[2] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[2]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[2] ),
        .R(tx_data_q));
  FDRE \tx_data_q_reg[3] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[3]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[3] ),
        .R(tx_data_q));
  FDRE \tx_data_q_reg[4] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[4]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[4] ),
        .R(tx_data_q));
  FDRE \tx_data_q_reg[5] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_data_q[5]_i_1_n_0 ),
        .Q(\tx_data_q_reg_n_0_[5] ),
        .R(tx_data_q));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    tx_flag_i_1
       (.I0(tx_flag),
        .I1(tx_flag_i_2_n_0),
        .I2(dac_valid),
        .I3(rst),
        .O(tx_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEFDF)) 
    tx_flag_i_2
       (.I0(mode_1r1t),
        .I1(\cnt_data_reg_n_0_[2] ),
        .I2(\cnt_data_reg_n_0_[0] ),
        .I3(p_0_in0),
        .O(tx_flag_i_2_n_0));
  FDRE tx_flag_reg
       (.C(fb_clk),
        .CE(1'b1),
        .D(tx_flag_i_1_n_0),
        .Q(tx_flag),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000700000000)) 
    \tx_frame_shift[1]_i_1 
       (.I0(\cnt_data_reg_n_0_[0] ),
        .I1(mode_1r1t),
        .I2(p_0_in0),
        .I3(\cnt_data_reg_n_0_[2] ),
        .I4(rst),
        .I5(tx_flag),
        .O(\tx_frame_shift[1]_i_1_n_0 ));
  FDRE \tx_frame_shift_reg[1] 
       (.C(fb_clk),
        .CE(1'b1),
        .D(\tx_frame_shift[1]_i_1_n_0 ),
        .Q(tx_frame_shift),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
