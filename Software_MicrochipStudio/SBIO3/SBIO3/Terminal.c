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

void Init_Terminal (Settings_Terminal *Terminal)
{
	Terminal->Terminal_En = 1;
}

void Show_Terminal(void)
{
	if (Terminal.Terminal_En)
	{
		_Erase_Putty();
		printf("|---------------------------------|\n");
		printf("| SBIO V0.3                       |\n");
		printf("|---------------------------------|\n");
		printf("| MODUS: Auto                     |\n");
		printf("|---------------------------------|\n");
		printf("| Strom:    %1.3f A               |\n", (ADW0.ADC_Average[3] * 0.024) / 38);
		printf("| Spannung: %2.2f V               |\n", (ADW0.ADC_Average[2] * 12) / 487);
		printf("| GNDHUMI:  %3.1f /                |\n", (((ADW0.ADC_Average[1] + ADW0.ADC_Average[0]) / 2) * 100) / 1024 );
		printf("| HUMI:     %3.1f                  |\n", TWI.HUMI_Average);
		printf("| TEMP:     %3.1f                  |\n", TWI.TEMP_Average);
		printf("| LUMI:     %3.1d                   |\n", TWI.LUMI_Average);
		printf("|---------------------------------|\n");
		printf("\n");
		printf("--(LAST-CMD)--> %s \n", Terminal.Last_CMD);
		printf("\n");
		printf("--(CMD)--> ");
		
		Terminal.Terminal_En = 0;		
	}
}