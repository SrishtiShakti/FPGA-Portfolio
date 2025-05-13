library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C4M1P3_FA is
    Port (
        a   : in  STD_LOGIC;
        b   : in  STD_LOGIC;
        ci  : in  STD_LOGIC;  -- Carry-in
        s   : out STD_LOGIC;  -- Sum
        co  : out STD_LOGIC   -- Carry-out
    );
end C4M1P3_FA;

architecture Behavioral of C4M1P3_FA is
begin
    s  <= a XOR b XOR ci;
    co <= (a AND b) OR (b AND ci) OR (a AND ci);
end Behavioral;
