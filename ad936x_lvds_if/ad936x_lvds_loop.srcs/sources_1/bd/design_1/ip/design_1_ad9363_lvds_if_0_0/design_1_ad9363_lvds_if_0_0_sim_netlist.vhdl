-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May  8 14:48:53 2021
-- Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_lvds_if_0_0/design_1_ad9363_lvds_if_0_0_sim_netlist.vhdl
-- Design      : design_1_ad9363_lvds_if_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx is
  port (
    data_clk : out STD_LOGIC;
    rx_status : out STD_LOGIC;
    adc_valid : out STD_LOGIC;
    adc_data_i0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_i1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_clk_in_p : in STD_LOGIC;
    rx_clk_in_n : in STD_LOGIC;
    rx_frame_in_p : in STD_LOGIC;
    rx_frame_in_n : in STD_LOGIC;
    data_clk_ce : in STD_LOGIC;
    delay_load_en : in STD_LOGIC;
    delay_value : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_data_in_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rx_data_in_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    mode_1r1t : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx : entity is "ad9363_lvds_if_rx";
end design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx;

architecture STRUCTURE of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx is
  signal IDDR_inst_frame_n_0 : STD_LOGIC;
  signal IDDR_inst_frame_n_1 : STD_LOGIC;
  signal adc_data_i0_r : STD_LOGIC;
  signal adc_data_i1_r : STD_LOGIC;
  signal \^adc_valid\ : STD_LOGIC;
  signal adc_valid_r_i_1_n_0 : STD_LOGIC;
  signal \^data_clk\ : STD_LOGIC;
  signal \data_iddr[3].IDDR_inst_data_n_0\ : STD_LOGIC;
  signal \data_iddr[3].IDDR_inst_data_n_1\ : STD_LOGIC;
  signal \data_iddr[4].IDDR_inst_data_n_0\ : STD_LOGIC;
  signal \data_iddr[4].IDDR_inst_data_n_1\ : STD_LOGIC;
  signal \data_iddr[5].IDDR_inst_data_n_0\ : STD_LOGIC;
  signal \data_iddr[5].IDDR_inst_data_n_1\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rx_clk_in : STD_LOGIC;
  signal rx_data_shift_i : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rx_data_shift_q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rx_frame_delay : STD_LOGIC;
  signal rx_frame_in : STD_LOGIC;
  signal rx_frame_shift : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_status_r : STD_LOGIC;
  signal NLW_IDELAYCTRL_inst_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_IDELAYE2_inst_frame_delay_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[0].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[1].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[2].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[3].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[4].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_genblk2[5].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFGCE_inst : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of BUFGCE_inst : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of BUFGCE_inst : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of IBUFDS_clock_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_clock_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_clock_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_clock_inst : label is "AUTO";
  attribute BOX_TYPE of IBUFDS_frame_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of IBUFDS_frame_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of IBUFDS_frame_inst : label is "0";
  attribute IFD_DELAY_VALUE of IBUFDS_frame_inst : label is "AUTO";
  attribute BOX_TYPE of IDDR_inst_frame : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_inst_frame : label is "TRUE";
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of IDELAYE2_inst_frame_delay : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_inst_frame_delay : label is 0;
  attribute BOX_TYPE of \data_iddr[0].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[0].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \data_iddr[1].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[1].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \data_iddr[2].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[2].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \data_iddr[3].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[3].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \data_iddr[4].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[4].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \data_iddr[5].IDDR_inst_data\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \data_iddr[5].IDDR_inst_data\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[0].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[0].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[0].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[0].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk1[1].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[1].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[1].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[1].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk1[2].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[2].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[2].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[2].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk1[3].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[3].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[3].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[3].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk1[4].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[4].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[4].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[4].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk1[5].IBUFDS_data_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk1[5].IBUFDS_data_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \genblk1[5].IBUFDS_data_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \genblk1[5].IBUFDS_data_inst\ : label is "AUTO";
  attribute BOX_TYPE of \genblk2[0].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[0].IDELAYE2_inst_data_delay\ : label is 0;
  attribute BOX_TYPE of \genblk2[1].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[1].IDELAYE2_inst_data_delay\ : label is 0;
  attribute BOX_TYPE of \genblk2[2].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[2].IDELAYE2_inst_data_delay\ : label is 0;
  attribute BOX_TYPE of \genblk2[3].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[3].IDELAYE2_inst_data_delay\ : label is 0;
  attribute BOX_TYPE of \genblk2[4].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[4].IDELAYE2_inst_data_delay\ : label is 0;
  attribute BOX_TYPE of \genblk2[5].IDELAYE2_inst_data_delay\ : label is "PRIMITIVE";
  attribute SIM_DELAY_D of \genblk2[5].IDELAYE2_inst_data_delay\ : label is 0;
begin
  adc_valid <= \^adc_valid\;
  data_clk <= \^data_clk\;
BUFGCE_inst: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => data_clk_ce,
      CE1 => '0',
      I0 => rx_clk_in,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => \^data_clk\,
      S0 => '1',
      S1 => '0'
    );
IBUFDS_clock_inst: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_clk_in_p,
      IB => rx_clk_in_n,
      O => rx_clk_in
    );
IBUFDS_frame_inst: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_frame_in_p,
      IB => rx_frame_in_n,
      O => rx_frame_in
    );
