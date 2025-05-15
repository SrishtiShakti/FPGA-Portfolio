onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_c4m1p4/X_tb
add wave -noupdate /tb_c4m1p4/Y_tb
add wave -noupdate /tb_c4m1p4/cin_tb
add wave -noupdate /tb_c4m1p4/S1_tb
add wave -noupdate /tb_c4m1p4/S0_tb
add wave -noupdate /tb_c4m1p4/LEDR_tb
add wave -noupdate /tb_c4m1p4/cin_conv
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3605891 ps} 0}
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
WaveRestoreZoom {2560624 ps} {2562712 ps}
