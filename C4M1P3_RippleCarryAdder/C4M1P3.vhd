library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C4M1P3 is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        cin  : in  STD_LOGIC;  -- Carry-in
        S    : out STD_LOGIC_VECTOR(3 downto 0);
        cout : out STD_LOGIC   -- Final carry-out
    );
end C4M1P3;

architecture Behavioral of C4M1P3 is
    -- Internal carry signals
    signal carry: STD_LOGIC_VECTOR(4 downto 0);

begin
    carry(0) <= cin;

    -- Instantiate 4 full adders
    FA0: entity work.C4M1P3_FA port map(A(0), B(0), carry(0), S(0), carry(1));
    FA1: entity work.C4M1P3_FA port map(A(1), B(1), carry(1), S(1), carry(2));
    FA2: entity work.C4M1P3_FA port map(A(2), B(2), carry(2), S(2), carry(3));
    FA3: entity work.C4M1P3_FA port map(A(3), B(3), carry(3), S(3), carry(4));

    -- Final carry-out
    cout <= carry(4);

end Behavioral;
