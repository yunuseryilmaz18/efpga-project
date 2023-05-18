
///////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     Teknofest Chip Competition
//***********************************************************************************************// 
// Create Date: 04/07/2022
// Module Name: uart_driver.c
// Description: UART driver for teknofest.
//
//***********************************************************************************************// 
//              TODO: - 
///////////////////////////////////////////////////////////////////////////////////////////////////

// #include <stdio.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>

// PWM REGISTER ADDRESSES
volatile uint32_t *PWM0_CTRL 	    = (uint32_t*)0x20020000;
volatile uint32_t *PWM1_CTRL 	    = (uint32_t*)0x20020004;
volatile uint32_t *PWM0_PERIOD 	    = (uint32_t*)0x20020008;
volatile uint32_t *PWM1_PERIOD 	    = (uint32_t*)0x2002000c;
volatile uint32_t *PWM0_THRESHOLD_1 = (uint32_t*)0x20020010;
volatile uint32_t *PWM0_THRESHOLD_2 = (uint32_t*)0x20020014;
volatile uint32_t *PWM1_THRESHOLD_1 = (uint32_t*)0x20020018;
volatile uint32_t *PWM1_THRESHOLD_2 = (uint32_t*)0x2002001c;
volatile uint32_t *PWM0_STEP 	    = (uint32_t*)0x20020020;
volatile uint32_t *PWM1_STEP 	    = (uint32_t*)0x20020024;
volatile uint32_t *PWM0_OUTPUT 	    = (uint32_t*)0x20020028;
volatile uint32_t *PWM1_OUTPUT 	    = (uint32_t*)0x2002002c;

typedef enum {
        PWM_IDLE = 0,
        PWM_STANDARD = 1,
        PWM_HEARTBEAT = 2
} pwm_mode_t;


// Setting & getting control of different PWM signals
void pwm_set_control (unsigned int pwm_number, pwm_mode_t mode){
	if (pwm_number == 0){
        *PWM0_CTRL = mode;
    } 
    else if (pwm_number == 1){
        *PWM1_CTRL = mode;
    }
    else {
                
    }
}
int pwm_get_control (unsigned int pwm_number, pwm_mode_t mode){
	pwm_mode_t mode;
	if (pwm_number == 0){
		mode = *PWM0_CTRL;
    } 
    else if (pwm_number == 1){
        mode = *PWM1_CTRL;
    }
    else {
        return 0;     
    }
	return mode;
}
// Setting & getting period of different PWM signals
void pwm_set_period_counter (unsigned int pwm_number, unsigned int period_counter){
	if (pwm_number == 0){
        *PWM0_PERIOD = period_counter;
    } 
    else if (pwm_number == 1){
        *PWM1_PERIOD = period_counter;
    }
    else {
                
    }
}
int pwm_get_period_counter (unsigned int pwm_number){
	int period_counter;
	if (pwm_number == 0){
		period = *PWM0_PERIOD;
    } 
    else if (pwm_number == 1){
        period = *PWM1_PERIOD;
    }
    else {
        return 0;     
    }
	return period_counter;
}
// Setting & getting threshold of different PWM signals
void pwm_set_threshold_counter (unsigned int pwm_number, unsigned int threshold_number, unsigned int threshold_counter){
	if (pwm_number == 0 && threshold_number == 0){
        *PWM0_THRESHOLD_1 = threshold_counter;
    } 
    else if (pwm_number == 0 && threshold_number == 1){
        *PWM0_THRESHOLD_2 = threshold_counter;
    }
	else if (pwm_number == 1 && threshold_number == 0){
        *PWM1_THRESHOLD_1 = threshold_counter;
    }
	else if (pwm_number == 1 && threshold_number == 1){
        *PWM1_THRESHOLD_2 = threshold_counter;
    }
    else {
                
    }
}
int pwm_get_threshold_counter (unsigned int pwm_number, unsigned int threshold_number){
	int threshold_counter;
	if (pwm_number == 0 && threshold_number == 0){
        threshold_counter = *PWM0_THRESHOLD_1;
    } 
    else if (pwm_number == 0 && threshold_number == 1){
        threshold_counter = *PWM0_THRESHOLD_2;
    }
	else if (pwm_number == 1 && threshold_number == 0){
        threshold_counter = *PWM1_THRESHOLD_1;
    }
	else if (pwm_number == 1 && threshold_number == 1){
        threshold_counter = *PWM1_THRESHOLD_2;
    }
    else {
        return 0;    
    }
	return threshold_counter;	
}
// Setting & getting step of different PWM signals
void pwm_set_step_counter (unsigned int pwm_number, unsigned int step_counter){
	if (pwm_number == 0){
        *PWM0_PERIOD = step_counter;
    } 
    else if (pwm_number == 1){
        *PWM1_PERIOD = step_counter;
    }
    else {
                
    }
}
int pwm_get_step_counter (unsigned int pwm_number){
	int step_counter;
	if (pwm_number == 0){
		step_counter = *PWM0_STEP;
    } 
    else if (pwm_number == 1){
        step_counter = *PWM1_STEP;
    }
    else {
        return 0;     
    }
	return step_counter;
}
// Getting output of different PWM signals
int pwm_get_output (unsigned int pwm_number){
	int output;
	if (pwm_number == 0){
		output = *PWM0_OUTPUT;
    } 
    else if (pwm_number == 1){
        output = *PWM1_OUTPUT;
    }
    else {
        return 0;     
    }
	return output;
}