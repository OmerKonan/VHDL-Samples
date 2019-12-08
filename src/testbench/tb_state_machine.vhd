library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_state_machine is
--  Port ( );
end tb_state_machine;

architecture Behavioral of tb_state_machine is
    component state_machine is
    Port(
        a,b,clk,rst : in std_logic;

        o : out std_logic
    );
    end component;
    
    signal a,b,clk,rst : std_logic := '0';
    signal o : std_logic;

    signal period : time := 10 ns;
    
begin

    s0: state_machine port map(
        a => a,
        b => b,
        clk => clk,
        rst => rst,
    
        o => o
    );

    process
    begin
        clk <= not clk;
        wait for period/2;
    end process;
    
    process
    begin
        a <= '1';
        wait for 3*period;
        
        b <= '1';
        wait for period;
    end process;
end Behavioral;