IDDR_inst_frame: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_frame_delay,
      Q1 => IDDR_inst_frame_n_0,
      Q2 => IDDR_inst_frame_n_1,
      R => '0',
      S => '0'
    );
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => NLW_IDELAYCTRL_inst_RDY_UNCONNECTED,
      REFCLK => ref_clk,
      RST => rst
    );
IDELAYE2_inst_frame_delay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_IDELAYE2_inst_frame_delay_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_frame_delay,
      IDATAIN => rx_frame_in,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\adc_data_i0_r[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000080"
    )
        port map (
      I0 => mode_1r1t,
      I1 => rx_frame_shift(2),
      I2 => rx_frame_shift(3),
      I3 => rx_frame_shift(1),
      I4 => rx_frame_shift(0),
      O => adc_data_i0_r
    );
\adc_data_i0_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(0),
      Q => adc_data_i0(0),
      R => rst
    );
\adc_data_i0_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(10),
      Q => adc_data_i0(10),
      R => rst
    );
\adc_data_i0_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(11),
      Q => adc_data_i0(11),
      R => rst
    );
\adc_data_i0_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(1),
      Q => adc_data_i0(1),
      R => rst
    );
\adc_data_i0_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(2),
      Q => adc_data_i0(2),
      R => rst
    );
\adc_data_i0_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(3),
      Q => adc_data_i0(3),
      R => rst
    );
\adc_data_i0_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(4),
      Q => adc_data_i0(4),
      R => rst
    );
\adc_data_i0_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(5),
      Q => adc_data_i0(5),
      R => rst
    );
\adc_data_i0_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(6),
      Q => adc_data_i0(6),
      R => rst
    );
\adc_data_i0_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(7),
      Q => adc_data_i0(7),
      R => rst
    );
\adc_data_i0_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(8),
      Q => adc_data_i0(8),
      R => rst
    );
\adc_data_i0_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_i(9),
      Q => adc_data_i0(9),
      R => rst
    );
\adc_data_i1_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => mode_1r1t,
      I1 => rx_frame_shift(2),
      I2 => rx_frame_shift(3),
      I3 => rx_frame_shift(0),
      I4 => rx_frame_shift(1),
      I5 => rst,
      O => adc_data_i1_r
    );
\adc_data_i1_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(0),
      Q => adc_data_i1(0),
      R => '0'
    );
\adc_data_i1_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(10),
      Q => adc_data_i1(10),
      R => '0'
    );
\adc_data_i1_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(11),
      Q => adc_data_i1(11),
      R => '0'
    );
\adc_data_i1_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(1),
      Q => adc_data_i1(1),
      R => '0'
    );
\adc_data_i1_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(2),
      Q => adc_data_i1(2),
      R => '0'
    );
\adc_data_i1_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(3),
      Q => adc_data_i1(3),
      R => '0'
    );
\adc_data_i1_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(4),
      Q => adc_data_i1(4),
      R => '0'
    );
\adc_data_i1_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(5),
      Q => adc_data_i1(5),
      R => '0'
    );
\adc_data_i1_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(6),
      Q => adc_data_i1(6),
      R => '0'
    );
\adc_data_i1_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(7),
      Q => adc_data_i1(7),
      R => '0'
    );
\adc_data_i1_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(8),
      Q => adc_data_i1(8),
      R => '0'
    );
\adc_data_i1_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_i(9),
      Q => adc_data_i1(9),
      R => '0'
    );
\adc_data_q0_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(0),
      Q => adc_data_q0(0),
      R => rst
    );
\adc_data_q0_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(10),
      Q => adc_data_q0(10),
      R => rst
    );
\adc_data_q0_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(11),
      Q => adc_data_q0(11),
      R => rst
    );
\adc_data_q0_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(1),
      Q => adc_data_q0(1),
      R => rst
    );
\adc_data_q0_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(2),
      Q => adc_data_q0(2),
      R => rst
    );
\adc_data_q0_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(3),
      Q => adc_data_q0(3),
      R => rst
    );
\adc_data_q0_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(4),
      Q => adc_data_q0(4),
      R => rst
    );
\adc_data_q0_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(5),
      Q => adc_data_q0(5),
      R => rst
    );
\adc_data_q0_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(6),
      Q => adc_data_q0(6),
      R => rst
    );
\adc_data_q0_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(7),
      Q => adc_data_q0(7),
      R => rst
    );
\adc_data_q0_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(8),
      Q => adc_data_q0(8),
      R => rst
    );
\adc_data_q0_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i0_r,
      D => rx_data_shift_q(9),
      Q => adc_data_q0(9),
      R => rst
    );
\adc_data_q1_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(0),
      Q => adc_data_q1(0),
      R => '0'
    );
\adc_data_q1_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(10),
      Q => adc_data_q1(10),
      R => '0'
    );
\adc_data_q1_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(11),
      Q => adc_data_q1(11),
      R => '0'
    );
\adc_data_q1_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(1),
      Q => adc_data_q1(1),
      R => '0'
    );
\adc_data_q1_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(2),
      Q => adc_data_q1(2),
      R => '0'
    );
\adc_data_q1_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(3),
      Q => adc_data_q1(3),
      R => '0'
    );
\adc_data_q1_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(4),
      Q => adc_data_q1(4),
      R => '0'
    );
\adc_data_q1_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(5),
      Q => adc_data_q1(5),
      R => '0'
    );
\adc_data_q1_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(6),
      Q => adc_data_q1(6),
      R => '0'
    );
