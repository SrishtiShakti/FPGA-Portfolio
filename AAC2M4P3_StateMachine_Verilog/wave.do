onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /AAC2M4P3_tb/delay
add wave -noupdate /AAC2M4P3_tb/clk_period
add wave -noupdate /AAC2M4P3_tb/clock_tb
add wave -noupdate /AAC2M4P3_tb/reset_n_tb
add wave -noupdate /AAC2M4P3_tb/In1_tb
add wave -noupdate /AAC2M4P3_tb/Out1_tb
add wave -noupdate /AAC2M4P3_tb/i
add wave -noupdate /AAC2M4P3_tb/j
add wave -noupdate /AAC2M4P3_tb/k
add wave -noupdate /AAC2M4P3_tb/ErrorCount
add wave -noupdate /AAC2M4P3_tb/score
add wave -noupdate /AAC2M4P3_tb/FirstError
add wave -noupdate /AAC2M4P3_tb/ValidCheck
add wave -noupdate /AAC2M4P3_tb/testresults
add wave -noupdate /AAC2M4P3_tb/vector
add wave -noupdate /AAC2M4P3_tb/address
add wave -noupdate /AAC2M4P3_tb/data
add wave -noupdate /AAC2M4P3_tb/rom
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
WaveRestoreZoom {140050 ps} {141050 ps}
