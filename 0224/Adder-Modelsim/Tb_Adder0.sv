`timescale 1 ns/1 ns
module Tb_Adder0;
  reg A, B, C;
  wire D, E;
//Unit Under Test instance and port map
Adder0_vhd UUT (.x(A), .y(B), .Cin(C), .Cout(D), .Sum(E));
initial begin  //stimulus generation block
    A = 1'b0; B = 1'b0; C = 1'b0;
    #10;  A = 1'b0; B = 1'b0; C = 1'b1;        
    #10;  A = 1'b0; B = 1'b1; C = 1'b1;        
    #10;  A = 1'b1; B = 1'b0; C = 1'b1;        
    #10;  A = 1'b1; B = 1'b1; C = 1'b1;        
    #10;  A = 1'b0; B = 1'b1; C = 1'b0;
    #10;  A = 1'b1; B = 1'b0; C = 1'b0;
    #10;  A = 1'b1; B = 1'b1; C = 1'b0;
    #10;
end
//initial #100 $finish;
initial  //response monitoring block
  $monitor($realtime, "ns %h %h %h %h", A, B, C, {D, E});
endmodule
