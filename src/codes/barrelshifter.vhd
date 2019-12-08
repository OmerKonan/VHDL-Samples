

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity barrelshifter is
  Port (
  a: in std_logic_vector(31 downto 0);
  sel: in std_logic_vector(4 downto 0);
  ori: in std_logic;
  cout: out std_logic_vector(31 downto 0)
   );
end barrelshifter;

architecture Behavioral of barrelshifter is

begin
process(ori)is
    begin
    if ori = '0' then
    cout <= std_logic_vector(unsigned(a) sll to_integer(unsigned(sel)));
    else
    cout <= std_logic_vector(unsigned(a) srl to_integer(unsigned(sel)));
    end if;
end process;
end Behavioral;
