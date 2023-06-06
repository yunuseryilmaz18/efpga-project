
# XM-Sim Command File
# TOOL:	xmsim	21.03-s009
#
#
# You can restore this configuration with:
#
#      xrun -f fpga_top.f -access +rwc -ALLOWREDEFINITION -input restore.tcl
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
alias . run
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves picosoc_tb.uut.u_efpga.io_select0 picosoc_tb.uut.u_efpga.IO_PAD picosoc_tb.uut.u_efpga.clk_i picosoc_tb.uut.u_efpga.config_clk picosoc_tb.uut.u_efpga.config_done picosoc_tb.uut.u_efpga.config_done_d picosoc_tb.uut.u_efpga.fpga_rst picosoc_tb.uut.u_efpga.fpga_rst_d picosoc_tb.uut.u_efpga.gpio_in0 picosoc_tb.uut.u_efpga.gpio_in1 picosoc_tb.uut.u_efpga.gpio_out0 picosoc_tb.uut.u_efpga.gpio_out1 picosoc_tb.uut.u_efpga.io_select1 picosoc_tb.uut.u_efpga.operating_clk picosoc_tb.uut.u_efpga.prog picosoc_tb.uut.u_efpga.prog_rst picosoc_tb.uut.u_efpga.prog_rst_d picosoc_tb.uut.u_efpga.read_en picosoc_tb.uut.u_efpga.rst_ni picosoc_tb.uut.u_efpga.wb_efpga_i picosoc_tb.uut.u_efpga.wb_efpga_o picosoc_tb.uut.u_efpga.write_en
probe -create -database waves picosoc_tb.uut.u_efpga.configurator.prog_rst picosoc_tb.uut.u_efpga.configurator.addr_cnt picosoc_tb.uut.u_efpga.configurator.addr_cnt_next picosoc_tb.uut.u_efpga.configurator.clk picosoc_tb.uut.u_efpga.configurator.config_done picosoc_tb.uut.u_efpga.configurator.config_done_next picosoc_tb.uut.u_efpga.configurator.fpga_rst picosoc_tb.uut.u_efpga.configurator.fpga_rst_next picosoc_tb.uut.u_efpga.configurator.prog picosoc_tb.uut.u_efpga.configurator.prog_next picosoc_tb.uut.u_efpga.configurator.prog_rst_next picosoc_tb.uut.u_efpga.configurator.rst picosoc_tb.uut.u_efpga.configurator.rst_d picosoc_tb.uut.u_efpga.configurator.rst_posedge picosoc_tb.uut.u_efpga.configurator.settle_cnt picosoc_tb.uut.u_efpga.configurator.settle_cnt_next picosoc_tb.uut.u_efpga.configurator.state picosoc_tb.uut.u_efpga.configurator.state_next
probe -create -database waves

simvision -input restore.tcl.svcf
run 80000