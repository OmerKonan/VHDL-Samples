library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_sequencer is
--  Port ( );
end tb_sequencer;

architecture Behavioral of tb_sequencer is
    component sequencer is
    generic( d: integer := 8);
    Port(
        clk, rst, start : in std_logic;
        i_data : in std_logic_vector(d-1 downto 0);
        tx, tx_done : out std_logic
    );
end component;
    
signal period : time := 10 ns;
constant d : integer := 8;
signal start, tx, tx_done : std_logic;
signal clk,rst : std_logic := '0'; 
signal i_data : std_logic_vector(d-1 downto 0);
    
begin
    s0: sequencer
        generic map(d => d)
        port map(
            clk => clk,
            rst => rst,
            start => start,
            i_data => i_data,
            tx => tx,
            tx_done => tx_done
        );
    
    process
    begin
        clk <= not clk;
        wait for period/2;
    end process;
    
    process
    begin
        rst <= '0';
        start <= '1';
        i_data <= "10111010";
        wait for 40*period;
        
        rst <= '1';
        start <= '0';
        i_data <= "10111010";
        wait for 8*period;
        
        rst <= '0';
        start <= '1';
        i_data <= "10111010";
        wait for 40*period;
        
        wait;
    end process;   
end Behavioral;