library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fadd4 is 
  port(
    IN_A : in  std_logic_vector(3 downto 0);
    IN_B : in  std_logic_vector(3 downto 0);
    SUM  : out std_logic_vector(3 downto 0);
    Cout : out std_logic
  );
end entity;

architecture rtl of Fadd4 is 
  signal Cin : std_logic_vector(4 downto 0);
  
  component fadd is 
    port (
      IN_A  : in  std_logic;
      IN_B  : in  std_logic;
      Cin   : in  std_logic;
      SUM   : out std_logic;
      CARRY : out std_logic
    );
  end component;
begin
  Cin(0) <= '0';
  Cout   <= Cin(4);

  FA0: fadd  
   port map(
     IN_A(0),
     IN_B(0),
     Cin(0),
     SUM(0),
     Cin(1)
   ); 
  FA1: fadd  
   port map(
     IN_A(1),
     IN_B(1),
     Cin(1),
     SUM(1),
     Cin(2)
   ); 
  FA2: fadd  
   port map(
     IN_A(2),
     IN_B(2),
     Cin(2),
     SUM(2),
     Cin(3)
   ); 
  FA3: fadd  
   port map(
     IN_A(3),
     IN_B(3),
     Cin(3),
     SUM(3),
     Cin(4)
   ); 
end architecture;