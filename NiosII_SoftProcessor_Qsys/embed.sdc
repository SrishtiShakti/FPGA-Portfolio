# Create a 10 ns virtual clock for the inputs
create_clock -name {clk_in_vir} -period 10.000  

# Create a 10 ns virtual clock for the outputs
create_clock -name {clk_out_vir} -period 10.000

#  Constrain all input data ports
set data_trace_min   0.35
set data_trace_max   0.6
set clk_skew_min   -0.35
set clk_skew_max    0.35
set ext_tco_min     0.7
set ext_tco_max     2.1
set_input_delay -clock {clk_in_vir} -max [expr $data_trace_max - $clk_skew_min + $ext_tco_max]  [get_ports { * }]
set_input_delay -clock {clk_in_vir} -min [expr $data_trace_min - $clk_skew_max + $ext_tco_min]  [get_ports { * }]

# Constrain all output data ports
set Th   1.0
set Tsu  1.0
set_output_delay -clock { clk_out_vir } -max [expr $data_trace_max - $clk_skew_min + $Tsu] [get_ports { * }]
set_output_delay -clock { clk_out_vir } -min [expr $data_trace_min - $clk_skew_max - $Th] [get_ports { * }]

create_clock -name inclk0 -period 20.0 [get_ports inclk0]
create_generated_clock -name clk_100MHz \
  -source [get_ports inclk0] \
  -multiply_by 2 \
  [ get_pins { altpll_0 |co|c2 } ]

