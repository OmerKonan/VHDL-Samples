library ieee;
use ieee.std_logic_1164.all;

entity subtractor is

  port (
    a1, b1 : in  std_logic;            -- inputs
    sub : out std_logic_vector(1 downto 0)          -- sum & carry
    );
end subtractor;

architecture beh of subtractor is

signal s, bar : std_logic;
begin  -- beh

s  <= a1 xor b1; 
bar <= not(a1) and b1;

sub <= s & bar;
 
end beh;