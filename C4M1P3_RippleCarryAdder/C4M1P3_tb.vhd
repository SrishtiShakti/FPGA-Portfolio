library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity tb_C4M1P3 is
end tb_C4M1P3;

architecture Behavioral of tb_C4M1P3 is
    -- Signals for the test bench
    signal A_tb    : STD_LOGIC_VECTOR(3 downto 0);
    signal B_tb    : STD_LOGIC_VECTOR(3 downto 0);
    signal cin_tb  : STD_LOGIC;
    signal S_tb    : STD_LOGIC_VECTOR(3 downto 0);
    signal cout_tb : STD_LOGIC;
    signal cin_conv : STD_LOGIC_VECTOR(0 downto 0);  -- Temporary signal
    
    -- File Declaration for saving results
    file out_file : text;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.C4M1P3
        port map (
            A    => A_tb,
            B    => B_tb,
            cin  => cin_tb,
            S    => S_tb,
            cout => cout_tb
        );

    -- Stimulus Process (Exhaustive Testing)
    process
        variable l : line;
        variable i, j, k : integer;
    begin
        -- Open the output file for writing results
        file_open(out_file, "vectorh.out", write_mode);

        -- Iterate through all combinations of A, B, and cin (256 total)
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                for k in 0 to 1 loop
                    -- Assign values to inputs
                    A_tb   <= std_logic_vector(to_unsigned(i, 4));
                    B_tb   <= std_logic_vector(to_unsigned(j, 4));
                    
                    -- Convert integer `k` to a single-bit std_logic
                    cin_conv <= std_logic_vector(to_unsigned(k, 1)); 
                    cin_tb   <= cin_conv(0); -- Extract first bit from the stored result

                    -- Wait for circuit to process input
                    wait for 20 ns;

                    -- Write values to file
                    write(l, string'("A = "));
                    write(l, A_tb);
                    write(l, string'("  B = "));
                    write(l, B_tb);
                    write(l, string'("  cin = "));
                    write(l, cin_tb);
                    write(l, string'("  SUM = "));
                    write(l, S_tb);
                    write(l, string'("  cout = "));
                    write(l, cout_tb);

                    writeline(out_file, l);
                end loop;
            end loop;
        end loop;

        -- Close the file after testing all cases
        file_close(out_file);
        wait;  -- Halt process
    end process;
end Behavioral;

