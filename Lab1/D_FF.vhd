library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity D_FF is 
  port (
    CLOCK : in  std_logic;
    RESET : in  std_logic;
    D     : out std_logic;
    Q     : out std_logic
  );
end entity;

architecture rtl of D_FF is 
  
begin
  d_ff:process(CLOCK, RESET) begin
    if(rising_edge(RESET)) then 
      Q <= '0';
    elsif (falling_edge(CLOCK)) then
      Q <= D;
    end if;
  end process;
end architecture;