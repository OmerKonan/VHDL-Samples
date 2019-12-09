library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_hamming is
--  Port ( );
end tb_hamming;

architecture Behavioral of tb_hamming is
component hamming is
   generic (N : integer := 32);
   port(
      a,b: in std_logic_vector(N-1 downto 0);
      y: out std_logic_vector(7 downto 0)
   );

end component;
signal a_s, b_s : std_logic_vector(31 downto 0);
signal y_s : std_logic_vector(7 downto 0);


begin

u: hamming port map (a => a_s, b => b_s, y => y_s);

process
begin
    a_s <= "10101010101010101010101101010101";
    b_s <= "10101010101100101101010101000101";
    wait for 10 ns;
    a_s <= "10010101110101101000101100101011";
    b_s <= "10001101011100010101011010100101";
    wait for 10 ns;
    a_s <= "01011100111101011000111011100011";
    b_s <= "10101011101010101000101010110101";
    wait for 10 ns;
    a_s <= "10101011001011001101010101010101";
    b_s <= "10101110110011010110101001010110";
    wait for 10 ns;
    a_s <= "10101011010101010001010010010010";
    b_s <= "01101110111010101010101001111010";
    wait for 10 ns;
    a_s <= "10101101010100101011101010001101";
    b_s <= "10101010101000101011010011000101";
    wait for 10 ns;
    a_s <= "10101010101110010101010101010101";
    b_s <= "10010101011101010010101101010010";
    wait for 10 ns; 

end process;


end Behavioral;
