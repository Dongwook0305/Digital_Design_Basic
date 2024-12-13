`timescale 1ns / 1ps

module tb_sn74ls11 ();

reg in_1A, in_1B, in_1C, in_2A, in_2B, in_2C, in_3A, in_3B, in_3C;
wire out_1Y, out_2Y, out_3Y;


//DUT instantiation
SN74LS11 DUT(.in_1A(in_1A), .in_2A(in_2A), .in_3A(in_3A),
			 .in_1B(in_1B), .in_2B(in_2B), .in_3B(in_3B), 
			 .in_1C(in_1C), .in_2C(in_2C), .in_3C(in_3C),
			 .out_1Y(out_1Y), .out_2Y(out_2Y), .out_3Y(out_3Y)
		 	);

//Applying stimulus
initial begin
	// init( t = 0) //000
	in_1A = 1'b0; in_1B = 1'b0; in_1C = 1'b0;
	in_2A = 1'b0; in_2B = 1'b0; in_2C = 1'b0;
	in_3A = 1'b0; in_3B = 1'b0; in_3C = 1'b0;
	//001
	#10
	in_1A = 1'b0; in_1B = 1'b0; in_1C = 1'b1;
	in_2A = 1'b0; in_2B = 1'b0; in_2C = 1'b1;
        in_3A = 1'b0; in_3B = 1'b0; in_3C = 1'b1;
	//010
	#10
	in_1A = 1'b0; in_1B = 1'b1; in_1C = 1'b0;
	in_2A = 1'b0; in_2B = 1'b1; in_2C = 1'b0;
        in_3A = 1'b0; in_3B = 1'b1; in_3C = 1'b0;	
	//011
	#10
	in_1A = 1'b0; in_1B = 1'b1; in_1C = 1'b1;
	in_2A = 1'b0; in_2B = 1'b1; in_2C = 1'b1;
        in_3A = 1'b0; in_3B = 1'b1; in_3C = 1'b1;
	//100
	#10
	in_1A = 1'b1; in_1B = 1'b0; in_1C = 1'b0;
	in_2A = 1'b1; in_2B = 1'b0; in_2C = 1'b0;
        in_3A = 1'b1; in_3B = 1'b0; in_3C = 1'b0;
	//101
	#10
        in_1A = 1'b1; in_1B = 1'b0; in_1C = 1'b1;
	in_2A = 1'b1; in_2B = 1'b0; in_2C = 1'b1;
        in_3A = 1'b1; in_3B = 1'b0; in_3C = 1'b1;
	//110
	#10
	in_1A = 1'b1; in_1B = 1'b1; in_1C = 1'b0;
	in_2A = 1'b1; in_2B = 1'b1; in_2C = 1'b0;
        in_3A = 1'b1; in_3B = 1'b1; in_3C = 1'b0;
	//111
 	#10
	in_1A = 1'b1; in_1B = 1'b1; in_1C = 1'b1;
	in_2A = 1'b1; in_2B = 1'b1; in_2C = 1'b1;
        in_3A = 1'b1; in_3B = 1'b1; in_3C = 1'b1;



	#30
	$finish;
end
	
endmodule
