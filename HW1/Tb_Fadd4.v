`timescale 1ns/10ps
module Tb_Fadd4;
  // Parameters

  //Ports
  reg  [3 : 0] IN_A;
  reg  [3 : 0] IN_B;
  wire [3 : 0] SUM;
  wire Cout;

  Fadd4  DUT (
    .IN_A(IN_A),
    .IN_B(IN_B),
    .SUM(SUM),
    .Cout(Cout)
  );
  
  initial begin
    IN_A <= 4'b0111;
    IN_B <= 4'b1000;
    #500 $finish;
  end

  always #50 IN_A <= IN_A+1;
  always #50 IN_B <= IN_B+1;

  always #50 begin
    #1 $monitor("Time:%0t | IN_A=%d + IN_B=%d = SUM=%d (Cout=%b)", $time, IN_A, IN_B, SUM, Cout);
  end
endmodule