\adc_data_q1_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(7),
      Q => adc_data_q1(7),
      R => '0'
    );
\adc_data_q1_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(8),
      Q => adc_data_q1(8),
      R => '0'
    );
\adc_data_q1_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => adc_data_i1_r,
      D => rx_data_shift_q(9),
      Q => adc_data_q1(9),
      R => '0'
    );
adc_valid_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C080000003"
    )
        port map (
      I0 => \^adc_valid\,
      I1 => rx_frame_shift(2),
      I2 => rx_frame_shift(3),
      I3 => rx_frame_shift(0),
      I4 => rx_frame_shift(1),
      I5 => mode_1r1t,
      O => adc_valid_r_i_1_n_0
    );
adc_valid_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => adc_valid_r_i_1_n_0,
      Q => \^adc_valid\,
      R => rst
    );
\data_iddr[0].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_11_out,
      Q1 => p_17_out,
      Q2 => p_16_out,
      R => '0',
      S => '0'
    );
\data_iddr[1].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_10_out,
      Q1 => p_15_out,
      Q2 => p_14_out,
      R => '0',
      S => '0'
    );
\data_iddr[2].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_9_out,
      Q1 => p_13_out,
      Q2 => p_12_out,
      R => '0',
      S => '0'
    );
\data_iddr[3].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_8_out,
      Q1 => \data_iddr[3].IDDR_inst_data_n_0\,
      Q2 => \data_iddr[3].IDDR_inst_data_n_1\,
      R => '0',
      S => '0'
    );
\data_iddr[4].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_7_out,
      Q1 => \data_iddr[4].IDDR_inst_data_n_0\,
      Q2 => \data_iddr[4].IDDR_inst_data_n_1\,
      R => '0',
      S => '0'
    );
\data_iddr[5].IDDR_inst_data\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^data_clk\,
      CE => '1',
      D => p_6_out,
      Q1 => \data_iddr[5].IDDR_inst_data_n_0\,
      Q2 => \data_iddr[5].IDDR_inst_data_n_1\,
      R => '0',
      S => '0'
    );
\genblk1[0].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(0),
      IB => rx_data_in_n(0),
      O => p_5_out
    );
\genblk1[1].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(1),
      IB => rx_data_in_n(1),
      O => p_4_out
    );
\genblk1[2].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(2),
      IB => rx_data_in_n(2),
      O => p_3_out
    );
\genblk1[3].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(3),
      IB => rx_data_in_n(3),
      O => p_2_out
    );
\genblk1[4].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(4),
      IB => rx_data_in_n(4),
      O => p_1_out
    );
\genblk1[5].IBUFDS_data_inst\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rx_data_in_p(5),
      IB => rx_data_in_n(5),
      O => p_0_out
    );
\genblk2[0].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[0].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_11_out,
      IDATAIN => p_5_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\genblk2[1].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[1].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_10_out,
      IDATAIN => p_4_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\genblk2[2].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[2].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_9_out,
      IDATAIN => p_3_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\genblk2[3].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[3].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_8_out,
      IDATAIN => p_2_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\genblk2[4].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[4].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_7_out,
      IDATAIN => p_1_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\genblk2[5].IDELAYE2_inst_data_delay\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => ref_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_value(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_genblk2[5].IDELAYE2_inst_data_delay_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => p_6_out,
      IDATAIN => p_0_out,
      INC => '0',
      LD => delay_load_en,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\rx_data_shift_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_17_out,
      Q => rx_data_shift_i(0),
      R => rst
    );
\rx_data_shift_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(4),
      Q => rx_data_shift_i(10),
      R => rst
    );
\rx_data_shift_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(5),
      Q => rx_data_shift_i(11),
      R => rst
    );
\rx_data_shift_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_15_out,
      Q => rx_data_shift_i(1),
      R => rst
    );
\rx_data_shift_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_13_out,
      Q => rx_data_shift_i(2),
      R => rst
    );
\rx_data_shift_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[3].IDDR_inst_data_n_0\,
      Q => rx_data_shift_i(3),
      R => rst
    );
\rx_data_shift_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[4].IDDR_inst_data_n_0\,
      Q => rx_data_shift_i(4),
      R => rst
    );
\rx_data_shift_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[5].IDDR_inst_data_n_0\,
      Q => rx_data_shift_i(5),
      R => rst
    );
\rx_data_shift_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(0),
      Q => rx_data_shift_i(6),
      R => rst
    );
\rx_data_shift_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(1),
      Q => rx_data_shift_i(7),
      R => rst
    );
\rx_data_shift_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(2),
      Q => rx_data_shift_i(8),
      R => rst
    );
\rx_data_shift_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_i(3),
      Q => rx_data_shift_i(9),
      R => rst
    );
\rx_data_shift_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_16_out,
      Q => rx_data_shift_q(0),
      R => rst
    );
\rx_data_shift_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(4),
      Q => rx_data_shift_q(10),
      R => rst
    );
\rx_data_shift_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(5),
      Q => rx_data_shift_q(11),
      R => rst
    );
\rx_data_shift_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_14_out,
      Q => rx_data_shift_q(1),
      R => rst
    );
\rx_data_shift_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => p_12_out,
      Q => rx_data_shift_q(2),
      R => rst
    );
\rx_data_shift_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[3].IDDR_inst_data_n_1\,
      Q => rx_data_shift_q(3),
      R => rst
    );
\rx_data_shift_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[4].IDDR_inst_data_n_1\,
      Q => rx_data_shift_q(4),
      R => rst
    );
