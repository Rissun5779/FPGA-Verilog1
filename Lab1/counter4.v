module counter4(
   input        CLOCK,
   input        RESET,
   output [3:0] Q
);
   T_FF tff0(
       CLOCK,
       RESET,
       Q[0]
   );
   T_FF tff1(
       Q[0],
       RESET,
       Q[1]
   );
   T_FF tff2(
       Q[1],
       RESET,
       Q[2]
   );
   T_FF tff3(
       Q[2],
       RESET,
       Q[3]
   );
endmodule
