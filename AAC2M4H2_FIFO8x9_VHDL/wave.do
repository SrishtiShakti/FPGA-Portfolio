onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /aac2m2h2_tb/clk_tb
add wave -noupdate /aac2m2h2_tb/rst_tb
add wave -noupdate /aac2m2h2_tb/RdPtrClr_tb
add wave -noupdate /aac2m2h2_tb/WrPtrClr_tb
add wave -noupdate /aac2m2h2_tb/rdinc_tb
add wave -noupdate /aac2m2h2_tb/wrinc_tb
add wave -noupdate /aac2m2h2_tb/DataIn_tb
add wave -noupdate /aac2m2h2_tb/DataOut_tb
add wave -noupdate /aac2m2h2_tb/rden_tb
add wave -noupdate /aac2m2h2_tb/wren_tb
add wave -noupdate /aac2m2h2_tb/simend
add wave -noupdate /aac2m2h2_tb/ValidCheck
add wave -noupdate /aac2m2h2_tb/ROM
add wave -noupdate /aac2m2h2_tb/delay
add wave -noupdate /aac2m2h2_tb/Points
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
WaveRestoreZoom {334050 ps} {335050 ps}
