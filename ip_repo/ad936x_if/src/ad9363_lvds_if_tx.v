// -----------------------------------------------------------------------------
// Copyright (c) 2019-2021 All rights reserved
// -----------------------------------------------------------------------------
// Author 	 : WCC 1530604142@qq.com
// File   	 : ad9363_lvds_if_tx
// Create 	 : 2021-04-30
// Revise 	 : 2021-
// Editor 	 : Vscode, tab size (4)
// Functions : This module Transmit data to ad9363 throgh phy interface.Get the source 
// 			   data from user logic
// 			   
// -----------------------------------------------------------------------------

module ad9363_lvds_if_tx(
	input 	wire 			fb_clk		,//drive user logic
	input 	wire 			rst 	 	,
	//====================================================
  	//ad9363 receive  phy interface 
  	//====================================================
  	output 	wire 			tx_clk_out_p 	,
	output 	wire 			tx_clk_out_n 	,
  	output 	wire 			tx_frame_out_p	,
	output 	wire 			tx_frame_out_n	,
  	output 	wire  [5:0]		tx_data_out_p 	,
	output 	wire  [5:0]		tx_data_out_n 	,
  	//====================================================
	//ad9363 transmitter user logic interface 
	//====================================================
	input  	wire   			mode_1r1t 	,
	input 	wire 			dac_valid	,
	input 	wire 	[11:0]	dac_data_i0	,
	input 	wire 	[11:0]	dac_data_q0	,
	input 	wire 	[11:0]	dac_data_i1	,
	input 	wire 	[11:0]	dac_data_q1	
	);

//====================================================
//internal signal and registers
//====================================================
reg  			tx_flag 			;
reg  	[2:0]	cnt_data 			;

reg  	[11:0]	dac_data_i0_r 		;
reg  	[11:0]	dac_data_q0_r 		;
reg  	[11:0]	dac_data_i1_r 		;
reg  	[11:0]	dac_data_q1_r 		;

reg  	[1:0]	tx_frame_shift 		;
reg  	[5:0]	tx_data_i 			;
reg 	[5:0]	tx_data_q 			;
wire  	[5:0]	tx_data_out 		;
wire   			tx_frame_out 		;
wire  			tx_clk_out 			;

