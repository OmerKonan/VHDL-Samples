library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity hamming is
generic (N : integer := 32);
   port(
      a,b: in std_logic_vector(N-1 downto 0);
      y: out std_logic_vector(7 downto 0)
   );
end hamming;

--=============================
-- 
--=============================
architecture compact_arch of hamming is
   signal diff: unsigned(N-1 downto 0);
   signal cnt : integer := 0;
begin
process(a,b)
    begin
   diff <= unsigned(a xor b);
   for ii in N-1 downto 0 loop
   if diff(ii) <= '1' then cnt <= cnt + 1;    
   end if;
   end loop;
   y <= std_logic_vector((to_unsigned(cnt,8)));
 end process;
  
end compact_arch;