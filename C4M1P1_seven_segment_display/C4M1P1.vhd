library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity C4M1P1 is
    Port (
        SW : in STD_LOGIC_VECTOR(7 downto 0);
        HEX0 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX1 : out STD_LOGIC_VECTOR(6 downto 0)
    );
end C4M1P1;

architecture Behavioral of C4M1P1 is

function BCD_To_7Seg (BCD: STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
begin
    case BCD is
        when "0000" => return "1000000"; -- 0
        when "0001" => return "1111001"; -- 1
        when "0010" => return "0100100"; -- 2
        when "0011" => return "0110000"; -- 3
        when "0100" => return "0011001"; -- 4
        when "0101" => return "0010010"; -- 5
        when "0110" => return "0000010"; -- 6
        when "0111" => return "1111000"; -- 7
        when "1000" => return "0000000"; -- 8
        when "1001" => return "0010000"; -- 9
        when others => return "1111111"; -- Blank for invalid inputs (don't care)
    end case;
end BCD_To_7Seg;

begin
    HEX1 <= BCD_To_7Seg(SW(7 downto 4)); -- Display upper nibble on HEX1
    HEX0 <= BCD_To_7Seg(SW(3 downto 0)); -- Display lower nibble on HEX0
end Behavioral;
