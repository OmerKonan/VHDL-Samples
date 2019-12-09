
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_shift_reg is
--  Port ( );
end tb_shift_reg;

architecture Behavioral of tb_shift_reg is
component shift_reg is
    generic ( M : integer := 7);
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
           SHIFT_REGISTER : in STD_LOGIC_VECTOR(7 downto 0);
           COUT : out STD_LOGIC_VECTOR(7 downto 0)
           );
end component;

signal shift_reg_s : std_logic_vector(7 downto 0);
signal clk : std_logic;
signal d : std_logic;
signal cout : std_logic_vector(7 downto 0);
signal M : integer := 7;
begin

uut: shift_reg generic map(M => M) port map (SHIFT_REGISTER => shift_reg_s, CLK => clk, D => d, COUT => cout);
process
    begin
    shift_reg_s <= "10110101";
    clk <= '1';
    D <= '1';
    wait for 10 ns;
    shift_reg_s <= "10110101";
    clk <= '1';
    D <= '1';
    wait for 10 ns;
    shift_reg_s <= "10111101";
    clk <= '1';
    D <= '1';
    wait for 10 ns;
    shift_reg_s <= "11100101";
    clk <= '1';
    D <= '1';
    wait for 10 ns;

end process;
end Behavioral;