\rx_data_shift_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => \data_iddr[5].IDDR_inst_data_n_1\,
      Q => rx_data_shift_q(5),
      R => rst
    );
\rx_data_shift_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(0),
      Q => rx_data_shift_q(6),
      R => rst
    );
\rx_data_shift_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(1),
      Q => rx_data_shift_q(7),
      R => rst
    );
\rx_data_shift_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(2),
      Q => rx_data_shift_q(8),
      R => rst
    );
\rx_data_shift_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_data_shift_q(3),
      Q => rx_data_shift_q(9),
      R => rst
    );
\rx_frame_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => IDDR_inst_frame_n_1,
      Q => rx_frame_shift(0),
      R => rst
    );
\rx_frame_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => IDDR_inst_frame_n_0,
      Q => rx_frame_shift(1),
      R => rst
    );
\rx_frame_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_frame_shift(0),
      Q => rx_frame_shift(2),
      R => rst
    );
\rx_frame_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_frame_shift(1),
      Q => rx_frame_shift(3),
      R => rst
    );
rx_status_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10089009"
    )
        port map (
      I0 => rx_frame_shift(3),
      I1 => rx_frame_shift(2),
      I2 => rx_frame_shift(0),
      I3 => rx_frame_shift(1),
      I4 => mode_1r1t,
      O => rx_status_r
    );
rx_status_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^data_clk\,
      CE => '1',
      D => rx_status_r,
      Q => rx_status,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx is
  port (
    tx_clk_out_p : out STD_LOGIC;
    tx_clk_out_n : out STD_LOGIC;
    tx_frame_out_p : out STD_LOGIC;
    tx_frame_out_n : out STD_LOGIC;
    tx_data_out_p : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_data_out_n : out STD_LOGIC_VECTOR ( 5 downto 0 );
    fb_clk : in STD_LOGIC;
    mode_1r1t : in STD_LOGIC;
    rst : in STD_LOGIC;
    dac_valid : in STD_LOGIC;
    dac_data_i0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_i1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q1 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx : entity is "ad9363_lvds_if_tx";
end design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx;

architecture STRUCTURE of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx is
  signal \cnt_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_data_reg_n_0_[2]\ : STD_LOGIC;
  signal dac_data_i0_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal dac_data_i1_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal dac_data_q0_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal dac_data_q1_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal tx_clk_out : STD_LOGIC;
  signal \tx_data_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \tx_data_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_i_reg_n_0_[5]\ : STD_LOGIC;
  signal tx_data_q : STD_LOGIC;
  signal \tx_data_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_q_reg_n_0_[5]\ : STD_LOGIC;
  signal tx_flag : STD_LOGIC;
  signal tx_flag_i_1_n_0 : STD_LOGIC;
  signal tx_flag_i_2_n_0 : STD_LOGIC;
  signal tx_frame_out : STD_LOGIC;
  signal tx_frame_shift : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \tx_frame_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ODDR_inst_clock_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_inst_clock_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_inst_frame_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_inst_frame_S_UNCONNECTED : STD_LOGIC;
  signal \NLW_genblk1[0].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[0].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[1].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[1].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[2].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[2].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[3].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[3].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[4].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[4].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[5].ODDR_inst_clock_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[5].ODDR_inst_clock_S_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_clock_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_clock_inst : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock_inst : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_frame_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_frame_inst : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_frame_inst : label is "OBUFDS";
  attribute BOX_TYPE of ODDR_inst_clock : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR_inst_clock : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_inst_clock : label is "TRUE";
  attribute BOX_TYPE of ODDR_inst_frame : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR_inst_frame : label is "MLO";
  attribute \__SRVAL\ of ODDR_inst_frame : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_data[0]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE of \genblk1[0].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[0].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[0].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[1].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[1].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[1].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[2].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[2].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[2].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[3].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[3].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[3].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[4].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[4].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[4].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[5].ODDR_inst_clock\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[5].ODDR_inst_clock\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[5].ODDR_inst_clock\ : label is "TRUE";
  attribute BOX_TYPE of \genblk2[0].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[0].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[0].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute BOX_TYPE of \genblk2[1].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[1].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[1].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute BOX_TYPE of \genblk2[2].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[2].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[2].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute BOX_TYPE of \genblk2[3].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[3].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[3].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute BOX_TYPE of \genblk2[4].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[4].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[4].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute BOX_TYPE of \genblk2[5].OBUFDS_frame_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \genblk2[5].OBUFDS_frame_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \genblk2[5].OBUFDS_frame_inst\ : label is "OBUFDS";
  attribute SOFT_HLUTNM of \tx_data_i[5]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tx_flag_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tx_flag_i_2 : label is "soft_lutpair1";
begin
OBUFDS_clock_inst: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_clk_out,
      O => tx_clk_out_p,
      OB => tx_clk_out_n
    );
OBUFDS_frame_inst: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_frame_out,
      O => tx_frame_out_p,
      OB => tx_frame_out_n
    );
ODDR_inst_clock: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => tx_clk_out,
      R => NLW_ODDR_inst_clock_R_UNCONNECTED,
      S => NLW_ODDR_inst_clock_S_UNCONNECTED
    );
ODDR_inst_frame: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => tx_frame_shift(1),
      D2 => tx_frame_shift(1),
      Q => tx_frame_out,
      R => NLW_ODDR_inst_frame_R_UNCONNECTED,
      S => NLW_ODDR_inst_frame_S_UNCONNECTED
    );
