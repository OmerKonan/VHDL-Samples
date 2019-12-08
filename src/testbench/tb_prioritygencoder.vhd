library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_prioritygen is
--  Port ( );
end tb_prioritygen;

architecture Behavioral of tb_prioritygen is

component prioritygen is
     port (
     enable     :in  std_logic;                     --  Enable for the encoder
     encoder_in :in  std_logic_vector (31 downto 0);--  16-bit Input
     binary_out :out std_logic_vector (4 downto 0)  --  4 bit binary Output
      );

end component;

signal enable_s:  std_logic;
signal encoder_in_s : std_logic_vector(31 downto 0);
signal binary_out_s : std_logic_vector(4 downto 0);


begin

u: prioritygen port map(enable => enable_s, encoder_in => encoder_in_s, binary_out => binary_out_s ); 


process
begin
    enable_s <= '1';
    encoder_in_s <= "10010101010101010101010101010101";
    wait for 10 ns;
    
    enable_s <= '1';
    encoder_in_s <= "10010101011101111011100010100101";
    wait for 10 ns;

    enable_s <= '1';
    encoder_in_s <= "10010101010001011001101011101011";
    wait for 10 ns;

    enable_s <= '1';
    encoder_in_s <= "10101110101011111100101111010101";

end process;

end Behavioral;
