vlib work

vlog ./src/packages/*.sv ./src/peripherals/*/*.sv ./src/peripherals/*.sv ./src/picosoc/*.sv ./sim/*.sv ./src/peripherals/efpga/*.v

if {$argc > 0} {
  vsim work.picosoc_tb -GBOOT_FILE=$1 -t ns -voptargs=+acc=npr
} else {
  vsim work.picosoc_tb -t ns -voptargs=+acc=npr
}

################## GENERAL A& IO PORTS ##################

add wave -position insertpoint sim/:picosoc_tb:uut:*
add wave -position insertpoint sim/:picosoc_tb:uut:u_efpga:gpio*

################## SETTINGS ##################

configure wave -namecolwidth 250
configure wave -valuecolwidth 50
configure wave -justifyvalue left
configure wave -signalnamewidth 1

# run simulation for 200 nanoseconds
run 5000
wave zoom full

