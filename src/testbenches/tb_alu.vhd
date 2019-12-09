LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;


ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT ALU
    PORT(
          a, b     : in  STD_LOGIC;                   
          sel      : in  STD_LOGIC_VECTOR(2 downto 0);
          cout     : out  STD_LOGIC_VECTOR(1 downto 0)
        );
END COMPONENT;


signal A : std_logic;
signal B : std_logic;
signal ALU_Sel : std_logic_vector(2 downto 0);
signal ALU_Out : std_logic_vector(1 downto 0);

BEGIN
com: ALU port map (a => A, b => B, sel => ALU_Sel, cout => ALU_Out);

PROCESS

BEGIN
wait for 10 ns;

A <= '0';
B <= '1';
ALU_Sel <= "000";
wait for 10 ns;

A <= '1';
B <= '0';
ALU_Sel <= "001";
wait for 10 ns;

A <= '1';
B <= '0';
ALU_Sel <= "010";
wait for 10 ns;

A <= '1';
B <= '0';
ALU_Sel <= "011";
wait for 10 ns;

A <= '1';
B <= '1';
ALU_Sel <= "100";
wait for 10 ns;

A <= '1';
B <= '0';
ALU_Sel <= "101";
wait for 10 ns;

A <= '0';
B <= '1';
ALU_Sel <= "110";
wait for 10 ns;

A <= '1';
B <= '0';
ALU_Sel <= "111";
wait for 10 ns;

END PROCESS;

END;
