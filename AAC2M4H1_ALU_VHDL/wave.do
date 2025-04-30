onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /aac2m2h1_tb/A_tb
add wave -noupdate /aac2m2h1_tb/B_tb
add wave -noupdate /aac2m2h1_tb/OP_tb
add wave -noupdate /aac2m2h1_tb/Points
add wave -noupdate /aac2m2h1_tb/ROM
add wave -noupdate /aac2m2h1_tb/ValidCheck
add wave -noupdate /aac2m2h1_tb/Y_tb
add wave -noupdate /aac2m2h1_tb/delay
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
WaveRestoreZoom {99050 ps} {100050 ps}
