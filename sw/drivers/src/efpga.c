#include <stdio.h>
#include "../../chip/picorv/platform.h"

void write_gpio0 (int x) {
	EFPGA_REG(0) = x;
}

void write_gpio1 (int x) {
	EFPGA_REG(4) = x;
}

int read_gpio0() {
	int    *gpio0 = (int *) 0x42000000;
	return *gpio0;
}

int read_gpio1() {
	int    *gpio1 = (int *) 0x42000004;
	return *gpio1;
}

int read_efpga_csr() {
	int    *csr = (int *) 0x42000000;
	return *csr;
}
