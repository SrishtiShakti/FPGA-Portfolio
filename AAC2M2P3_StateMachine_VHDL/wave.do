onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /aac2m2p3_tb/CLK_tb
add wave -noupdate /aac2m2p3_tb/RST_tb
add wave -noupdate /aac2m2p3_tb/In1_tb
add wave -noupdate /aac2m2p3_tb/Out1_tb
add wave -noupdate /aac2m2p3_tb/simend
add wave -noupdate /aac2m2p3_tb/ValidCheck
add wave -noupdate /aac2m2p3_tb/ROM
add wave -noupdate /aac2m2p3_tb/delay
add wave -noupdate /aac2m2p3_tb/Points
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
WaveRestoreZoom {214050 ps} {215050 ps}
