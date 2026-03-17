`timescale 1ns/1ns
module Tb_HA;
  //Ports
  reg IN_A;
  reg IN_B;
  wire SUM;
  wire CARRY;

  HA  DUT (
    .IN_A(IN_A),
    .IN_B(IN_B),
    .SUM(SUM),
    .CARRY(CARRY)
  );
  
  initial begin
    IN_A = 0;
    IN_B = 0;
	 
    #800 $finish;
  end
  
    always #100 {IN_A, IN_B} = {IN_A ,IN_B} + 1'b1;
endmodule