\cnt_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => tx_flag,
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => rst,
      O => \cnt_data[0]_i_1_n_0\
    );
\cnt_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006C4C6C6C"
    )
        port map (
      I0 => tx_flag,
      I1 => p_0_in0,
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => mode_1r1t,
      I5 => rst,
      O => \cnt_data[1]_i_1_n_0\
    );
\cnt_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F807F00"
    )
        port map (
      I0 => tx_flag,
      I1 => p_0_in0,
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => mode_1r1t,
      I5 => rst,
      O => \cnt_data[2]_i_1_n_0\
    );
\cnt_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \cnt_data[0]_i_1_n_0\,
      Q => \cnt_data_reg_n_0_[0]\,
      R => '0'
    );
\cnt_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \cnt_data[1]_i_1_n_0\,
      Q => p_0_in0,
      R => '0'
    );
\cnt_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \cnt_data[2]_i_1_n_0\,
      Q => \cnt_data_reg_n_0_[2]\,
      R => '0'
    );
\dac_data_i0_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(0),
      Q => dac_data_i0_r(0),
      R => rst
    );
\dac_data_i0_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(10),
      Q => dac_data_i0_r(10),
      R => rst
    );
\dac_data_i0_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(11),
      Q => dac_data_i0_r(11),
      R => rst
    );
\dac_data_i0_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(1),
      Q => dac_data_i0_r(1),
      R => rst
    );
\dac_data_i0_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(2),
      Q => dac_data_i0_r(2),
      R => rst
    );
\dac_data_i0_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(3),
      Q => dac_data_i0_r(3),
      R => rst
    );
\dac_data_i0_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(4),
      Q => dac_data_i0_r(4),
      R => rst
    );
\dac_data_i0_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(5),
      Q => dac_data_i0_r(5),
      R => rst
    );
\dac_data_i0_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(6),
      Q => dac_data_i0_r(6),
      R => rst
    );
\dac_data_i0_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(7),
      Q => dac_data_i0_r(7),
      R => rst
    );
\dac_data_i0_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(8),
      Q => dac_data_i0_r(8),
      R => rst
    );
\dac_data_i0_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i0(9),
      Q => dac_data_i0_r(9),
      R => rst
    );
\dac_data_i1_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(0),
      Q => dac_data_i1_r(0),
      R => rst
    );
\dac_data_i1_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(10),
      Q => dac_data_i1_r(10),
      R => rst
    );
\dac_data_i1_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(11),
      Q => dac_data_i1_r(11),
      R => rst
    );
\dac_data_i1_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(1),
      Q => dac_data_i1_r(1),
      R => rst
    );
\dac_data_i1_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(2),
      Q => dac_data_i1_r(2),
      R => rst
    );
\dac_data_i1_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(3),
      Q => dac_data_i1_r(3),
      R => rst
    );
\dac_data_i1_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(4),
      Q => dac_data_i1_r(4),
      R => rst
    );
\dac_data_i1_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(5),
      Q => dac_data_i1_r(5),
      R => rst
    );
\dac_data_i1_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(6),
      Q => dac_data_i1_r(6),
      R => rst
    );
\dac_data_i1_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(7),
      Q => dac_data_i1_r(7),
      R => rst
    );
\dac_data_i1_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(8),
      Q => dac_data_i1_r(8),
      R => rst
    );
\dac_data_i1_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_i1(9),
      Q => dac_data_i1_r(9),
      R => rst
    );
\dac_data_q0_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(0),
      Q => dac_data_q0_r(0),
      R => rst
    );
\dac_data_q0_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(10),
      Q => dac_data_q0_r(10),
      R => rst
    );
\dac_data_q0_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(11),
      Q => dac_data_q0_r(11),
      R => rst
    );
\dac_data_q0_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(1),
      Q => dac_data_q0_r(1),
      R => rst
    );
\dac_data_q0_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(2),
      Q => dac_data_q0_r(2),
      R => rst
    );
\dac_data_q0_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(3),
      Q => dac_data_q0_r(3),
      R => rst
    );
\dac_data_q0_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(4),
      Q => dac_data_q0_r(4),
      R => rst
    );
\dac_data_q0_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(5),
      Q => dac_data_q0_r(5),
      R => rst
    );
\dac_data_q0_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(6),
      Q => dac_data_q0_r(6),
      R => rst
    );
\dac_data_q0_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(7),
      Q => dac_data_q0_r(7),
      R => rst
    );
\dac_data_q0_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(8),
      Q => dac_data_q0_r(8),
      R => rst
    );
\dac_data_q0_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q0(9),
      Q => dac_data_q0_r(9),
      R => rst
    );
\dac_data_q1_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(0),
      Q => dac_data_q1_r(0),
      R => rst
    );
\dac_data_q1_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(10),
      Q => dac_data_q1_r(10),
      R => rst
    );
\dac_data_q1_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(11),
      Q => dac_data_q1_r(11),
      R => rst
    );
\dac_data_q1_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(1),
      Q => dac_data_q1_r(1),
      R => rst
    );
\dac_data_q1_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(2),
      Q => dac_data_q1_r(2),
      R => rst
    );
\dac_data_q1_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(3),
      Q => dac_data_q1_r(3),
      R => rst
    );
\dac_data_q1_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(4),
      Q => dac_data_q1_r(4),
      R => rst
    );
