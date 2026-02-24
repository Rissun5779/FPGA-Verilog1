library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder0_vhd is
    port (
        x    : in  std_logic;
        y    : in  std_logic;
        Cin  : in  std_logic;

        Cout : out std_logic;
        Sum  : out std_logic
    );
end entity;

architecture rtl of Adder0_vhd is
begin
   Cout <= (x and y) or (Cin and (x xor y));
   Sum  <= x xor y xor Cin;
end architecture;