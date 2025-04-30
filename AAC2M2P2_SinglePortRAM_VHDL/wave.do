onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /aac2m2p2_tb/clock_tb
add wave -noupdate /aac2m2p2_tb/address_tb
add wave -noupdate /aac2m2p2_tb/data_tb
add wave -noupdate /aac2m2p2_tb/wren_tb
add wave -noupdate /aac2m2p2_tb/q_tb
add wave -noupdate /aac2m2p2_tb/simend
add wave -noupdate /aac2m2p2_tb/ValidCheck
add wave -noupdate /aac2m2p2_tb/ROM
add wave -noupdate /aac2m2p2_tb/delay
add wave -noupdate /aac2m2p2_tb/Points
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {513133194 ps} 0}
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
WaveRestoreZoom {513133100 ps} {513135188 ps}
