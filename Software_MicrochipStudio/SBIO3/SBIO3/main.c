/*
 * UART_Routine.h
 * Inspired by Sparkfun
 * Created: 28.05.2021 12:58:57
 *  Author: Maximilian
 */
#define F_CPU 16000000

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>


#include "UART_Routine.h"
#include "IO.h"


int main (void)
{
	//Init_GPIO(&PWM);
    UART_Init(&UART0);


    while(1)
    {

    	//uint8_t i = Get_Input(&Input1_Port, Input1);
		_DBG(ON)
		printf("Hallo");

		UART_RX_Handler(&UART0);
		RX_Taskhandler(&UART0);
    }

    return(0);
}






