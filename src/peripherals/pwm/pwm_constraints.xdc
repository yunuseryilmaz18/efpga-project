## Clock signal
create_clock -add -name main_clock -period 10.00 -waveform {0 5} [get_ports {clk_i}];

set_input_delay -clock main_clock 1 [get_ports rst_ni]
set_input_delay -clock main_clock 1 [get_ports tl_i*]

set_output_delay -clock main_clock 1 [get_ports tl_o*]
set_output_delay -clock main_clock 1 [get_ports pwm0_o]
set_output_delay -clock main_clock 1 [get_ports pwm1_o]
#set_output_delay -clock main_clock -max -5 [get_ports cio_pwm_o*]
#set_output_delay -clock main_clock -min 0 [get_ports cio_pwm_o*]

#set_property file_type "Verilog Header" [get_files prim_assert.sv]
#set_property is_global_include true [get_files prim_assert.sv] 

set_load 5 [get_ports tl_o*]
set_load 5 [get_ports pwm*_o]

set_units -capacitance pF -current mA -voltage V -power mW -resistance Ohm
