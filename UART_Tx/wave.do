onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /uart_tx/CLKS_PER_BIT
add wave -noupdate /uart_tx/i_Clk
add wave -noupdate /uart_tx/i_TX_DV
add wave -noupdate /uart_tx/i_TX_Byte
add wave -noupdate /uart_tx/o_TX_Active
add wave -noupdate /uart_tx/o_TX_Serial
add wave -noupdate /uart_tx/o_TX_Done
add wave -noupdate /uart_tx/current_state
add wave -noupdate /uart_tx/next_state
add wave -noupdate /uart_tx/r_Clk_Count
add wave -noupdate /uart_tx/r_Bit_Index
add wave -noupdate /uart_tx/r_TX_Data
add wave -noupdate /uart_tx/r_TX_Done
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6392488058 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {6392487400 ps} {6392488992 ps}
