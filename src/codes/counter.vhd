
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_STD.all;


entity counter is
generic (M: integer := 2**26);
port(
    clk, rst, i_en : in std_logic;
    o_led : out std_logic
);
end counter;

architecture rtl of counter is
    signal o_led_int : std_logic := '0';
    signal o_tick : std_logic := '0';
    signal cnt : unsigned(31 downto 0) := to_unsigned(M-1, 32);
begin
    process(clk) is
        begin
            if rising_edge(clk) then
                if rst = '1' then
                    cnt <= to_unsigned(M-1, 32);
                elsif i_en = '1' then
                    if cnt = 0 then
                        cnt <= to_unsigned(M, 32);
                    else
                        cnt <= cnt -1;
                    end if;
                end if;
            end if;
     end process;
     o_tick <= '1' when cnt = 0 else '0';
     
     process(clk)
        begin
            if rising_edge(clk) then 
                if o_tick = '1' then
                    o_led_int <= not o_led_int;
                    end if;
                end if;
        end process; 
        o_led <= o_led_int;
end rtl;
