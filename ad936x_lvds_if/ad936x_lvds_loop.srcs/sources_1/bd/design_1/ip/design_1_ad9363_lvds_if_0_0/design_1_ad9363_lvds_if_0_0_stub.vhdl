-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May  8 14:48:53 2021
-- Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_lvds_if_0_0/design_1_ad9363_lvds_if_0_0_stub.vhdl
-- Design      : design_1_ad9363_lvds_if_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ad9363_lvds_if_0_0 is
  Port ( 
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

end design_1_ad9363_lvds_if_0_0;

architecture stub of design_1_ad9363_lvds_if_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ref_clk,rst,rx_clk_in_p,rx_clk_in_n,rx_frame_in_p,rx_frame_in_n,rx_data_in_p[5:0],rx_data_in_n[5:0],tx_clk_out_p,tx_clk_out_n,tx_frame_out_p,tx_frame_out_n,tx_data_out_p[5:0],tx_data_out_n[5:0],adc_valid,adc_data_i0[11:0],adc_data_q0[11:0],adc_data_i1[11:0],adc_data_q1[11:0],rx_status,dac_valid,dac_data_i0[11:0],dac_data_q0[11:0],dac_data_i1[11:0],dac_data_q1[11:0],mode_1r1t,data_clk,fb_clk,delay_value[4:0],delay_load_en,data_clk_ce";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad9363_lvds_if,Vivado 2019.2";
begin
end;
