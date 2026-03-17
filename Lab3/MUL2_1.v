`define Lab
module MUL2_1(
  input  IN_A,
  input  IN_B,
  input  Sel,
  output OUT_F
);

`ifdef Lab1
  reg tmp;

  always @(*) begin
    case (Sel)
        1'b0 : tmp = IN_A;
        1'b1 : tmp = IN_B;
        default: 
          tmp = 1'b0;
    endcase
  end
  
  assign OUT_F = tmp;
`else 
  assign OUT_F = ~Sel & IN_A | Sel & IN_B;
`endif
endmodule 
