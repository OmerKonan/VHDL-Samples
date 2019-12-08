library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is  
    Port (
    a, b     : in  STD_LOGIC;  
    sel      : in  STD_LOGIC_VECTOR(2 downto 0);  
    cout     : out  STD_LOGIC_VECTOR(1 downto 0)
    );
end ALU; 
Architecture Behavioral of ALU is

component addition is
    port (
    a0, b0 : in  std_logic;            -- inputs
    add: out std_logic_vector(1 downto 0)
    );           -- sum & carry
end component;
component subtractor is 
    port (
    a1, b1 : in  std_logic;            -- inputs
    sub: out std_logic_vector(1 downto 0)
    );
end component;
signal ALU_Result_Two : std_logic_vector(1 downto 0);
signal ALU_Result: std_logic;
signal adder: std_logic_vector(1 downto 0);
signal sub: std_logic_vector(1 downto 0);
begin

add: addition port map (a0 => a, b0 =>b, add=> adder);
subtract: subtractor port map (a1 => a, b1 =>b, sub=> sub);

ALU_Result_Two <= adder when sel = "000" else
                  sub when sel = "001" else
                  '0' & (a and b) when sel = "010" else
                  '0' & (a or b) when sel = "011" else
                  '0' & (a nor b) when sel = "100" else
                  '0' & (a nand b) when sel = "101" else
                  '0' & ((not a) and b) when sel = "110" else
                  '0' & (not a) when sel = "111";
 
 cout <= ALU_Result_Two;
end Behavioral;