module SR_Latch(
  input  Set,
  input  Reset,
  output Q,
  output Qbar
);
  nand NA0(
    Q,
    Qbar,
    Set
  );
  nand NA1(
    Qbar,
    Q,
    Reset
  );
endmodule 