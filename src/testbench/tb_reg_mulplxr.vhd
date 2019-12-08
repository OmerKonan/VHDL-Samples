library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_reg_mulplxr is
--  Port ( );
end tb_reg_mulplxr;

architecture Behavioral of tb_reg_mulplxr is
component reg_mulplxr is
    generic(M: integer :=7);
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
end component;
constant M : integer := 7;
constant CLK_PERIOD : time := 10 ns;
signal input1:  std_logic_vector(M downto 0);
signal input2:  std_logic_vector(M downto 0);
signal input3:  std_logic_vector(M downto 0);
signal input4:  std_logic_vector(M downto 0);
signal input5:  std_logic_vector(M downto 0);
signal input6:  std_logic_vector(M downto 0);
signal input7:  std_logic_vector(M downto 0);
signal input8:  std_logic_vector(M downto 0);
signal sel:   std_logic_vector (2 downto 0);
signal clk :  std_logic;
signal cout : std_logic_vector(M downto 0);

begin
uut: reg_mulplxr generic map(M => M)
                 port map(input1 => input1, input2 => input2, input3 => input3, input4 => input4,
                          input5 => input5, input6 => input6, input7 => input7, input8 => input8,
                          sel =>sel, clk => clk, cout => cout);
process
begin
    clk <= not clk;
    wait for CLK_PERIOD/2;
 end process;
 
process
begin
input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "000";
wait for CLK_PERIOD/2;

input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "001";
wait for CLK_PERIOD/2;

input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "010";
wait for CLK_PERIOD/2;


input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "011";
wait for CLK_PERIOD/2;


input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "100";
wait for CLK_PERIOD/2;


input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "101";
wait for CLK_PERIOD/2;


input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "110";
wait for CLK_PERIOD/2;


input1 <= "10111010";
input2 <= "10111010";
input3 <= "10111010";
input4 <= "10111111";
input5 <= "11110010";
input7 <= "10011001";
input8 <= "11110111";
sel <= "111";
wait for CLK_PERIOD/2;

end process;

end Behavioral;
