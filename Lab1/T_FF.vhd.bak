library ieee;
use ieee.std_logic_1164.all;

entity T_FF is 
  port (
    CLOCK : in  std_logic;
    RESET : in  std_logic;
    Q     : out std_logic
  );
end entity;

architecture rtl of T_FF is 
  signal D : std_logic;
begin
  D <= not Q;
  
  Dff0: D_FF 
  port map (
    CLOCK,
    RESET,
    D,
    Q
  );
end architecture;