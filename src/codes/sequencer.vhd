library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequencer is
    generic(D : integer := 8);
    port(
    clk, rst : in std_logic;
    start: in std_logic;
    i_data : in std_logic_vector(D-1 downto 0);
    tx : out std_logic;
    tx_done : out std_logic
    );
end sequencer;

architecture Behavioral of sequencer is

type state_type is (s0,s1,s2);
signal state, state_next : state_type := s0;
signal n : integer := 0;
signal done : std_logic := '0';
signal data : std_logic_vector(d+7 downto 0) := (others => '0');

begin
    process(clk)
    variable i : integer := 0;
    begin
        data <= "0000" & i_data(d-1 downto 0) & "1111";
        state <= state_next;
        if rising_edge(clk) then
            case state is
                when s0 =>
                    if rst = '0' then
                        if start = '1' then
                            tx <= data(i);
                            i := i+1;
                            tx_done <= '0';
                            if i = d+8 then
                                state_next <= s1;
                            else 
                                state_next <= s0;
                            end if;
                        else 
                            state_next <= s0;
                        end if;
                    else
                        state_next <= s0;
                        i := 0;
                    end if;
                when s1 =>
                    tx <= '0';
                    tx_done <= '1';
                    i := 0;
                    state_next <= s0;
                when others =>
                    state_next <= s0;
            end case;
        end if;
    end process;
end Behavioral;