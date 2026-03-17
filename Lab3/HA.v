module HA(
    input  IN_A,
    input  IN_B,
    output SUM,
    output CARRY
);

    xor SUM0(SUM, IN_A, IN_B);
    and CARRY0(CARRY, IN_A, IN_B);
endmodule
