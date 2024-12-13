`timescale 1ns / 1ps

module adder (
	clk,    
	rst_n,
	in1,
	in2,
	in3,
	in4,
	out
);
    input clk		;
    input rst_n		;
    input [15:0] in1	;
    input [15:0] in2	;
    input [15:0] in3	;
    input [15:0] in4	;
    output reg [16:0] out;

    
    always @(posedge clk, negedge rst_n) begin
        if (~rst_n)
            out <= 17'b0;
        else
            out <= in1 + in2 + in3 + in4;
    end
    
endmodule

