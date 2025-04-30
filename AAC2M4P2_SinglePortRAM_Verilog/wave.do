onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /AAC2M4P2_tb/delay
add wave -noupdate /AAC2M4P2_tb/clk_period
add wave -noupdate /AAC2M4P2_tb/data_width
add wave -noupdate /AAC2M4P2_tb/address_width
add wave -noupdate /AAC2M4P2_tb/clock_tb
add wave -noupdate /AAC2M4P2_tb/we_tb
add wave -noupdate /AAC2M4P2_tb/address_tb
add wave -noupdate /AAC2M4P2_tb/d_tb
add wave -noupdate /AAC2M4P2_tb/q_tb
add wave -noupdate /AAC2M4P2_tb/i
add wave -noupdate /AAC2M4P2_tb/j
add wave -noupdate /AAC2M4P2_tb/k
add wave -noupdate /AAC2M4P2_tb/ErrorCount
add wave -noupdate /AAC2M4P2_tb/score
add wave -noupdate /AAC2M4P2_tb/FirstError
add wave -noupdate /AAC2M4P2_tb/ValidCheck
add wave -noupdate /AAC2M4P2_tb/testresults
add wave -noupdate /AAC2M4P2_tb/vector
add wave -noupdate /AAC2M4P2_tb/address
add wave -noupdate /AAC2M4P2_tb/data
add wave -noupdate /AAC2M4P2_tb/rom
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {153610148 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {153610050 ps} {153612138 ps}
