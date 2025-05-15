library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity C4M1P5 is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);  -- First decimal digit (BCD)
        B    : in  STD_LOGIC_VECTOR(3 downto 0);  -- Second decimal digit (BCD)
        cin  : in  STD_LOGIC;                     -- Carry-in
        S1   : out STD_LOGIC_VECTOR(6 downto 0);  -- Tens digit (BCD)
        S0   : out STD_LOGIC_VECTOR(6 downto 0);  -- Ones digit (BCD)
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0);  -- Display A (used instead of HEX5)
        HEX3 : out STD_LOGIC_VECTOR(6 downto 0);  -- Display B
        LEDR : out STD_LOGIC_VECTOR(4 downto 0)   -- Debugging LEDs
    );
end C4M1P5;

architecture Behavioral of C4M1P5 is
    signal T0  : UNSIGNED(4 downto 0);  -- 5-bit sum (includes carry)
    signal Z0  : UNSIGNED(4 downto 0);  -- Correction value
    signal c1  : STD_LOGIC;             -- Carry-out
begin
    -- Step 1: Compute raw sum
    T0 <= UNSIGNED(A) + UNSIGNED(B) + UNSIGNED'("0000" & cin);

    -- Step 2: Check if sum exceeds 9
    process(T0)
    begin
        if (T0 > "01001") then  -- Compare against decimal 9
            Z0 <= "01010";  -- Z0 = 10 (BCD correction)
            c1 <= '1';      -- Carry-out for next decimal place
        else
            Z0 <= "00000";  -- No correction needed
            c1 <= '0';
        end if;
    end process;

    -- Step 3: Compute final BCD sum

    S0 <= "00" & std_logic_vector(T0 - Z0);  -- Padded to 7 bits for S0
    S1 <= "1000000" when c1 = '0' else "1111001";  -- Displays 0 or 1

    -- Debug LEDs: Show raw sum (before correction)
    LEDR(3 downto 0) <= std_logic_vector(T0(3 downto 0));
    LEDR(4) <= c1;  -- Carry-out

    -- Display A and B on HEX4 and HEX3
    HEX4 <= "1000000" when A = "0000" else "1111001" when A = "0001" else
            "0100100" when A = "0010" else "0110000" when A = "0011" else
            "0011001" when A = "0100" else "0010010" when A = "0101" else
            "0000010" when A = "0110" else "1111000" when A = "0111" else
            "0000000" when A = "1000" else "0010000"; -- Display A on HEX4

    HEX3 <= "1000000" when B = "0000" else "1111001" when B = "0001" else
            "0100100" when B = "0010" else "0110000" when B = "0011" else
            "0011001" when B = "0100" else "0010010" when B = "0101" else
            "0000010" when B = "0110" else "1111000" when B = "0111" else
            "0000000" when B = "1000" else "0010000"; -- Display B on HEX3
end Behavioral;
