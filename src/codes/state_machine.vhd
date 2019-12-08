library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity state_machine is
  Port(
    a,b,clk,rst : in std_logic;

    o : out std_logic
  );
end state_machine;

architecture Behavioral of state_machine is

type state_type is (s0,s1,s2);
signal state : state_type := s0;

begin

    process(clk,rst)
    begin
        if(rst = '1') then
            state <= s0;
        elsif(rising_edge(clk)) then 
            case state is
                when s0 =>
                   o <= '0';
                    if(a = '1') then
                        state <= s1;
                    end if;
                when s1 =>
                    o <= '0';
                    if(b = '1') then
                        state <= s2;
                    elsif(b = '0') then
                        state <= s0;
                    end if;
                when others =>
                    o <= '1';
                    state <= s0;
            end case;
        end if;                
    end process;
end Behavioral;