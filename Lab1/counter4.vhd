library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD_UNSIGNED.all;

entity counter4 is
  port(
    CLOCK : in  std_logic;
    RESET : in  std_logic;
    Q     : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of counter4 is
  signal TMP_Q : std_logic_vector(3 downto 0);
begin
  Q <= TMP_Q;
  
  tff0: T_FF
  port map (
    CLOCK,
    RESET,
    TMP_Q(0)
  );
  tff1: T_FF
  port map (
    TMP_Q(0),
    RESET,
    TMP_Q(1)
  );
  tff2: T_FF
  port map (
    TMP_Q(1),
    RESET,
    TMP_Q(2)
  );
  tff3: T_FF
  port map (
    TMP_Q(2),
    RESET,
    TMP_Q(3)
  );
end architecture;