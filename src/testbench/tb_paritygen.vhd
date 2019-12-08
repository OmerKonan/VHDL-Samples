library ieee;
use ieee.std_logic_1164.all;
entity tb_paritygen is
  port(a: in std_logic_vector (15 downto 0);
       b: in std_logic_vector (15 downto 0);
       paro: out std_logic
      );
end tb_paritygen;

architecture behavior of tb_paritygen is

component paritygen is
    Port(
    a: in std_logic_vector (7 downto 0);
    paro: out std_logic
    );
end component;

signal a_s : std_logic_vector (7 downto 0);
signal paro_s : std_logic;



begin

u : paritygen port map (a => a_s, paro => paro_s);

process
    begin
        a_s <=  "10101010";
        wait for 10 ns;
        
        a_s <=  "10110101";
        wait for 10 ns;
        
        a_s <=  "10101101";
        wait for 10 ns;
        
        a_s <=  "10101111";
        wait for 10 ns;
        
        a_s <=  "11111111";
        wait for 10 ns;
    
    
end process;
end behavior;