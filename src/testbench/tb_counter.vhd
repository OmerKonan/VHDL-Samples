

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture Behavioral of tb_counter is
    component counter is
        generic (M: integer := 20);
        port(
            clk, rst, i_en : in std_logic;
            o_led: out std_logic
        );
    end component;
    
    constant CLK_PERIOD : time := 10 ns;
    constant M : integer := 20;
    
    signal clk, rst, i_en : std_logic := '0';
    signal o_led : std_logic;

begin
    uut0: counter
        generic map (M=>M)
        port map (clk=>clk, rst=>rst, i_en=>i_en, o_led=>o_led);
        
    process
    begin
        clk <= not clk;
        wait for CLK_PERIOD/2;
    end process;
    process
    begin
        rst <= '1';
        i_en <= '0';
        wait for 10*CLK_PERIOD;
        rst <= '0';
        wait for 2*CLK_PERIOD;
        i_en <= '1';
        wait for 100*CLK_PERIOD;
        wait; 
    end process;
end Behavioral;
