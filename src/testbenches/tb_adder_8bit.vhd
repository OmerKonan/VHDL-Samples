library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_adder_8bit is

end tb_adder_8bit;

architecture beh of tb_adder_8bit is
component adder_8bit is
port ( 
    a,b : in std_logic_vector(7 downto 0);
    carry_in : in std_logic;
    s : out std_logic_vector(7 downto 0);
    co : out std_logic
    );
end component;
signal a_s,b_s,sum_s : std_logic_vector (7 downto 0);
signal cin_s,cout_s : std_logic;
begin

DUT : adder_8bit port map (a=>a_s,b=> b_s, carry_in =>cin_s, s => sum_s, co=>cout_s);
process
 begin
  a_s <= "10101010";
  b_s <= "01010101";
  cin_s <= '0';
  wait for 10 ns;
  
  a_s <= "11001100";
  b_s <= "11110000";
  cin_s <= '1';
  wait for 10 ns;
  
  a_s <= "11010111";
  b_s <= "01011010";
  cin_s <= '0';
  wait for 10 ns;
  
  a_s <= "10110011";
  b_s <= "11111111";
  cin_s <= '1';
  wait for 10 ns;
 end process;
 
end beh;