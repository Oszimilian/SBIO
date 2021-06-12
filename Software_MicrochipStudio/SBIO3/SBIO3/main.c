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
#include <util/delay.h>


#include "UART_Routine.h"
#include "IO.h"
#include "ADC_Routine.h"
#include "Frontpanel.h"


int main (void)
{
	Init_GPIO(&PWM);
    UART_Init(&UART0);
	Init_ADC(&ADW0);


    while(1)
    {
		printf("\033\143");
		printf("ADC: %1.4f A \r\n", (ADW0.ADC_Average[3] * 0.035) / 56);
		
		_delay_ms(1000);
		
		
		for (uint8_t i = 0; i <= 15 ; i++) Write_Frontpanel(&Frontpanel, i, ON);
		
		Show_Frontpanel(&Frontpanel);

		Start_ADC(&ADW0);
		Calculate_ADC(&ADW0);
		UART_RX_Handler(&UART0);
		RX_Taskhandler(&UART0);
    }

    return(0);
}






