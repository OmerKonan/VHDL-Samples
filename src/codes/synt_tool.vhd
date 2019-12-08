library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity synt_tool is
 Port(a, b: in STD_LOGIC;
      x: out STD_LOGIC
    );
end synt_tool;

architecture Behavioral of synt_tool is

begin
    process(a,b) is
    variable b1 : std_logic;
    variable b3 : std_logic;
    variable b2 : std_logic;
    begin 
    
    b1 := not b;
    b2 := not b1;
    b3 := not b2;
    x <= a and b3; 

end process;
end Behavioral;
