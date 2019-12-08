library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_barrelshifter is
--  Port ( );
end tb_barrelshifter;

architecture Behavioral of tb_barrelshifter is
component barrelshifter is
      Port (
             a: in std_logic_vector(31 downto 0);
             sel : in std_logic_vector(4 downto 0);
             ori : in std_logic;
             cout: out std_logic_vector(31 downto 0)
   );
end component;
signal a_s, cout_s : std_logic_vector (31 downto 0);
signal sel_s : std_logic_vector (4 downto 0);
signal ori_s : std_logic;



begin

DUT : barrelshifter port map (a => a_s, sel => sel_s, ori => ori_s, cout => cout_s);


process
    begin
        a_s <= "10101101101010101010110101010101";
        sel_s <= "10101";
        ori_s <= '0';
        wait for 10 ns;
        
        a_s <= "10101110011010101010110110011011";
        sel_s <= "10101";
        ori_s <= '0';
        wait for 10 ns;
        
        a_s <= "10101101010110101010110101100110";
        sel_s <= "10101";
        ori_s <= '1';
        wait for 10 ns;
        
        a_s <= "10101101110101101011010010111000";
        sel_s <= "10101";
        ori_s <= '1';
        wait for 10 ns;
        
        
    
    

end process;

end Behavioral;
