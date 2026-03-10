library ieee;
use ieee.std_logic_1164.all;

entity fadd is 
  port(
    IN_A  : in  std_logic;
    IN_B  : in  std_logic;
    Cin   : in  std_logic;
    SUM   : out std_logic;
    CARRY : out std_logic
  );
end entity;

architecture rtl of fadd is 
  
begin
  SUM   <= IN_A xor IN_B xor Cin;
  CARRY <= (IN_A and IN_B) or (Cin and (IN_A xor IN_B));
end architecture;