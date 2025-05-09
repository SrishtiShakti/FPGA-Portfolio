library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C4M1P2 is
    Port (
        SW   : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit binary input: V = V3 V2 V1 V0
        HEX0 : out STD_LOGIC_VECTOR(6 downto 0);   -- 7-segment display output for ones digit (d0)
        HEX1 : out STD_LOGIC_VECTOR(6 downto 0)    -- 7-segment display output for tens digit (d1)
    );
end C4M1P2;

architecture Behavioral of C4M1P2 is
    signal z : STD_LOGIC;                   -- '1' if V > 9, '0' otherwise
    signal A : STD_LOGIC_VECTOR(3 downto 0);  -- Corrected value for ones digit when V > 9
begin
    
    -- Comparator: z is '1' when V > 9. 

    z <= SW(3) AND (SW(2) OR SW(1));


    -- Circuit A: The ones digit output when V > 9.

    A(3) <= '0';
    A(2) <= SW(2) AND SW(1);
    A(1) <= SW(2) AND (NOT SW(1));
    A(0) <= SW(0);

    -- Tens Digit (HEX1) Decoder:

    HEX1 <= "1000000" when z = '0' else "1111001";
    -- "1000000" represents digit 0; "1111001" represents digit 1.

    -- Ones Digit (HEX0) Decoder:
 
    HEX0 <= 
          -- For V <= 9 (display SW's value):
          "1000000" when ((z = '0') and (SW = "0000")) else  -- digit 0
          "1111001" when ((z = '0') and (SW = "0001")) else  -- digit 1
          "0100100" when ((z = '0') and (SW = "0010")) else  -- digit 2
          "0110000" when ((z = '0') and (SW = "0011")) else  -- digit 3
          "0011001" when ((z = '0') and (SW = "0100")) else  -- digit 4
          "0010010" when ((z = '0') and (SW = "0101")) else  -- digit 5
          "0000010" when ((z = '0') and (SW = "0110")) else  -- digit 6
          "1111000" when ((z = '0') and (SW = "0111")) else  -- digit 7
          "0000000" when ((z = '0') and (SW = "1000")) else  -- digit 8
          "0010000" when ((z = '0') and (SW = "1001")) else  -- digit 9
          -- For V > 9 (display corrected value A):
          "1000000" when ((z = '1') and (A = "0000")) else  -- For V = 1010 (10): display 0
          "1111001" when ((z = '1') and (A = "0001")) else  -- For V = 1011 (11): display 1
          "0100100" when ((z = '1') and (A = "0010")) else  -- For V = 1100 (12): display 2
          "0110000" when ((z = '1') and (A = "0011")) else  -- For V = 1101 (13): display 3
          "0011001" when ((z = '1') and (A = "0100")) else  -- For V = 1110 (14): display 4
          "0010010" when ((z = '1') and (A = "0101")) else  -- For V = 1111 (15): display 5
          "1111111";  -- Default: all segments off (this line should never be reached)

end Behavioral;
