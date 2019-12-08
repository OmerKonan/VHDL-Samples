library ieee;
use ieee.std_logic_1164.all;

entity addition is

  port (
    a0, b0 : in  std_logic;            -- inputs
    add : out std_logic_vector(1 downto 0)          -- sum & carry
    );
end addition;

architecture beh of addition is

signal s, ca : std_logic;
begin  -- beh

s  <= a0 xor b0; 
ca <= a0 and b0;

add <= ca & s;
 
end beh;