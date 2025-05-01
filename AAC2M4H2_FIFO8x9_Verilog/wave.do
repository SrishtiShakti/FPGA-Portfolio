onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /AAC2M4H2_tb/delay
add wave -noupdate /AAC2M4H2_tb/clk_period
add wave -noupdate /AAC2M4H2_tb/clk_tb
add wave -noupdate /AAC2M4H2_tb/rst_tb
add wave -noupdate /AAC2M4H2_tb/RdPtrClr_tb
add wave -noupdate /AAC2M4H2_tb/WrPtrClr_tb
add wave -noupdate /AAC2M4H2_tb/RdInc_tb
add wave -noupdate /AAC2M4H2_tb/WrInc_tb
add wave -noupdate /AAC2M4H2_tb/rden_tb
add wave -noupdate /AAC2M4H2_tb/wren_tb
add wave -noupdate /AAC2M4H2_tb/DataIn_tb
add wave -noupdate /AAC2M4H2_tb/DataOut_tb
add wave -noupdate /AAC2M4H2_tb/i
add wave -noupdate /AAC2M4H2_tb/j
add wave -noupdate /AAC2M4H2_tb/k
add wave -noupdate /AAC2M4H2_tb/ErrorCount
add wave -noupdate /AAC2M4H2_tb/score
add wave -noupdate /AAC2M4H2_tb/FirstError
add wave -noupdate /AAC2M4H2_tb/ValidCheck
add wave -noupdate /AAC2M4H2_tb/testresults
add wave -noupdate /AAC2M4H2_tb/vector
add wave -noupdate /AAC2M4H2_tb/address
add wave -noupdate /AAC2M4H2_tb/data
add wave -noupdate /AAC2M4H2_tb/rom
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {20571050 ps} {20572050 ps}
