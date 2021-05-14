// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:ad9363_test:1.0
// IP Revision: 9

(* X_CORE_INFO = "ad9363_test,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "design_1_ad9363_test_0_0,ad9363_test,{}" *)
(* CORE_GENERATION_INFO = "design_1_ad9363_test_0_0,ad9363_test,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ad9363_test,x_ipVersion=1.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,PHASE_INCREMENT=0x0020C49B}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ad9363_test_0_0 (
  clk,
  rst,
  mode_1r1t,
  rx_status,
  adc_valid,
  adc_data_i0,
  adc_data_q0,
  adc_data_i1,
  adc_data_q1,
  phase_inc,
  dds_en,
  dac_valid,
  dac_data_i0,
  dac_data_q0,
  dac_data_i1,
  dac_data_q1
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ad9363_lvds_if_0_0_data_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire mode_1r1t;
input wire rx_status;
input wire adc_valid;
input wire [11 : 0] adc_data_i0;
input wire [11 : 0] adc_data_q0;
input wire [11 : 0] adc_data_i1;
input wire [11 : 0] adc_data_q1;
input wire [31 : 0] phase_inc;
input wire dds_en;
output wire dac_valid;
output wire [11 : 0] dac_data_i0;
output wire [11 : 0] dac_data_q0;
output wire [11 : 0] dac_data_i1;
output wire [11 : 0] dac_data_q1;

  ad9363_test #(
    .PHASE_INCREMENT('H0020C49B)
  ) inst (
    .clk(clk),
    .rst(rst),
    .mode_1r1t(mode_1r1t),
    .rx_status(rx_status),
    .adc_valid(adc_valid),
    .adc_data_i0(adc_data_i0),
    .adc_data_q0(adc_data_q0),
    .adc_data_i1(adc_data_i1),
    .adc_data_q1(adc_data_q1),
    .phase_inc(phase_inc),
    .dds_en(dds_en),
    .dac_valid(dac_valid),
    .dac_data_i0(dac_data_i0),
    .dac_data_q0(dac_data_q0),
    .dac_data_i1(dac_data_i1),
    .dac_data_q1(dac_data_q1)
  );
endmodule
