// -----------------------------------------------------------------------------
// Copyright (c) 2014-2020 All rights reserved
// -----------------------------------------------------------------------------
// Author 	 : WCC 1530604142@qq.com
// File   	 : ad9363_test.v
// Create 	 : 2020-11-23 09:16:52
// Revise 	 : 2020-11-23 09:16:52
// Editor 	 : sublime text3, tab size (4)
// Functions : ad9363 loop test module, generate sin wave, and recieve data from 
// 			   ad9363
// -----------------------------------------------------------------------------
module ad9363_test (
	input 	wire 		clk			,// Clock
	input 	wire 		rst			,// Asynchronous reset active high
	input 	wire  		mode_1r1t 	,
	input 	wire 		rx_status 	,
	input 	wire 		adc_valid	,
	input 	wire [11:0]	adc_data_i0	,
	input 	wire [11:0]	adc_data_q0	,
	input 	wire [11:0]	adc_data_i1	,
	input 	wire [11:0]	adc_data_q1	,
	input 	wire [31:0]	phase_inc 	,
	input 	wire 		dds_en 		,
	output 	reg 		dac_valid	,
	output	reg [11:0]	dac_data_i0	,
	output	reg [11:0]	dac_data_q0	,
	output	reg [11:0]	dac_data_i1	,
	output	reg [11:0]	dac_data_q1	
);

//====================================================
//parameters define
//====================================================
parameter 	PHASE_INCREMENT = 32'h20C49B;

//====================================================
//internal signals and registers
//====================================================
wire 			phase_vld 	;
reg 	[31:0]	phase_inc_r	;
reg   	[2:0] 	cnt_data 	;
wire 			dds_vld 	;
wire 	[31:0]	dds_data	;


always @(posedge clk) begin
	phase_inc_r <= phase_inc;
end

assign phase_vld = phase_inc_r != phase_inc;

always @(posedge clk ) begin
	if (rst==1'b1) begin
		dac_valid <= 1'b0;
	end
	else if (mode_1r1t == 1'b1 && cnt_data == 'd1) begin
		dac_valid <= 1'b1;
	end
	else if (mode_1r1t == 1'b0 && cnt_data == 'd3) begin
		dac_valid <= 1'b1;
	end
	else begin
	   dac_valid <= 'd0;
	end
end

//----------------cnt_data------------------
always @(posedge clk ) begin
	if (rst==1'b1) begin
		cnt_data <= 'd0;
	end
	// 2r2t mode
	else if (dds_vld == 1'b1 && dds_en == 1'b1) begin
		if (mode_1r1t == 1'b0) begin
			if (cnt_data == 'd3 ) begin
				cnt_data <= 'd0;
			end
			else begin
				cnt_data <= cnt_data + 1'b1;
			end
		end		
		// 1r1t mode
		else if (mode_1r1t == 1'b1) begin
			if (cnt_data == 'd1) begin
				cnt_data <= 'd0;
			end
			else  begin
				cnt_data <= cnt_data + 1'b1;
			end
		end
	end
	else begin
		cnt_data <= 'd0;
	end
end

always @(posedge clk ) begin
	if (rst==1'b1) begin
		dac_data_i0 <= 'd0;
		dac_data_q0 <= 'd0;
	end
	else if (dac_valid == 1'b0 && dds_vld == 1'b1 && dds_en == 1'b1) begin
		dac_data_i0 <= dds_data[27:16];
		dac_data_q0 <= dds_data[11:0];
		dac_data_i1 <= dds_data[27:16];
		dac_data_q1 <= dds_data[11:0];
	end
end





dds_compiler_0 inst_dds (
  	.aclk(clk),                       	// input wire aclk
  	.s_axis_config_tvalid(phase_vld), 	// input wire s_axis_config_tvalid
  	.s_axis_config_tdata(phase_inc), 	// input wire [31 : 0] s_axis_config_tdata
  	.m_axis_data_tvalid(dds_vld),		// output wire m_axis_data_tvalid
  	.m_axis_data_tdata(dds_data)   		// output wire [31 : 0] m_axis_data_tdata
);

wire [127:0]	probe0;

assign probe0 = {
	adc_valid,
	rx_status,
	dds_en,
	dds_vld,
	adc_data_q0,
	adc_data_i0,
	adc_data_q1,
	adc_data_i1,
	dac_valid,
	dac_data_q1,
	dac_data_i1,
	dac_data_q0,
	dac_data_i0
};


ila_dds inst_dds_ila (
	.clk(clk), // input wire clk


	.probe0(probe0) // input wire [63:0] probe0
);

endmodule