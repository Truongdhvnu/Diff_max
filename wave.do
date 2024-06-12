onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /max_diff_tb/uut/max_diff_controller_inst/state
add wave -noupdate /max_diff_tb/nReset_in
add wave -noupdate /max_diff_tb/uut/max_diff_controller_inst/nReset_out
add wave -noupdate /max_diff_tb/Clk
add wave -noupdate /max_diff_tb/Start
add wave -noupdate -expand -group {input params} -radix unsigned /max_diff_tb/Addr_in
add wave -noupdate -expand -group {input params} -radix unsigned /max_diff_tb/N_minus1
add wave -noupdate -expand -group addressing /max_diff_tb/uut/max_diff_controller_inst/addr_ld
add wave -noupdate -expand -group addressing -radix unsigned /max_diff_tb/R_addr
add wave -noupdate -expand -group addressing /max_diff_tb/R_en
add wave -noupdate -expand -group addressing /max_diff_tb/R_ready
add wave -noupdate -expand -group data /max_diff_tb/uut/max_diff_controller_inst/data_ld
add wave -noupdate -expand -group data -radix decimal /max_diff_tb/Data_in
add wave -noupdate -expand -group data -radix decimal /max_diff_tb/uut/max_diff_datapath_inst/received_data
add wave -noupdate -expand -group {min maxing} /max_diff_tb/uut/max_diff_datapath_inst/minmax_ld_en
add wave -noupdate -expand -group {min maxing} /max_diff_tb/uut/max_diff_datapath_inst/max_ld
add wave -noupdate -expand -group {min maxing} -color Cyan -radix decimal /max_diff_tb/uut/max_diff_datapath_inst/cur_max
add wave -noupdate -expand -group {min maxing} /max_diff_tb/uut/max_diff_datapath_inst/min_ld
add wave -noupdate -expand -group {min maxing} -color Cyan -radix decimal /max_diff_tb/uut/max_diff_datapath_inst/cur_min
add wave -noupdate -expand -group {min maxing} /max_diff_tb/uut/max_diff_datapath_inst/index_gt_Nminus1
add wave -noupdate -expand -group {min maxing} /max_diff_tb/uut/max_diff_datapath_inst/index_en
add wave -noupdate -expand -group {min maxing} -color Cyan -radix unsigned /max_diff_tb/uut/max_diff_datapath_inst/index_cnt
add wave -noupdate -expand -group result /max_diff_tb/W_valid
add wave -noupdate -expand -group result /max_diff_tb/NS_ready
add wave -noupdate -expand -group result -radix decimal -childformat {{/max_diff_tb/Diff(7) -radix decimal} {/max_diff_tb/Diff(6) -radix decimal} {/max_diff_tb/Diff(5) -radix decimal} {/max_diff_tb/Diff(4) -radix decimal} {/max_diff_tb/Diff(3) -radix decimal} {/max_diff_tb/Diff(2) -radix decimal} {/max_diff_tb/Diff(1) -radix decimal} {/max_diff_tb/Diff(0) -radix decimal}} -subitemconfig {/max_diff_tb/Diff(7) {-height 17 -radix decimal} /max_diff_tb/Diff(6) {-height 17 -radix decimal} /max_diff_tb/Diff(5) {-height 17 -radix decimal} /max_diff_tb/Diff(4) {-height 17 -radix decimal} /max_diff_tb/Diff(3) {-height 17 -radix decimal} /max_diff_tb/Diff(2) {-height 17 -radix decimal} /max_diff_tb/Diff(1) {-height 17 -radix decimal} /max_diff_tb/Diff(0) {-height 17 -radix decimal}} /max_diff_tb/Diff
add wave -noupdate /max_diff_tb/Done
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {62192 ps} 0}
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
WaveRestoreZoom {0 ps} {315 ns}
