

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg_mulplxr is
    generic(M: integer :=7 );
    Port ( input1: in std_logic_vector(M downto 0);
           input2: in std_logic_vector(M downto 0);
           input3: in std_logic_vector(M downto 0);
           input4: in std_logic_vector(M downto 0);
           input5: in std_logic_vector(M downto 0);
           input6: in std_logic_vector(M downto 0);
           input7: in std_logic_vector(M downto 0);
           input8: in std_logic_vector(M downto 0);
           sel: in std_logic_vector (2 downto 0);
           clk : in std_logic;
           cout : out std_logic_vector(M downto 0)
    );
end reg_mulplxr;

architecture Behavioral of reg_mulplxr is

begin
process(clk)
begin
if rising_edge(clk) then
    case sel is
        when "000" =>
            cout <= input1;
        when "001" =>
            cout <= input2;
        when "010" =>
            cout <= input3;
        when "011" =>
            cout <= input4;
        when "100" =>
            cout <= input5;
        when "101" =>
            cout <= input6;
        when "110" =>
            cout <= input7;
        when "111" =>
            cout <= input8;
        when others =>
            cout <= input1;
    end case;

end if;

end process;

end Behavioral;