\dac_data_q1_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(5),
      Q => dac_data_q1_r(5),
      R => rst
    );
\dac_data_q1_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(6),
      Q => dac_data_q1_r(6),
      R => rst
    );
\dac_data_q1_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(7),
      Q => dac_data_q1_r(7),
      R => rst
    );
\dac_data_q1_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(8),
      Q => dac_data_q1_r(8),
      R => rst
    );
\dac_data_q1_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => dac_valid,
      D => dac_data_q1(9),
      Q => dac_data_q1_r(9),
      R => rst
    );
\genblk1[0].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[0]\,
      D2 => \tx_data_q_reg_n_0_[0]\,
      Q => p_5_out,
      R => \NLW_genblk1[0].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[0].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk1[1].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[1]\,
      D2 => \tx_data_q_reg_n_0_[1]\,
      Q => p_4_out,
      R => \NLW_genblk1[1].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[1].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk1[2].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[2]\,
      D2 => \tx_data_q_reg_n_0_[2]\,
      Q => p_3_out,
      R => \NLW_genblk1[2].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[2].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk1[3].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[3]\,
      D2 => \tx_data_q_reg_n_0_[3]\,
      Q => p_2_out,
      R => \NLW_genblk1[3].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[3].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk1[4].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[4]\,
      D2 => \tx_data_q_reg_n_0_[4]\,
      Q => p_1_out,
      R => \NLW_genblk1[4].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[4].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk1[5].ODDR_inst_clock\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => fb_clk,
      CE => '1',
      D1 => \tx_data_i_reg_n_0_[5]\,
      D2 => \tx_data_q_reg_n_0_[5]\,
      Q => p_0_out,
      R => \NLW_genblk1[5].ODDR_inst_clock_R_UNCONNECTED\,
      S => \NLW_genblk1[5].ODDR_inst_clock_S_UNCONNECTED\
    );
\genblk2[0].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_5_out,
      O => tx_data_out_p(0),
      OB => tx_data_out_n(0)
    );
\genblk2[1].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_4_out,
      O => tx_data_out_p(1),
      OB => tx_data_out_n(1)
    );
\genblk2[2].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_3_out,
      O => tx_data_out_p(2),
      OB => tx_data_out_n(2)
    );
\genblk2[3].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_2_out,
      O => tx_data_out_p(3),
      OB => tx_data_out_n(3)
    );
\genblk2[4].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_1_out,
      O => tx_data_out_p(4),
      OB => tx_data_out_n(4)
    );
\genblk2[5].OBUFDS_frame_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => p_0_out,
      O => tx_data_out_p(5),
      OB => tx_data_out_n(5)
    );
\tx_data_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[0]_i_2_n_0\,
      I1 => dac_data_i1_r(0),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(6),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[0]_i_1_n_0\
    );
\tx_data_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(6),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(0),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[0]_i_2_n_0\
    );
\tx_data_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[1]_i_2_n_0\,
      I1 => dac_data_i1_r(1),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(7),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[1]_i_1_n_0\
    );
\tx_data_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(7),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(1),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[1]_i_2_n_0\
    );
\tx_data_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[2]_i_2_n_0\,
      I1 => dac_data_i1_r(2),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(8),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[2]_i_1_n_0\
    );
\tx_data_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(8),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(2),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[2]_i_2_n_0\
    );
\tx_data_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[3]_i_2_n_0\,
      I1 => dac_data_i1_r(3),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(9),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[3]_i_1_n_0\
    );
\tx_data_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(9),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(3),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[3]_i_2_n_0\
    );
\tx_data_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[4]_i_2_n_0\,
      I1 => dac_data_i1_r(4),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(10),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[4]_i_1_n_0\
    );
\tx_data_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(10),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(4),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[4]_i_2_n_0\
    );
\tx_data_i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => tx_flag,
      O => tx_data_q
    );
\tx_data_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_i[5]_i_3_n_0\,
      I1 => dac_data_i1_r(5),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_i1_r(11),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_i[5]_i_2_n_0\
    );
\tx_data_i[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_i0_r(11),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_i0_r(5),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_i[5]_i_3_n_0\
    );
\tx_data_i[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \cnt_data_reg_n_0_[2]\,
      I1 => mode_1r1t,
      I2 => tx_flag,
      O => \tx_data_i[5]_i_4_n_0\
    );
\tx_data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[0]_i_1_n_0\,
      Q => \tx_data_i_reg_n_0_[0]\,
      R => tx_data_q
    );
\tx_data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[1]_i_1_n_0\,
      Q => \tx_data_i_reg_n_0_[1]\,
      R => tx_data_q
    );
\tx_data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[2]_i_1_n_0\,
      Q => \tx_data_i_reg_n_0_[2]\,
      R => tx_data_q
    );
\tx_data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[3]_i_1_n_0\,
      Q => \tx_data_i_reg_n_0_[3]\,
      R => tx_data_q
    );
\tx_data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[4]_i_1_n_0\,
      Q => \tx_data_i_reg_n_0_[4]\,
      R => tx_data_q
    );
\tx_data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_i[5]_i_2_n_0\,
      Q => \tx_data_i_reg_n_0_[5]\,
      R => tx_data_q
    );
\tx_data_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[0]_i_2_n_0\,
      I1 => dac_data_q1_r(0),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(6),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[0]_i_1_n_0\
    );
