library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.ALL;

entity tb_C4M1P1 is
end tb_C4M1P1;

architecture behavior of tb_C4M1P1 is
    -- DUT (Design Under Test) Component
    component C4M1P1
        Port (
            SW : in STD_LOGIC_VECTOR(7 downto 0);
            HEX0 : out STD_LOGIC_VECTOR(6 downto 0);
            HEX1 : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    -- Test Signals
    signal SW_tb : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal HEX0_tb, HEX1_tb : STD_LOGIC_VECTOR(6 downto 0);

    -- File Handling
    file output_file : text open write_mode is "vectorh.out";

begin

    -- Instantiate the DUT
    uut: C4M1P1 port map (
        SW => SW_tb,
        HEX0 => HEX0_tb,
        HEX1 => HEX1_tb
    );

    -- Test Stimulus Process
    stimulus: process
        variable out_line : line;
    begin
        for i in 0 to 255 loop
            SW_tb <= std_logic_vector(to_unsigned(i, 8)); -- Apply input
            
            wait for 10 ns; -- Wait for DUT to process
            
            -- Write results to file
            write(out_line, string'("Input SW: "));
            write(out_line, SW_tb);
            write(out_line, string'(" | HEX0: "));
            write(out_line, HEX0_tb);
            write(out_line, string'(" | HEX1: "));
            write(out_line, HEX1_tb);
            writeline(output_file, out_line);
        end loop;

        -- End Simulation
        wait;
    end process;

end behavior;
