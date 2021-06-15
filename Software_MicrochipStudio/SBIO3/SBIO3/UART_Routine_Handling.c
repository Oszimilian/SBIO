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
#include "Terminal.h"
#include "UART_Routine.h"
#include "IO.h"
#include "Sub.h"


void UART_RX_Handler(UART *UART0, Settings_Terminal *Terminal)
{
	if (UART0->RX_Complete)
	{
		if (strncmp(UART0->RX_Buf, Terminal->CMD_TASK1, UART0->RX_Global_Counter ) == 0) UART0->RX_Task[TASK1] = 1;
		if (strncmp(UART0->RX_Buf, Terminal->CMD_UPDATE, UART0->RX_Global_Counter ) == 0) UART0->RX_Task[TASK2] = 1;
			
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_TEMPL, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_TEMP_L] = 1;
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_TEMPH, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_TEMP_H] = 1;
		
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_LUMIL, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_LUMI_L] = 1;
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_LUMIH, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_LUMI_H] = 1;
			
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_HUMIL, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_HUMI_L] = 1;
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_HUMIH, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_HUMI_H] = 1;

		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_GHUML, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_GHUM_L] = 1;
		if (strncmp(UART0->RX_Buf, Terminal->CMD_SET_GHUMH, UART0->RX_Global_Counter - 4) == 0) UART0->RX_Task[SET_GHUM_H] = 1;
		
		if (strncmp(UART0->RX_Buf, Terminal->CMD_INFO,  UART0->RX_Global_Counter) == 0) UART0->RX_Task[INFO] = 1;

		UART0->RX_Complete = 0;
	}
	
}

void RX_Taskhandler(UART *UART0, Settings_Terminal *Terminal)
{
	static uint8_t counter = 0;
	
	do
	{
		/**************************************************
		*				    TASK 1						  *
		**************************************************/
		if (UART0->RX_Task[TASK1])
		{
			char *ptr;
			
			ptr = strtok(Terminal->CMD_TASK1, "{}");
			
			sprintf(Terminal->Last_CMD, "%s", ptr);
			
			_UART_break(TASK1);
		}
		/**************************************************
		*				    UPDATE						  *
		**************************************************/		
		if (UART0->RX_Task[TASK2])
		{
			char *ptr;
			
			ptr = strtok(Terminal->CMD_UPDATE, "{}");
			
			sprintf(Terminal->Last_CMD, "%s", ptr);
			
			_UART_break(TASK2);
		}	
		/**************************************************
		*				    SET_TEMP_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_TEMP_L])
		{		
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Temp[L] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_TEMPL, "{}");
				
			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Temp[L]);
			
			_UART_break(SET_TEMP_L);
		}
		/**************************************************
		*				    SET_TEMP_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_TEMP_H])
		{
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Temp[H] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_TEMPH, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Temp[H]);
			
			_UART_break(SET_TEMP_H);
		}
		/**************************************************
		*				    SET_LUMI_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_LUMI_L])
		{		
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18], UART0->RX_Buf[19]);
			Physical_Border.Lumi[L] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_LUMIL, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Lumi[L]);
			
			_UART_break(SET_LUMI_L);
		}
		/**************************************************
		*				    SET_LUMI_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_LUMI_H])
		{
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18], UART0->RX_Buf[19]);
			Physical_Border.Lumi[H] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_LUMIH, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Lumi[H]);
			
			_UART_break(SET_LUMI_H);
		}
		/**************************************************
		*				    SET_HUMI_L					  *
		**************************************************/		
		if (UART0->RX_Task[SET_HUMI_L])
		{		
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Humi[L] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_HUMIL, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Humi[L]);
			
			_UART_break(SET_HUMI_L);
		}
		/**************************************************
		*				    SET_HUMI_H					  *
		**************************************************/		
		if (UART0->RX_Task[SET_HUMI_H])
		{
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.Humi[H] = atoi(lokal_String);
			
			ptr = strtok(Terminal->CMD_SET_HUMIH, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.Humi[H]);
			
			_UART_break(SET_HUMI_H);
		}		
		/**************************************************
		*				    SET_GNDHUMI_L				  *
		**************************************************/		
		if (UART0->RX_Task[SET_GHUM_L])
		{		
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.GHum[L] = atoi(lokal_String);

			ptr = strtok(Terminal->CMD_SET_GHUML, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.GHum[L]);
			
			_UART_break(SET_GHUM_L);
		}
		/**************************************************
		*				    SET_GNDHUMI_H				  *
		**************************************************/		
		if (UART0->RX_Task[SET_GHUM_H])
		{
			char lokal_String [5];
			char *ptr;
			
			sprintf(lokal_String, "%c%c%c", UART0->RX_Buf[16], UART0->RX_Buf[17], UART0->RX_Buf[18]);
			Physical_Border.GHum[H] = atoi(lokal_String);

			ptr = strtok(Terminal->CMD_SET_GHUMH, "{}");

			sprintf(Terminal->Last_CMD, "%s %d", ptr, Physical_Border.GHum[H]);
			
			_UART_break(SET_GHUM_H);
		}
		/**************************************************
		*				    INFO						  *
		**************************************************/
		if (UART0->RX_Task[INFO])
		{
			char *ptr;
			
			ptr = strtok(Terminal->CMD_INFO, "{}");
			
			sprintf(Terminal->Last_CMD, "%s", ptr);
			
			Terminal->Info_En = 1;
			
			_UART_break(INFO);
		}		
				
		counter++;
	}
	while(counter <= (RX_Task_size - 1));
}
