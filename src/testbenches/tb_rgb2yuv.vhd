library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_rgb2yuv is
--  Port ( );
end tb_rgb2yuv;

architecture Behavioral of tb_rgb2yuv is
component rgb2yuv is
    port(
    rgb : in  std_logic_vector(23 downto 0);
    yuv : out std_logic_vector(23 downto 0)
    );

end component;

signal rgb_s : std_logic_vector(23 downto 0);
signal yuv_s : std_logic_vector(23 downto 0);

begin

u: rgb2yuv port map (rgb => rgb_s, yuv =>yuv_s);
process
begin
    rgb_s <= "101100101010100110101000";
    wait for 10 ns;
    rgb_s <= "100010111011000110101001";
    wait for 10 ns;

end process;
end Behavioral;
