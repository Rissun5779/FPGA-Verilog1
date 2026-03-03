`timescale 1ns/1ns 
module Tb_counter4;

  // Parameters
  
  //Ports
  reg CLOCK;
  reg RESET;
  wire [3:0] Q;
  
  counter4  counter4_inst (
    .CLOCK(CLOCK),
    .RESET(RESET),
    .Q(Q)
  );
  initial begin 
    CLOCK = 1'b0;
    RESET = 1'b0;
  end
  
  always 
    #5  CLOCK = ~CLOCK ;
   
  initial begin
         RESET = 1'b1;
	 #20  RESET = 1'b0;
	 #180 RESET = 1'b1;
	 #10  RESET = 1'b0;
	 #20;  //$finish;
  end
  initial begin
    $monitor($time, " Output Q = %d", Q);
  end
endmodule
