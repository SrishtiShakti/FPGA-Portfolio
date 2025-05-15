onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_c4m1p5/A_tb
add wave -noupdate /tb_c4m1p5/B_tb
add wave -noupdate /tb_c4m1p5/cin_tb
add wave -noupdate /tb_c4m1p5/S1_tb
add wave -noupdate /tb_c4m1p5/S0_tb
add wave -noupdate /tb_c4m1p5/LEDR_tb
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
WaveRestoreZoom {3999050 ps} {4001138 ps}
