// -----------------------------------------------------------------------------
// Copyright (c) 2019-2021 All rights reserved
// -----------------------------------------------------------------------------
// Author 	 : WCC 1530604142@qq.com
// File   	 : ad936x_lvds_if_top
// Create 	 : 2021-05-06
// Revise 	 : 2021-
// Editor 	 : Vscode, tab size (4)
// Functions : top module of ad936x interface
// 			   
// -----------------------------------------------------------------------------
`timescale 1ns / 1ps
module ad936x_lvds_if_top(
    //ps io
    inout   wire [14:0] DDR_addr,
    inout   wire [2:0]  DDR_ba,
    inout   wire        DDR_cas_n,
    inout   wire        DDR_ck_n,
    inout   wire        DDR_ck_p,
    inout   wire        DDR_cke,
    inout   wire        DDR_cs_n,
    inout   wire [3:0]  DDR_dm,
    inout   wire [31:0] DDR_dq,
    inout   wire [3:0]  DDR_dqs_n,
    inout   wire [3:0]  DDR_dqs_p,
    inout   wire        DDR_odt,
    inout   wire        DDR_ras_n,
    inout   wire        DDR_reset_n,
    inout   wire        DDR_we_n,
    inout   wire        FIXED_IO_ddr_vrn,
    inout   wire        FIXED_IO_ddr_vrp,
    inout   wire [53:0] FIXED_IO_mio,
    inout   wire        FIXED_IO_ps_clk,
    inout   wire        FIXED_IO_ps_porb,
    inout   wire        FIXED_IO_ps_srstb,

    // ad936x rx interface
    input   wire        rx_clk_in_n,
    input   wire        rx_clk_in_p,
    input   wire [5:0]  rx_data_in_n,
    input   wire [5:0]  rx_data_in_p,
    input   wire        rx_frame_in_n,
    input   wire        rx_frame_in_p,

    // ad936x control interface
    output  wire        spi_clk,
    output  wire        spi_csn,
    input   wire        spi_miso,
    output  wire        spi_mosi,
    output  wire        sync_in,
    output 	wire		en_agc,    
	output 	wire		enable,    
	output 	wire		resetb,
	output 	wire		txnrx ,  
	output  wire [3:0] 	ctrl_in,
    output  wire        bandsel_rx1_a,
    output  wire        bandsel_rx1_b,
    output  wire        bandsel_rx2_a,
    output  wire        bandsel_rx2_b,
    output  wire        bandsel_tx1_a,
    output  wire        bandsel_tx1_b,
    output  wire        bandsel_tx2_a,
    output  wire        bandsel_tx2_b,
    // ad936x tx interface 
    output  wire        tx_clk_out_n,
    output  wire        tx_clk_out_p,
    output  wire  [5:0] tx_data_out_n,
    output  wire  [5:0] tx_data_out_p,
    output  wire        tx_frame_out_n,
    output  wire        tx_frame_out_p
    );

wire [31:0]gpio;

assign txnrx		=	gpio[2];
assign enable		=	gpio[3];
assign resetb		=	gpio[4];
assign sync_in      =   gpio[5];
assign en_agc		=	gpio[6];
assign ctrl_in		=	gpio[10:7];
assign bandsel_rx1_a =  gpio[11];
assign bandsel_rx1_b =  gpio[12];
assign bandsel_rx2_a =  gpio[13];
assign bandsel_rx2_b =  gpio[14];
assign bandsel_tx1_a =  gpio[15];
assign bandsel_tx1_b =  gpio[16];
assign bandsel_tx2_a =  gpio[17];
assign bandsel_tx2_b =  gpio[18];



design_1_wrapper u_design_1_wrapper(
    .DDR_addr          (DDR_addr          ),
    .DDR_ba            (DDR_ba            ),
    .DDR_cas_n         (DDR_cas_n         ),
    .DDR_ck_n          (DDR_ck_n          ),
    .DDR_ck_p          (DDR_ck_p          ),
    .DDR_cke           (DDR_cke           ),
    .DDR_cs_n          (DDR_cs_n          ),
    .DDR_dm            (DDR_dm            ),
    .DDR_dq            (DDR_dq            ),
    .DDR_dqs_n         (DDR_dqs_n         ),
    .DDR_dqs_p         (DDR_dqs_p         ),
    .DDR_odt           (DDR_odt           ),
    .DDR_ras_n         (DDR_ras_n         ),
    .DDR_reset_n       (DDR_reset_n       ),
    .DDR_we_n          (DDR_we_n          ),
    .FIXED_IO_ddr_vrn  (FIXED_IO_ddr_vrn  ),
    .FIXED_IO_ddr_vrp  (FIXED_IO_ddr_vrp  ),
    .FIXED_IO_mio      (FIXED_IO_mio      ),
    .FIXED_IO_ps_clk   (FIXED_IO_ps_clk   ),
    .FIXED_IO_ps_porb  (FIXED_IO_ps_porb  ),
    .FIXED_IO_ps_srstb (FIXED_IO_ps_srstb ),
    .gpio              (gpio              ),
    .rx_clk_in_n       (rx_clk_in_n       ),
    .rx_clk_in_p       (rx_clk_in_p       ),
    .rx_data_in_n      (rx_data_in_n      ),
    .rx_data_in_p      (rx_data_in_p      ),
    .rx_frame_in_n     (rx_frame_in_n     ),
    .rx_frame_in_p     (rx_frame_in_p     ),
    .spi_clk           (spi_clk           ),
    .spi_csn           (spi_csn           ),
    .spi_miso          (spi_miso          ),
    .spi_mosi          (spi_mosi          ),
    .tx_clk_out_n      (tx_clk_out_n      ),
    .tx_clk_out_p      (tx_clk_out_p      ),
    .tx_data_out_n     (tx_data_out_n     ),
    .tx_data_out_p     (tx_data_out_p     ),
    .tx_frame_out_n    (tx_frame_out_n    ),
    .tx_frame_out_p    (tx_frame_out_p    )
);



endmodule
