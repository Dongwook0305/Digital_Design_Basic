`timescale 1ns / 1ps

module non_blocking ();

reg [3:0] A;
reg [3:0] B;
reg [3:0] C;
reg [3:0] D;

reg clk;

// block #1
initial
    clk = 1'b0;

// block #2
initial begin
    A = 4'd0; B = 4'd0; C = 4'd0; D = 4'd0;
//  A = 4'b0; B = 4'b0; C = 4'b0; D = 4'b0;
end

always // 20ns period
    #10 clk = ~clk;

// blocking statement
/*
always @(posedge clk)
begin
    A = A + 1; $display("[%0t] A = %4d", $time, A);
    B = A + 1; $display("[%0t] B = %4d", $time, A);
end

initial
    #100 $finish;
*/
// non blocking statement

always @(posedge clk)
begin
   C <= C + 1; $display("[%0t] C = %4d", $time, C);
   D <= C + 1; $display("[%0t] D = %4d", $time, D);
end


// finish at 5 cycle
initial
    #100 $finish;
endmodule