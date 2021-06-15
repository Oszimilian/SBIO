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
#include "Terminal.h"
#include "UART_Routine.h"
#include "IO.h"
#include "ADC_Routine.h"
#include "Frontpanel.h"
#include "TWI.h"
#include "Sub.h"


void Init_Terminal (Settings_Terminal *Terminal)
{
	Terminal->Terminal_En = 1;
	Terminal->Info_En = 1;
	
	
	strcpy(Terminal->CMD_TASK1,  "{TASK1}"); 
	strcpy(Terminal->CMD_UPDATE, "{UPDATE}");
		
	strcpy(Terminal->CMD_SET_TEMPL, "{SET TEMP_L TO:}");
	strcpy(Terminal->CMD_SET_TEMPH, "{SET TEMP_H TO:}");
	strcpy(Terminal->CMD_SET_LUMIL, "{SET LUMI_L TO:}");
	strcpy(Terminal->CMD_SET_LUMIH, "{SET LUMI_H TO:}");
	strcpy(Terminal->CMD_SET_HUMIL, "{SET HUMI_L TO:}");
	strcpy(Terminal->CMD_SET_HUMIH, "{SET HUMI_H TO:}");
	strcpy(Terminal->CMD_SET_GHUML, "{SET GHUM_L TO:}");
	strcpy(Terminal->CMD_SET_GHUMH, "{SET GHUM_H TO:}");
		
	strcpy(Terminal->CMD_INFO, "{CMD_INFO}");
	
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
		printf("| LUMI:     %3.1f                   |\n", TWI.LUMI_Average);
		printf("|---------------------------------|\n");
		printf("| TEMP H/L   %2.0d C %2.0d C            |\n", Physical_Border.Temp[H], Physical_Border.Temp[L] );
		printf("| LUMI H/L %3.0d lx %3.0d lx          |\n", Physical_Border.Lumi[H], Physical_Border.Lumi[L] );
		printf("| HUMI H/L %3.0d pc %3.0d pc          |\n", Physical_Border.Humi[H], Physical_Border.Humi[L] );
		printf("| GHUM H/L %3.0d pc %3.0d pc          |\n", Physical_Border.GHum[H], Physical_Border.GHum[L] );
		printf("|---------------------------------|\n");			
	}
	
	if (Terminal.Info_En)
	{
		printf("|==> %s                      |\n", Terminal.CMD_TASK1);
		printf("|==> %s                     |\n", Terminal.CMD_UPDATE);
		printf("|==> %s             |\n", Terminal.CMD_SET_TEMPL);
		printf("|==> %s             |\n", Terminal.CMD_SET_TEMPH);
		printf("|==> %s             |\n", Terminal.CMD_SET_LUMIL);
		printf("|==> %s             |\n", Terminal.CMD_SET_LUMIH);
		printf("|==> %s             |\n", Terminal.CMD_SET_HUMIL);
		printf("|==> %s             |\n", Terminal.CMD_SET_HUMIH);
		printf("|==> %s             |\n", Terminal.CMD_SET_GHUML);
		printf("|==> %s             |\n", Terminal.CMD_SET_GHUMH);
		printf("|==> %s                   |\n", Terminal.CMD_INFO);
		printf("|---------------------------------|");

		
		Terminal.Info_En = 0;
	}
	
	if (Terminal.Terminal_En)
	{
		printf("\n");
		printf("--(LAST-CMD)--> %s \n", Terminal.Last_CMD);
		printf("\n");
		printf("--(CMD)--> ");
		
		Terminal.Terminal_En = 0;	
	}
}