library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_reg is
    generic ( M : integer := 7);
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
           shift_register : in STD_LOGIC_VECTOR(7 downto 0);
           COUT : out STD_LOGIC_VECTOR(7 downto 0)
           );
end shift_reg;

architecture Behavioral of shift_reg is
    signal clock_div : STD_LOGIC_VECTOR(4 downto 0);
    signal shift_reg_s : std_logic_vector (7 downto 0);
begin

    -- clock divider
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            clock_div <= clock_div + '1';
        end if;
    end process;

    -- shift register
    process (clock_div(4))
    begin
        shift_reg_s <= shift_register;
        if (clock_div(4)'event and clock_div(4) = '1') then
            shift_reg_s(7) <= D;
            for i in 0 to M-2 loop
            shift_reg_s(M-1) <= shift_reg_s(M);
              end loop;
        end if;
    end process;

    -- hook up the shift register bits to the LEDs
    COUT <= shift_reg_s;

end Behavioral;