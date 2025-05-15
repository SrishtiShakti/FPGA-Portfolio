library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity tb_C4M1P5 is
end tb_C4M1P5;

architecture Behavioral of tb_C4M1P5 is
    signal A_tb    : STD_LOGIC_VECTOR(3 downto 0);
    signal B_tb    : STD_LOGIC_VECTOR(3 downto 0);
    signal cin_tb  : STD_LOGIC;
    signal S1_tb   : STD_LOGIC_VECTOR(6 downto 0);
    signal S0_tb   : STD_LOGIC_VECTOR(6 downto 0);
    signal LEDR_tb : STD_LOGIC_VECTOR(4 downto 0);
    file out_file  : text;
begin
    -- Instantiate the BCD Adder
    uut: entity work.C4M1P5
        port map (A => A_tb, B => B_tb, cin => cin_tb, S1 => S1_tb, S0 => S0_tb, LEDR => LEDR_tb);

    process
        variable l : line;
        variable i, j, k : integer;
    begin
        file_open(out_file, "vectorh.out", write_mode);
        for i in 0 to 9 loop
            for j in 0 to 9 loop
                for k in 0 to 1 loop
                    A_tb   <= std_logic_vector(to_unsigned(i, 4));
                    B_tb   <= std_logic_vector(to_unsigned(j, 4));
                    cin_tb <= std_logic(to_unsigned(k, 1)(0));

                    wait for 20 ns;

                    write(l, string'("A = "));
                    write(l, A_tb);
                    write(l, string'("  B = "));
                    write(l, B_tb);
                    write(l, string'("  cin = "));
                    write(l, cin_tb);
                    write(l, string'("  S1 = "));
                    write(l, S1_tb);
                    write(l, string'("  S0 = "));
                    write(l, S0_tb);
                    write(l, string'("  LEDR = "));
                    write(l, LEDR_tb);
                    writeline(out_file, l);
                end loop;
            end loop;
        end loop;
        file_close(out_file);
        wait;
    end process;
end Behavioral;
