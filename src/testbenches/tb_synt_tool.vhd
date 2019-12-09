library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_synt_tool is
--  Port ( );
end tb_synt_tool;

architecture Behavioral of tb_synt_tool is
component synt_tool is 
 Port(a, b: in STD_LOGIC;
      x: out STD_LOGIC
    );
end component;

signal a,b,x : std_logic;


begin
uut : synt_tool port map(a => a, b => b, x => x);

process
begin
    
    a <= '1';
    b <= '0';
    wait for 10 ns;
    a <= '1';
    b <= '1';
    wait for 10 ns;
    a <= '0';
    b <= '1';
    wait for 10 ns;
    a <= '0';
    b <= '0';
    wait for 10 ns;

end process;
end Behavioral;
