module D_FF(
  input  CLOCK,
  input  RESET,
  input  D,
  output Q
);
  reg q;

  always @(negedge CLOCK or posedge RESET) begin
    if (RESET) begin
      q <= 1'b0;
    end else begin
      q <= D;
    end
  end

  assign Q = q;
endmodule 