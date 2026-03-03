module T_FF(
  input  CLOCK,
  input  RESET,
  output Q
);
  wire D;
  assign D = ~Q;

  D_FF dff0(
      .CLOCK(CLOCK),
      .RESET(RESET),
      .D(D),
      .Q(Q)
  );
endmodule 
