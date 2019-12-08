library ieee;
use ieee.std_logic_1164.all;
entity paritygen is
  port(a: in std_logic_vector (7 downto 0);
       paro: out std_logic
      );
end paritygen;

architecture behavior of paritygen is
  signal parry: std_logic_vector (3 downto 0);
begin

parry(0) <= a(0) xor a(1);
c: for i in 1 to 3 generate
  parry(i) <= parry(i-1) xor a(i+1) xor a(i+2); 
end generate;

paro <= parry(3);

end behavior;