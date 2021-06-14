/*
 * ADC_Routine.c
 *
 * Created: 12.06.2021 19:58:55
 *  Author: Maximilian
 */ 

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "ADC_Routine.h"
#include "UART_Routine.h"

void Init_ADC (ADW *ADW0)
{
	ADW0->ADC_Channellist[0] = ON;
	ADW0->ADC_Channellist[1] = ON;
	ADW0->ADC_Channellist[2] = ON;
	ADW0->ADC_Channellist[3] = ON;
	ADW0->ADC_Channellist[4] = OFF;
	ADW0->ADC_Channellist[5] = OFF;
	ADW0->ADC_Channellist[6] = OFF;
	ADW0->ADC_Channellist[7] = OFF;
	
	//Speicherplatz reservieren
	ADW0->ADC_Val = malloc(8 * sizeof(uint16_t *));
	if (ADW0->ADC_Val == NULL) printf("ADC Zeile NULL \n");
	
	for (uint8_t i = 0; i <= (ADC_square - 1); i++)
	{
		 if (ADW0->ADC_Channellist[i]) ADW0->ADC_Val[i] = malloc(ADC_square * sizeof(uint16_t));
		 if (ADW0->ADC_Val[i] == NULL) printf("ADC Spalte: %d NULL \n", i);
	}
	
	ADMUX = (1<<REFS0);
	ADCSRA = (1<<ADEN) | (1<<ADSC) | (1<<ADPS2);
}

void Start_ADC (ADW *ADW0)
{
	static uint8_t counter = 0;
	
	for (uint8_t i = 0; i <= 7; i++)
	{
		if (ADW0->ADC_Channellist[i])
		{
			ADMUX = (ADMUX & ~(0x0F) | (i & 0x0F));
			ADCSRA |= (1<<ADSC);
			while (ADCSRA & (1<<ADSC));
			ADW0->ADC_Val[i][counter] = ADCW;
			ADMUX &= ~(0x0F);
		}
	}
	
	if (counter < ADC_square) counter++;
	if (counter == ADC_square) counter = 0;
}

void Calculate_ADC(ADW *ADW0)
{
	uint64_t ADC_Sum = 0;
	
	for (uint8_t i = 0; i <= 7; i++)
	{
		if (ADW0->ADC_Channellist[i]) for (uint8_t k = 0; k <= (ADC_square-1); k++) ADC_Sum += ADW0->ADC_Val[i][k];
		ADW0->ADC_Average[i] = ADC_Sum / ADC_square;
		ADC_Sum = 0;			
	}
}

