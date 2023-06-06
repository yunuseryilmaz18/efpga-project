.DEFAULT_GOAL:= xrun


xrun:
	xrun -f fpga_top.f -gui -access +rwc -ALLOWREDEFINITION -input restore.tcl

vsim:
	vsim -do questa_run.do ./sw/outputs/hex/picosoc_test.hex

clean:
	rm -rf xcelium.d/
	rm -rf waves.shm/
	rm -f xrun.history
	rm -f xrun.log
	rm -f xrun.key
	rm -f ../xrun.history
	rm -f ../xrun.log
	rm -rf .simvision/
