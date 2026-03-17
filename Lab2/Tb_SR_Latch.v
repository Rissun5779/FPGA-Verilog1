`timescale 1ns/1ns
module Tb_SR_Latch;

  // Parameters

  //Ports
  reg Set;
  reg Reset;
  wire Q;
  wire Qbar;

  SR_Latch  DUT (
    .Set(Set),
    .Reset(Reset),
    .Q(Q),
    .Qbar(Qbar)
  );

  initial begin
    $monitor($time, " set = %b, reset = %b, q = %b\n", 
                    Set, Reset, Q);
    Set   = 0;
    Reset = 0;
    #5 Reset = 1;
    #5 Reset = 0;
    #5 Set   = 1;

    #5;
  end  
endmodule