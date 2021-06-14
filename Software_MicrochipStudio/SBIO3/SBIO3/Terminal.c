/*
 * Terminal.c
 *
 * Created: 13.06.2021 14:45:11
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
#include "TWI.h"
#include "Terminal.h"

void Show_Terminal(void)
{
	_Erase_Putty();
	printf("SBIO V0.3 \n");
	printf("Strom: %f \n", ADW0.ADC_Average[3]);
	printf("Spannung: %f \n", ADW0.ADC_Average[2]);
	printf("GNDHUMI: %f \n", (ADW0.ADC_Average[1] + ADW0.ADC_Average[0]) / 2 );
	printf("HUMI: %3.1f \n", TWI.HUMI_Average);
	printf("TEMP: %3.1f \n", TWI.TEMP_Average);
	printf("LUMI: %d \n", TWI.LUMI_Average);
}