\tx_data_q[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(6),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(0),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[0]_i_2_n_0\
    );
\tx_data_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[1]_i_2_n_0\,
      I1 => dac_data_q1_r(1),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(7),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[1]_i_1_n_0\
    );
\tx_data_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(7),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(1),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[1]_i_2_n_0\
    );
\tx_data_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[2]_i_2_n_0\,
      I1 => dac_data_q1_r(2),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(8),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[2]_i_1_n_0\
    );
\tx_data_q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(8),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(2),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[2]_i_2_n_0\
    );
\tx_data_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[3]_i_2_n_0\,
      I1 => dac_data_q1_r(3),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(9),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[3]_i_1_n_0\
    );
\tx_data_q[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(9),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(3),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[3]_i_2_n_0\
    );
\tx_data_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[4]_i_2_n_0\,
      I1 => dac_data_q1_r(4),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(10),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[4]_i_1_n_0\
    );
\tx_data_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(10),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(4),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[4]_i_2_n_0\
    );
\tx_data_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \tx_data_q[5]_i_2_n_0\,
      I1 => dac_data_q1_r(5),
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      I4 => dac_data_q1_r(11),
      I5 => \tx_data_i[5]_i_4_n_0\,
      O => \tx_data_q[5]_i_1_n_0\
    );
\tx_data_q[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => dac_data_q0_r(11),
      I1 => \cnt_data_reg_n_0_[0]\,
      I2 => dac_data_q0_r(5),
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => p_0_in0,
      O => \tx_data_q[5]_i_2_n_0\
    );
\tx_data_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[0]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[0]\,
      R => tx_data_q
    );
\tx_data_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[1]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[1]\,
      R => tx_data_q
    );
\tx_data_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[2]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[2]\,
      R => tx_data_q
    );
\tx_data_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[3]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[3]\,
      R => tx_data_q
    );
\tx_data_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[4]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[4]\,
      R => tx_data_q
    );
\tx_data_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_data_q[5]_i_1_n_0\,
      Q => \tx_data_q_reg_n_0_[5]\,
      R => tx_data_q
    );
tx_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => tx_flag,
      I1 => tx_flag_i_2_n_0,
      I2 => dac_valid,
      I3 => rst,
      O => tx_flag_i_1_n_0
    );
tx_flag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFDF"
    )
        port map (
      I0 => mode_1r1t,
      I1 => \cnt_data_reg_n_0_[2]\,
      I2 => \cnt_data_reg_n_0_[0]\,
      I3 => p_0_in0,
      O => tx_flag_i_2_n_0
    );
tx_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => tx_flag_i_1_n_0,
      Q => tx_flag,
      R => '0'
    );
\tx_frame_shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000700000000"
    )
        port map (
      I0 => \cnt_data_reg_n_0_[0]\,
      I1 => mode_1r1t,
      I2 => p_0_in0,
      I3 => \cnt_data_reg_n_0_[2]\,
      I4 => rst,
      I5 => tx_flag,
      O => \tx_frame_shift[1]_i_1_n_0\
    );