//----------------tx_flag------------------
always @(posedge fb_clk ) begin
	if (rst==1'b1) begin
		tx_flag <= 1'b0;
	end
	else if (dac_valid == 1'b1) begin
		tx_flag <= 1'b1;
	end
	// 1r1t mode
	else if (mode_1r1t == 1'b1 && cnt_data == 'd1) begin
		tx_flag <=  1'b0;
	end
	// 2r2t mode
	else if (mode_1r1t == 1'b0 && cnt_data == 'd3) begin
		tx_flag <= 1'b0;
	end
end

//----------------cnt_data------------------
always @(posedge fb_clk ) begin
	if (rst==1'b1) begin
		cnt_data <= 'd0;
	end
	// 2r2t mode
	else if (mode_1r1t == 1'b0) begin
		if (cnt_data == 'd3 && tx_flag == 1'b1) begin
			cnt_data <= 'd0;
		end
		else if (tx_flag == 1'b1) begin
			cnt_data <= cnt_data + 1'b1;
		end
	end
	// 1r1t mode
	else if (mode_1r1t == 1'b1) begin
		if (cnt_data == 'd1 && tx_flag == 1'b1) begin
			cnt_data <= 'd0;
		end
		else if (tx_flag == 1'b1) begin
			cnt_data <= cnt_data + 1'b1;
		end
	end
end

//----------------delay data 1 beat------------------
always @(posedge fb_clk ) begin
	if (rst==1'b1) begin
		dac_data_i0_r <= 'd0;
		dac_data_q0_r <= 'd0;
		dac_data_i1_r <= 'd0;
		dac_data_q1_r <= 'd0;
	end
	else if (dac_valid == 1'b1) begin
		dac_data_i0_r <= dac_data_i0;
		dac_data_q0_r <= dac_data_q0;
		dac_data_i1_r <= dac_data_i1;
		dac_data_q1_r <= dac_data_q1;
	end
end

//----------------tx_frame_shift------------------
always @(posedge fb_clk ) begin
	if (rst==1'b1) begin
		tx_frame_shift <= 'd0;
	end
	else if (mode_1r1t == 1'b1) begin
		if (tx_flag == 1'b1 ) begin
			case (cnt_data)
				0 : tx_frame_shift <= 2'b11;
				1 : tx_frame_shift <= 2'b00; 
				default: tx_frame_shift <= 2'b00;
			endcase
		end
		else begin
			tx_frame_shift <= 2'b00;
		end
	end
	else if (mode_1r1t == 1'b0) begin
		if (tx_flag == 1'b1 ) begin
			case (cnt_data)
				0,1 : tx_frame_shift <= 2'b11;
				2,3 : tx_frame_shift <= 2'b00; 
				default: tx_frame_shift <= 2'b00;
			endcase
		end
		else begin
			tx_frame_shift <= 2'b00;
		end
	end
	else begin
		 tx_frame_shift <= 2'b00;
	end
end

//----------------tx_iq_data------------------
always @(posedge fb_clk ) begin
	if (rst==1'b1) begin
		tx_data_i <= 'd0;
		tx_data_q <= 'd0;
	end
	// 1r1t mode
	else if (mode_1r1t == 1'b1 && tx_flag == 1'b1) begin
		case(cnt_data)
			0 : begin
				tx_data_i <= dac_data_i0_r[11:6];
				tx_data_q <= dac_data_q0_r[11:6];
			end

			1 : begin
				tx_data_i <= dac_data_i0_r[5:0];
				tx_data_q <= dac_data_q0_r[5:0];
			end

			default : begin
				tx_data_i <= 'd0;
				tx_data_q <= 'd0;
			end
		endcase
	end
	// 2r2t mode
	else if (mode_1r1t == 1'b0 && tx_flag == 1'b1) begin
		case(cnt_data)
			0 : begin
				tx_data_i <= dac_data_i0_r[11:6];
				tx_data_q <= dac_data_q0_r[11:6];
			end
			
			1 : begin
				tx_data_i <= dac_data_i0_r[5:0];
				tx_data_q <= dac_data_q0_r[5:0];
			end

			2 : begin
				tx_data_i <= dac_data_i1_r[11:6];
				tx_data_q <= dac_data_q1_r[11:6];
			end
			
			3 : begin
				tx_data_i <= dac_data_i1_r[5:0];
				tx_data_q <= dac_data_q1_r[5:0];
			end

			default : begin
				tx_data_i <= 'd0;
				tx_data_q <= 'd0;
			end
		endcase
	end
	else begin
		tx_data_i <= 'd0;
		tx_data_q <= 'd0;
	end
end



genvar i;
//====================================================
//Serialization IQ data and frame signal
//====================================================

ODDR #(
  	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
  	.INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
  	.SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
) 	ODDR_inst_frame (
  	.Q(tx_frame_out),       // 1-bit DDR output
  	.C(fb_clk),   	    // 1-bit clock input
  	.CE(1'b1), 			    // 1-bit clock enable input
  	.D1(tx_frame_shift[1]), 	    // 1-bit data input (positive edge)
  	.D2(tx_frame_shift[0]), 	    // 1-bit data input (negative edge)
  	.R(1'b0),   		    // 1-bit reset
  	.S(1'b0)    		    // 1-bit set
);     

ODDR #(
  	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
  	.INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
  	.SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
) 	ODDR_inst_clock (
  	.Q(tx_clk_out),   	// 1-bit DDR output
  	.C(fb_clk),   	// 1-bit clock input
  	.CE(1'b1), 			// 1-bit clock enable input
  	.D1(1'b1), 			// 1-bit data input (positive edge)
  	.D2(1'b0), 			// 1-bit data input (negative edge)
  	.R(1'b0),   		// 1-bit reset
  	.S(1'b0)    		// 1-bit set
);

generate
	for (i = 0; i < 6; i = i + 1) begin
		ODDR #(
		  	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
		  	.INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
		  	.SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
		) 	ODDR_inst_clock (
		  	.Q(tx_data_out[i]),   		// 1-bit DDR output
		  	.C(fb_clk),   			// 1-bit clock input
		  	.CE(1'b1), 					// 1-bit clock enable input
		  	.D1(tx_data_i[i]), 		// 1-bit data input (positive edge)
		  	.D2(tx_data_q[i]), 		// 1-bit data input (negative edge)
		  	.R(1'b0),   				// 1-bit reset
		  	.S(1'b0)    				// 1-bit set
		);
	end
endgenerate



	OBUFDS OBUFDS_clock_inst (
		.O(tx_clk_out_p),     // Diff_p output (connect directly to top-level port)
		.OB(tx_clk_out_n),   // Diff_n output (connect directly to top-level port)
		.I(tx_clk_out)      // Buffer input
	);

	OBUFDS OBUFDS_frame_inst (
		.O(tx_frame_out_p),     // Diff_p output (connect directly to top-level port)
		.OB(tx_frame_out_n),   // Diff_n output (connect directly to top-level port)
		.I(tx_frame_out)      // Buffer input
	);

generate
	for (i = 0; i < 6; i = i + 1) begin
		OBUFDS OBUFDS_frame_inst (
			.O(tx_data_out_p[i]),     // Diff_p output (connect directly to top-level port)
			.OB(tx_data_out_n[i]),   // Diff_n output (connect directly to top-level port)
			.I(tx_data_out[i])      // Buffer input
		);
	end
endgenerate


endmodule
