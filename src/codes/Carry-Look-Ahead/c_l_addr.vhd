library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Carry_Look_Ahead is
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
B : in STD_LOGIC_VECTOR (7 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (7 downto 0);
Cout : out STD_LOGIC);
end Carry_Look_Ahead;
 
architecture Behavioral of Carry_Look_Ahead is
 
component Partial_Full_Adder
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
P : out STD_LOGIC;
G : out STD_LOGIC);
end component;
 
signal c1,c2,c3,c4,c5,c6,c7: STD_LOGIC;
signal P,G: STD_LOGIC_VECTOR(7 downto 0);
begin
 
PFA1: Partial_Full_Adder port map( A(0), B(0), Cin, S(0), P(0), G(0));
PFA2: Partial_Full_Adder port map( A(1), B(1), c1, S(1), P(1), G(1));
PFA3: Partial_Full_Adder port map( A(2), B(2), c2, S(2), P(2), G(2));
PFA4: Partial_Full_Adder port map( A(3), B(3), c3, S(3), P(3), G(3));
PFA5: Partial_Full_Adder port map( A(4), B(4), c4, S(4), P(4), G(4));
PFA6: Partial_Full_Adder port map( A(5), B(5), c5, S(5), P(5), G(5));
PFA7: Partial_Full_Adder port map( A(6), B(6), c6, S(6), P(6), G(6));
PFA8: Partial_Full_Adder port map( A(7), B(7), c7, S(7), P(7), G(7));
 
c1   <= G(0) OR (P(0) AND Cin);
c2   <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND Cin);
c3   <= G(2) OR (P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND Cin);
C4   <= G(3) OR (P(3) AND G(2)) OR (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0)) OR (P(3) AND P(2) AND P(1) AND P(0) AND Cin);
C5   <= G(4) OR (P(4) AND G(3)) OR (P(4) AND P(3) AND G(2)) OR (P(4) AND P(3) AND P(2) AND G(1)) OR (P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND Cin);
C6   <= G(5) OR (P(5) AND G(4)) OR (P(5) AND P(4) AND G(3)) OR (P(5) AND P(4) AND P(3) AND G(2)) OR (P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND Cin);
C7   <= G(6) OR (P(6) AND G(5)) OR (P(6) AND P(5) AND G(4)) OR (P(6) AND P(5) AND P(4) AND G(3)) OR (P(6) AND P(5) AND P(4) AND P(3) AND G(2)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND Cin);
Cout <= G(7) OR (P(7) AND G(6)) OR (P(7) AND P(6) AND G(5)) OR (P(7) AND P(6) AND P(5) AND G(4)) OR (P(7) AND P(6) AND P(5) AND P(4) AND G(3)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND G(2)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(7) AND P(6) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND Cin);

end Behavioral;
