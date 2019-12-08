-- 1-bit full adder
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    -- x, y, cin are inputs of the adder
    -- s (sum), cout (carry) are outputs of the adder
    port ( x, y : in  std_logic; cin : in std_logic; 
           s : out std_logic; cout : out std_logic );
end full_adder;

architecture rtl of full_adder is
begin
    -- two concurrent assignments
    s <= x xor y xor cin;
    cout <= (x and y) or (x and cin) or (y and cin);
end rtl;