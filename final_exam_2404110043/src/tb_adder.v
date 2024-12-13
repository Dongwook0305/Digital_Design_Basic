`timescale 1ns / 1ps
module tb_adder ();
    reg clk;
    reg rst_n;
    reg [15:0] in1, in2, in3, in4;
    wire [16:0] out;

    adder DUT (
        .clk(clk),
        .rst_n(rst_n),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out(out)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst_n = 0;
        in1 = 16'b0;
        in2 = 16'b0;
        in3 = 16'b0;
        in4 = 16'b0;
        
        #10 rst_n = 1;
        
        #30 in1 = 16'd1111;
            in2 = 16'd1111;
            in3 = 16'd1111;
            in4 = 16'd1111;
        
        #10 in1 = 16'd3333;
            in2 = 16'd3333;
            in3 = 16'd3333;
            in4 = 16'd3333;
        
        #10 in1 = 16'd5555;
            in2 = 16'd5555;
            in3 = 16'd5555;
            in4 = 16'd5555;
        
        #140 rst_n = 0;
        
        #100 $finish;
    end
endmodule

