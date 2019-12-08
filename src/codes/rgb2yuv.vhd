library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity rgb2yuv is
port (
    rgb  : in  std_logic_vector(23 downto 0);
    yuv : out std_logic_vector(23 downto 0)
);
end rgb2yuv;

architecture rtl of rgb2yuv is


    signal R: std_logic_vector(7 downto 0) := rgb(7 downto 0) ;
    signal G: std_logic_vector(7 downto 0) := rgb(15 downto 8) ;
    signal B: std_logic_vector(7 downto 0) := rgb(23 downto 16) ;
    
    signal Y, U, V: std_logic_vector(15 downto 0);
begin

    R <= rgb(7 downto 0);
    G <= rgb(15 downto 8);
    b <= rgb(23 downto 16);
    
    Y <= std_logic_vector ((299/1000) * unsigned(R) + (587/1000) * unsigned(g) + (114/1000) * unsigned(b));
    U <= std_logic_vector ((-147/1000) * unsigned(R) - (289/1000) * unsigned(g) + (436/1000) * unsigned(b));
    V <= std_logic_vector ((615/1000) * unsigned(R) - (289/1000) * unsigned(g) - (100/1000) * unsigned(b));
    
    yuv(23 downto 16) <= V(7 downto 0);
    yuv(15 downto 8) <= U(7 downto 0); 
    yuv(7 downto 0) <= not Y(7 downto 0);
    
    
    
   
end rtl;