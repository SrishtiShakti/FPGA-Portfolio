library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTIO.ALL;             -- Provides file I/O declarations and operations
use IEEE.NUMERIC_STD.ALL;       -- For conversion functions (to_unsigned)
use IEEE.STD_LOGIC_TEXTIO.ALL;   -- Provides write procedures for std_logic_vector

entity tb_C4M1P2 is
  -- Test bench entity: no ports.
end tb_C4M1P2;

architecture Behavioral of tb_C4M1P2 is

  -- Declare signals to connect to your design (Unit Under Test, UUT).
  signal SW_tb    : std_logic_vector(3 downto 0);
  signal HEX0_tb  : std_logic_vector(6 downto 0);
  signal HEX1_tb  : std_logic_vector(6 downto 0);

  -- Declare the output file at the architecture level.
  file out_file : text;  -- Declaration without an initializer

begin

  -- Instantiate your design (the UUT)
  uut: entity work.C4M1P2
    port map (
      SW   => SW_tb,
      HEX0 => HEX0_tb,
      HEX1 => HEX1_tb
    );

  ------------------------------------------------------------------------------
  -- Stimulus Process:
  -- This process will loop through all possible 4-bit values (0 to 15), wait for a short
  -- duration after each assignment to allow outputs to settle, and then write the inputs
  -- and outputs into the file "vectorh.out"
  ------------------------------------------------------------------------------
  stim_proc: process
    variable l : line;   -- Variable used to build a line of text
    variable i : integer;
  begin
    -- Open the file "vectorh.out" for writing.
    file_open(out_file, "vectorh.out", write_mode);
    
    -- Loop through all 4-bit values: 0 to 15.
    for i in 0 to 15 loop
      -- Apply test vector by converting integer to a 4-bit std_logic_vector.
      SW_tb <= std_logic_vector(to_unsigned(i, 4));
      wait for 20 ns;  -- Wait for outputs to settle
      
      -- Build the output line.
      write(l, string'("SW = "));
      write(l, SW_tb);
      write(l, string'("    HEX1 = "));
      write(l, HEX1_tb);
      write(l, string'("    HEX0 = "));
      write(l, HEX0_tb);
      
      -- Write the constructed line to the file.
      writeline(out_file, l);
    end loop;
    
    -- Close the file when finished.
    file_close(out_file);
    
    wait;  -- End the process.
  end process stim_proc;

end Behavioral;
