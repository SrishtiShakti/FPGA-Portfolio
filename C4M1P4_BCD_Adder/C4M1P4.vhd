library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity C4M1P4 is
    Port (
        X    : in  STD_LOGIC_VECTOR(3 downto 0);  -- First decimal digit (BCD)
        Y    : in  STD_LOGIC_VECTOR(3 downto 0);  -- Second decimal digit (BCD)
        cin  : in  STD_LOGIC;                     -- Carry-in
        S1   : out STD_LOGIC_VECTOR(6 downto 0);  -- Tens digit (BCD)
        S0   : out STD_LOGIC_VECTOR(6 downto 0);  -- Ones digit (BCD)
        LEDR : out STD_LOGIC_VECTOR(4 downto 0)   -- Carry + Sum Output LEDs
    );
end C4M1P4;

architecture Behavioral of C4M1P4 is
    signal SUM  : STD_LOGIC_VECTOR(4 downto 0);  -- 5-bit binary sum
    signal BCD  : STD_LOGIC_VECTOR(7 downto 0);  -- BCD result
begin
    -- Compute binary sum (X + Y + cin)
    SUM(3 downto 0) <= std_logic_vector(unsigned(X) + unsigned(Y) + unsigned'("0" & cin));

    SUM(4) <= (X(3) AND Y(3)) OR (X(3) AND cin) OR (Y(3) AND cin); -- Carry-out

    -- Convert SUM into BCD using logic (Part II)
    BCD(3 downto 0) <= SUM(3 downto 0);  -- Ones digit
    BCD(7 downto 4) <= "0000" when SUM(4) = '0' else "0001"; -- Tens digit

    -- LED Display for debugging
    LEDR(3 downto 0) <= SUM(3 downto 0);
    LEDR(4) <= SUM(4); -- Carry-out

    -- Map BCD result to 7-segment displays
    S1 <= "1000000" when BCD(7 downto 4) = "0000" else "1111001"; -- Displays 0 or 1
    S0 <= "1000000" when BCD(3 downto 0) = "0000" else
          "1111001" when BCD(3 downto 0) = "0001" else
          "0100100" when BCD(3 downto 0) = "0010" else
          "0110000" when BCD(3 downto 0) = "0011" else
          "0011001" when BCD(3 downto 0) = "0100" else
          "0010010" when BCD(3 downto 0) = "0101" else
          "0000010" when BCD(3 downto 0) = "0110" else
          "1111000" when BCD(3 downto 0) = "0111" else
          "0000000" when BCD(3 downto 0) = "1000" else
          "0010000" when BCD(3 downto 0) = "1001";
end Behavioral;
