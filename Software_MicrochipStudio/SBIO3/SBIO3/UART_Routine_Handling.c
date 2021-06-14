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
#include "Sub.h"
#include "Terminal.h"

void UART_RX_Handler(UART *UART0)
{
	if (UART0->RX_Complete)
	{
		if (strncmp(UART0->RX_Buf, "{TASK1}", UART0->RX_Global_Counter ) == 0) UART0->RX_Task[TASK1] = 1;
		if (strncmp(UART0->RX_Buf, "{UPDATE}", UART0->RX_Global_Counter ) == 0) UART0->RX_Task[TASK2] = 1;
			
		if (strncmp(UART0->RX_Buf, "{SET TEMP_L TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_TEMP_L] = 1;
		if (strncmp(UART0->RX_Buf, "{SET TEMP_H TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_TEMP_H] = 1;
		
		if (strncmp(UART0->RX_Buf, "{SET LUMI_L TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_LUMI_L] = 1;
		if (strncmp(UART0->RX_Buf, "{SET LUMI_H TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_LUMI_H] = 1;
			
		if (strncmp(UART0->RX_Buf, "{SET HUMI_L TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_HUMI_L] = 1;
		if (strncmp(UART0->RX_Buf, "{SET HUMI_H TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_HUMI_H] = 1;

		if (strncmp(UART0->RX_Buf, "{SET GHUM_L TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_GHUM_L] = 1;
		if (strncmp(UART0->RX_Buf, "{SET GHUM_H TO:}", UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_GHUM_H] = 1;

		UART0->RX_Complete = 0;
	}
	
}

void RX_Taskhandler(UART *UART0)
{
	static uint8_t counter = 0;
	
	do
	{
		/**************************************************
		*				    TASK 1						  *
		**************************************************/
		if (UART0->RX_Task[TASK1])
		{
			printf("Hallo TASK1\n");
			sprintf(Terminal.Last_CMD, "Hallo TASK1");
			
			_UART_break(TASK1);
		}
		/**************************************************
		*				    UPDATE						  *
		**************************************************/		
		if (UART0->RX_Task[TASK2])
		{
			printf("UPDATE\n");
			sprintf(Terminal.Last_CMD, "UPDATE");
			
			_UART_break(TASK2);
		}	
		/**************************************************
		*				    SET_TEMP_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_TEMP_L])
		{		
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Temp[L] = atoi(lokal_String);
			printf("TEMP_L: %d C \n", Physical_Border.Temp[L]);
			sprintf(Terminal.Last_CMD, "SET TEMP_L: %d", Physical_Border.Temp[L]);
			
			_UART_break(SET_TEMP_L);
		}
		/**************************************************
		*				    SET_TEMP_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_TEMP_H])
		{
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Temp[H] = atoi(lokal_String);
			printf("TEMP_H: %d C \n", Physical_Border.Temp[H]);
			sprintf(Terminal.Last_CMD, "SET TEMP_H: %d", Physical_Border.Temp[H]);
			
			_UART_break(SET_TEMP_H);
		}
		/**************************************************
		*				    SET_LUMI_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_LUMI_L])
		{		
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18], UART0->RX_Buf[19]);
			Physical_Border.Lumi[L] = atoi(lokal_String);
			printf("LUMI_L: %d C \n", Physical_Border.Lumi[L]);
			sprintf(Terminal.Last_CMD, "SET LUMI_L: %d", Physical_Border.Lumi[L]);
			
			_UART_break(SET_LUMI_L);
		}
		/**************************************************
		*				    SET_LUMI_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_LUMI_H])
		{
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18], UART0->RX_Buf[19]);
			Physical_Border.Lumi[H] = atoi(lokal_String);
			printf("LUMI_H: %d C \n", Physical_Border.Lumi[H]);
			sprintf(Terminal.Last_CMD, "SET LUMI_H: %d", Physical_Border.Lumi[H]);
			
			_UART_break(SET_LUMI_H);
		}
		/**************************************************
		*				    SET_HUMI_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_HUMI_L])
		{		
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Humi[L] = atoi(lokal_String);
			printf("HUMI_L: %d C \n", Physical_Border.Humi[L]);
			sprintf(Terminal.Last_CMD, "SET HUMI_L: %d", Physical_Border.Humi[L]);
			
			_UART_break(SET_HUMI_L);
		}
		/**************************************************
		*				    SET_HUMI_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_HUMI_H])
		{
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Humi[H] = atoi(lokal_String);
			printf("HUMI_H: %d C \n", Physical_Border.Humi[H]);
			sprintf(Terminal.Last_CMD, "SET HUMI_H: %d", Physical_Border.Humi[H]);
			
			_UART_break(SET_HUMI_H);
		}		
		/**************************************************
		*				    SET_HUMI_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_GHUM_L])
		{		
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.GHum[L] = atoi(lokal_String);
			printf("GNDHUMI_L: %d C \n", Physical_Border.GHum[L]);
			sprintf(Terminal.Last_CMD, "SET GNDHUMI_L: %d", Physical_Border.GHum[L]);
			
			_UART_break(SET_GHUM_L);
		}
		/**************************************************
		*				    SET_HUMI_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_GHUM_H])
		{
			char lokal_String [5];
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.GHum[H] = atoi(lokal_String);
			printf("GNDHUMI_H: %d C \n", Physical_Border.GHum[H]);
			sprintf(Terminal.Last_CMD, "SET GNDHUMI_H: %d", Physical_Border.GHum[H]);
			
			_UART_break(SET_GHUM_H);
		}
		
				
		counter++;
	}
	while(counter <= (RX_Task_size - 1));
}
