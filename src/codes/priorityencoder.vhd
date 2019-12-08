library ieee;
      use ieee.std_logic_1164.all;
  
  entity prioritygen is
      port (
          enable     :in  std_logic;                     --  Enable for the encoder
          encoder_in :in  std_logic_vector (31 downto 0);--  16-bit Input
          binary_out :out std_logic_vector (4 downto 0)  --  4 bit binary Output
  
      );
  end entity;
  
  architecture behavior of prioritygen is
  
  begin
      binary_out <= "00000" when enable = '0' else
                "00001" when encoder_in( 1 ) = '1' else
                "00010" when encoder_in( 2 ) = '1' else
                "00011" when encoder_in( 3 ) = '1' else
                "00100" when encoder_in( 4 ) = '1' else
                "00101" when encoder_in( 5 ) = '1' else
                "00110" when encoder_in( 6 ) = '1' else
                "00111" when encoder_in( 7 ) = '1' else
                "01000" when encoder_in( 8 ) = '1' else
                "01001" when encoder_in( 9 ) = '1' else
                "01010" when encoder_in( 10 ) = '1' else
                "01011" when encoder_in( 11 ) = '1' else
                "01100" when encoder_in( 12 ) = '1' else
                "01101" when encoder_in( 13 ) = '1' else
                "01110" when encoder_in( 14 ) = '1' else
                "01111" when encoder_in( 15 ) = '1' else
                "10000" when encoder_in( 16 ) = '1' else
                "10001" when encoder_in( 17 ) = '1' else
                "10010" when encoder_in( 18 ) = '1' else
                "10011" when encoder_in( 19 ) = '1' else
                "10100" when encoder_in( 20 ) = '1' else
                "10101" when encoder_in( 21 ) = '1' else
                "10110" when encoder_in( 22 ) = '1' else
                "10111" when encoder_in( 23 ) = '1' else
                "11000" when encoder_in( 24 ) = '1' else
                "11001" when encoder_in( 25 ) = '1' else
                "11010" when encoder_in( 26 ) = '1' else
                "11011" when encoder_in( 27 ) = '1' else
                "11100" when encoder_in( 28 ) = '1' else
                "11101" when encoder_in( 29 ) = '1' else
                "11110" when encoder_in( 30 ) = '1' else
                "11111" when encoder_in( 31 ) = '1' else             
                "00000";
                 
  
  end architecture;