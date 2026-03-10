module Fadd4 (
  input  [3:0] IN_A,
  input  [3:0] IN_B,
  output [3:0] SUM,
  output       Cout
);

  wire [4:0] Cin;

  assign Cin[0] = 1'b0;
  assign Cout = Cin[4];

  fadd FA0 (
    .IN_A(IN_A[0]),
    .IN_B(IN_B[0]),
    .Cin(Cin[0]),
    .SUM(SUM[0]),
    .CARRY(Cin[1])
  );

  fadd FA1 (
    .IN_A(IN_A[1]),
    .IN_B(IN_B[1]),
    .Cin(Cin[1]),
    .SUM(SUM[1]),
    .CARRY(Cin[2])
  );

  fadd FA2 (
    .IN_A(IN_A[2]),
    .IN_B(IN_B[2]),
    .Cin(Cin[2]),
    .SUM(SUM[2]),
    .CARRY(Cin[3])
  );

  fadd FA3 (
    .IN_A(IN_A[3]),
    .IN_B(IN_B[3]),
    .Cin(Cin[3]),
    .SUM(SUM[3]),
    .CARRY(Cin[4])
  );

endmodule