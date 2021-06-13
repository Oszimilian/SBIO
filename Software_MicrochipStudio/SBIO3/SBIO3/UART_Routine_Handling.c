/*
 *	UART_Routine.c
 *	
 *	Created: 28.05.2021 12:58:39
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


void UART_RX_Handler(UART *UART0)
{
							
	
	if (UART0->RX_Complete)
	{
		if (strncmp(UART0->RX_Buf, "{TASK1}", UART0->RX_Global_Counter) == 0)
		{
			UART0->RX_Task[TASK1] = 1;
			printf("Alles Gut");
		}
			 
		if (strncmp(UART0->RX_Buf, "{TASK2}", UART0->RX_Global_Counter) == 0) UART0->RX_Task[TASK2] = 1;
		if (strncmp(UART0->RX_Buf, "{SET TEMP L TO: }", strlen("{SET TEMP L TO: ") ) == 0)
		{
			 UART0->RX_Task[TASK3] = 1;

		}
		UART0->RX_Complete = 0;
	}
	
}

void RX_Taskhandler(UART *UART0)
{
	static uint8_t counter = 0;
	
	//_delay_ms(10000);
	sei();
	do
	{
		/**************************************************
		*				    TASK 1						  *
		**************************************************/
		if (UART0->RX_Task[TASK1])
		{
			printf("Hallo1");
			_UART_break(TASK1);
		}
		/**************************************************
		*				    TASK 2						  *
		**************************************************/		
		if (UART0->RX_Task[TASK2])
		{
			printf("Hallo2");
			_UART_break(TASK2);
		}
		/**************************************************
		*				    TASK 2						  *
		**************************************************/			
		if (UART0->RX_Task[TASK3])
		{
			printf("\n sehr gut");
			char lokal[20];
			char *ptr;
			strcpy(lokal, UART0->RX_Buf);
			ptr = strtok(lokal, ':');
			ptr = strtok(NULL, ':');
			printf("%s \n", ptr);
		}
			

		counter++;
		
	}
	while(counter <= (RX_Task_size - 1));
	cli();
	
}

