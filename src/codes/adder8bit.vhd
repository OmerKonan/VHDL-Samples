library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_8bit is
port (
a,b : in std_logic_vector (7 downto 0) ;
carry_in : in std_logic ;
co : out std_logic ;
s : out std_logic_vector (7 downto 0) );
end adder_8bit;

architecture arc_ader of adder_8bit is
begin

process (a,b,carry_in)
begin

s<= std_logic_vector ( unsigned (a) + unsigned(b) );
end process;
end;