\tx_frame_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fb_clk,
      CE => '1',
      D => \tx_frame_shift[1]_i_1_n_0\,
      Q => tx_frame_shift(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9363_lvds_if_0_0_ad9363_lvds_if is
  port (
    data_clk : out STD_LOGIC;
    tx_clk_out_p : out STD_LOGIC;
    tx_clk_out_n : out STD_LOGIC;
    tx_frame_out_p : out STD_LOGIC;
    tx_frame_out_n : out STD_LOGIC;
    tx_data_out_p : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_data_out_n : out STD_LOGIC_VECTOR ( 5 downto 0 );
    adc_data_i0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_i1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_status : out STD_LOGIC;
    adc_valid : out STD_LOGIC;
    mode_1r1t : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_clk_in_p : in STD_LOGIC;
    rx_clk_in_n : in STD_LOGIC;
    rx_frame_in_p : in STD_LOGIC;
    rx_frame_in_n : in STD_LOGIC;
    data_clk_ce : in STD_LOGIC;
    delay_load_en : in STD_LOGIC;
    delay_value : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_data_in_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rx_data_in_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    fb_clk : in STD_LOGIC;
    dac_valid : in STD_LOGIC;
    dac_data_i0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_i1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q1 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if : entity is "ad9363_lvds_if";
end design_1_ad9363_lvds_if_0_0_ad9363_lvds_if;

architecture STRUCTURE of design_1_ad9363_lvds_if_0_0_ad9363_lvds_if is
begin
u_ad9363_lvds_if_rx: entity work.design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_rx
     port map (
      adc_data_i0(11 downto 0) => adc_data_i0(11 downto 0),
      adc_data_i1(11 downto 0) => adc_data_i1(11 downto 0),
      adc_data_q0(11 downto 0) => adc_data_q0(11 downto 0),
      adc_data_q1(11 downto 0) => adc_data_q1(11 downto 0),
      adc_valid => adc_valid,
      data_clk => data_clk,
      data_clk_ce => data_clk_ce,
      delay_load_en => delay_load_en,
      delay_value(4 downto 0) => delay_value(4 downto 0),
      mode_1r1t => mode_1r1t,
      ref_clk => ref_clk,
      rst => rst,
      rx_clk_in_n => rx_clk_in_n,
      rx_clk_in_p => rx_clk_in_p,
      rx_data_in_n(5 downto 0) => rx_data_in_n(5 downto 0),
      rx_data_in_p(5 downto 0) => rx_data_in_p(5 downto 0),
      rx_frame_in_n => rx_frame_in_n,
      rx_frame_in_p => rx_frame_in_p,
      rx_status => rx_status
    );
u_ad9363_lvds_if_tx: entity work.design_1_ad9363_lvds_if_0_0_ad9363_lvds_if_tx
     port map (
      dac_data_i0(11 downto 0) => dac_data_i0(11 downto 0),
      dac_data_i1(11 downto 0) => dac_data_i1(11 downto 0),
      dac_data_q0(11 downto 0) => dac_data_q0(11 downto 0),
      dac_data_q1(11 downto 0) => dac_data_q1(11 downto 0),
      dac_valid => dac_valid,
      fb_clk => fb_clk,
      mode_1r1t => mode_1r1t,
      rst => rst,
      tx_clk_out_n => tx_clk_out_n,
      tx_clk_out_p => tx_clk_out_p,
      tx_data_out_n(5 downto 0) => tx_data_out_n(5 downto 0),
      tx_data_out_p(5 downto 0) => tx_data_out_p(5 downto 0),
      tx_frame_out_n => tx_frame_out_n,
      tx_frame_out_p => tx_frame_out_p
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9363_lvds_if_0_0 is
  port (
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_clk_in_p : in STD_LOGIC;
    rx_clk_in_n : in STD_LOGIC;
    rx_frame_in_p : in STD_LOGIC;
    rx_frame_in_n : in STD_LOGIC;
    rx_data_in_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rx_data_in_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_clk_out_p : out STD_LOGIC;
    tx_clk_out_n : out STD_LOGIC;
    tx_frame_out_p : out STD_LOGIC;
    tx_frame_out_n : out STD_LOGIC;
    tx_data_out_p : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_data_out_n : out STD_LOGIC_VECTOR ( 5 downto 0 );
    adc_valid : out STD_LOGIC;
    adc_data_i0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_i1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_status : out STD_LOGIC;
    dac_valid : in STD_LOGIC;
    dac_data_i0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_i1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mode_1r1t : in STD_LOGIC;
    data_clk : out STD_LOGIC;
    fb_clk : in STD_LOGIC;
    delay_value : in STD_LOGIC_VECTOR ( 4 downto 0 );
    delay_load_en : in STD_LOGIC;
    data_clk_ce : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ad9363_lvds_if_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ad9363_lvds_if_0_0 : entity is "design_1_ad9363_lvds_if_0_0,ad9363_lvds_if,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ad9363_lvds_if_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ad9363_lvds_if_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ad9363_lvds_if_0_0 : entity is "ad9363_lvds_if,Vivado 2019.2";
end design_1_ad9363_lvds_if_0_0;

architecture STRUCTURE of design_1_ad9363_lvds_if_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data_clk : signal is "xilinx.com:signal:clock:1.0 data_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of data_clk : signal is "XIL_INTERFACENAME data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ad9363_lvds_if_0_0_data_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fb_clk : signal is "xilinx.com:signal:clock:1.0 fb_clk CLK";
  attribute X_INTERFACE_PARAMETER of fb_clk : signal is "XIL_INTERFACENAME fb_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ad9363_lvds_if_0_0_data_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ref_clk : signal is "xilinx.com:signal:clock:1.0 ref_clk CLK";
  attribute X_INTERFACE_PARAMETER of ref_clk : signal is "XIL_INTERFACENAME ref_clk, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.design_1_ad9363_lvds_if_0_0_ad9363_lvds_if
     port map (
      adc_data_i0(11 downto 0) => adc_data_i0(11 downto 0),
      adc_data_i1(11 downto 0) => adc_data_i1(11 downto 0),
      adc_data_q0(11 downto 0) => adc_data_q0(11 downto 0),
      adc_data_q1(11 downto 0) => adc_data_q1(11 downto 0),
      adc_valid => adc_valid,
      dac_data_i0(11 downto 0) => dac_data_i0(11 downto 0),
      dac_data_i1(11 downto 0) => dac_data_i1(11 downto 0),
      dac_data_q0(11 downto 0) => dac_data_q0(11 downto 0),
      dac_data_q1(11 downto 0) => dac_data_q1(11 downto 0),
      dac_valid => dac_valid,
      data_clk => data_clk,
      data_clk_ce => data_clk_ce,
      delay_load_en => delay_load_en,
      delay_value(4 downto 0) => delay_value(4 downto 0),
      fb_clk => fb_clk,
      mode_1r1t => mode_1r1t,
      ref_clk => ref_clk,
      rst => rst,
      rx_clk_in_n => rx_clk_in_n,
      rx_clk_in_p => rx_clk_in_p,
      rx_data_in_n(5 downto 0) => rx_data_in_n(5 downto 0),
      rx_data_in_p(5 downto 0) => rx_data_in_p(5 downto 0),
      rx_frame_in_n => rx_frame_in_n,
      rx_frame_in_p => rx_frame_in_p,
      rx_status => rx_status,
      tx_clk_out_n => tx_clk_out_n,
      tx_clk_out_p => tx_clk_out_p,
      tx_data_out_n(5 downto 0) => tx_data_out_n(5 downto 0),
      tx_data_out_p(5 downto 0) => tx_data_out_p(5 downto 0),
      tx_frame_out_n => tx_frame_out_n,
      tx_frame_out_p => tx_frame_out_p
    );
end STRUCTURE;
