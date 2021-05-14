-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May  8 16:03:26 2021
-- Host        : DESKTOP-8PAFVVI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/ad936x_lvds_loop.srcs/sources_1/bd/design_1/ip/design_1_ad9363_test_0_0/design_1_ad9363_test_0_0_stub.vhdl
-- Design      : design_1_ad9363_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ad9363_test_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mode_1r1t : in STD_LOGIC;
    rx_status : in STD_LOGIC;
    adc_valid : in STD_LOGIC;
    adc_data_i0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_i1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_q1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    phase_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_en : in STD_LOGIC;
    dac_valid : out STD_LOGIC;
    dac_data_i0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_i1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_data_q1 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end design_1_ad9363_test_0_0;

architecture stub of design_1_ad9363_test_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,mode_1r1t,rx_status,adc_valid,adc_data_i0[11:0],adc_data_q0[11:0],adc_data_i1[11:0],adc_data_q1[11:0],phase_inc[31:0],dds_en,dac_valid,dac_data_i0[11:0],dac_data_q0[11:0],dac_data_i1[11:0],dac_data_q1[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad9363_test,Vivado 2019.2";
begin
end;
