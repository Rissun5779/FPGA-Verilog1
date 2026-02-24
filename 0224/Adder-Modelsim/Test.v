module Test(
  input  x,
  input  y,
  input  Cin,
  
  output Cout,
  output Sum
);
  assign {Cout, Sum} = x+y+Cin;
endmodule 