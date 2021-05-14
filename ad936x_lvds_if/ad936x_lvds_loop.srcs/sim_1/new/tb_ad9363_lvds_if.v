`timescale  1ns / 1ps

module tb_ad9363_lvds_if;

// ad9363_lvds_if Inputs
reg   ref_clk                              = 0 ;
reg   rst                                  = 0 ;
wire  rx_clk_in_p                              ;
wire  rx_clk_in_n                              ;
wire  rx_frame_in_p                            ;
wire  rx_frame_in_n                            ;
wire  [5:0]  rx_data_in_p                      ;
wire  [5:0]  rx_data_in_n                      ;
reg   dac_valid                            = 0 ;
reg   [11:0]  dac_data_i0                  = 0 ;
reg   [11:0]  dac_data_q0                  = 0 ;
reg   [11:0]  dac_data_i1                  = 0 ;
reg   [11:0]  dac_data_q1                  = 0 ;
reg   [4:0]  delay_value                   = 0 ;
reg   delay_load_en                        = 0 ;
reg   data_clk_ce                          = 0 ;
reg   mode_1r1t                                ;

// ad9363_lvds_if Outputs
wire  tx_clk_out_p                         ;
wire  tx_clk_out_n                         ;
wire  tx_frame_out_p                       ;
wire  tx_frame_out_n                       ;
wire  [5:0]  tx_data_out_p                 ;
wire  [5:0]  tx_data_out_n                 ;
wire  adc_valid                            ;
wire  [11:0]  adc_data_i0                  ;
wire  [11:0]  adc_data_q0                  ;
wire  rx_status                            ;
wire  data_clk                             ;

reg   fb_clk                               ;


ad9363_lvds_if u_ad9363_lvds_if(
    .ref_clk        (ref_clk        ),
    .rst            (rst            ),
    .rx_clk_in_p    (rx_clk_in_p    ),
    .rx_clk_in_n    (rx_clk_in_n    ),
    .rx_frame_in_p  (rx_frame_in_p  ),
    .rx_frame_in_n  (rx_frame_in_n  ),
    .rx_data_in_p   (rx_data_in_p   ),
    .rx_data_in_n   (rx_data_in_n   ),
    .tx_clk_out_p   (tx_clk_out_p   ),
    .tx_clk_out_n   (tx_clk_out_n   ),
    .tx_frame_out_p (tx_frame_out_p ),
    .tx_frame_out_n (tx_frame_out_n ),
    .tx_data_out_p  (tx_data_out_p  ),
    .tx_data_out_n  (tx_data_out_n  ),
    .adc_valid      (adc_valid      ),
    .adc_data_i0    (adc_data_i0    ),
    .adc_data_q0    (adc_data_q0    ),
    .adc_data_i1    (adc_data_i1    ),
    .adc_data_q1    (adc_data_q1    ),
    .rx_status      (rx_status      ),
    .dac_valid      (dac_valid      ),
    .dac_data_i0    (dac_data_i0    ),
    .dac_data_q0    (dac_data_q0    ),
    .dac_data_i1    (dac_data_i1    ),
    .dac_data_q1    (dac_data_q1    ),
    .mode_1r1t      (mode_1r1t      ),
    .data_clk       (data_clk       ),
    .fb_clk         (fb_clk         ),
    .delay_value    (delay_value    ),
    .delay_load_en  (delay_load_en  ),
    .data_clk_ce    (data_clk_ce    )
);

	initial begin
		ref_clk        	= 0;
		rst            	= 0;
        mode_1r1t       = 0;
		dac_valid      	= 0;
		dac_data_i0    	= 0;
		dac_data_q0    	= 0;
        dac_data_i1    	= 0;
		dac_data_q1    	= 0;
		delay_value 	= 'd0;
		delay_load_en= 1'h0;
		data_clk_ce    	= 'd1;
	end

    initial begin
        ref_clk = 0;
        forever #(2.5) ref_clk = ~ref_clk;
    end

    initial begin
        fb_clk = 1;
        forever #(12.5) fb_clk = ~fb_clk;
    end


	initial begin
		rst = 1;
		repeat(90)@(posedge ref_clk);
		rst = 0;
	end


    assign 	rx_clk_in_p = tx_clk_out_p;
    assign  rx_clk_in_n = tx_clk_out_n;
	assign 	rx_frame_in_p = tx_frame_out_p;
    assign  rx_frame_in_n = tx_frame_out_n;
	assign	rx_data_in_p  = tx_data_out_p;
    assign	rx_data_in_n  = tx_data_out_n;

	task drive();
		integer it; begin 
			for(it = 0; it < 1024; it = it + 1) begin
                dac_valid =  1'b1;
				dac_data_i0    <= it[11:0];
				dac_data_q0    <= 1024 - it[11:0];
                dac_data_i1    <= it[11:0];
				dac_data_q1    <= 1024 - it[11:0];
				@(posedge fb_clk);
                dac_valid = 1'b0;
                repeat(3)@(posedge fb_clk);
			end
			dac_valid = 1'b0;
		end
	endtask



	initial begin
		@(negedge rst);
		repeat(100)@(negedge ref_clk); 

		delay_load_en = 1'h1;
		@(posedge ref_clk);
		delay_load_en = 1'h0;
		repeat(5)@(posedge fb_clk);
		drive();
	end

endmodule