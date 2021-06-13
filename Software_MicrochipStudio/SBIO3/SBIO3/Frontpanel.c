/*
 * Frontpanel.c
 *
 * Created: 12.06.2021 21:29:02
 *  Author: Maximilian
 */ 

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "IO.h"
#include "Frontpanel.h"

void Show_Frontpanel(Show *Frontpanel)
{
	_Latch(OFF)
	
	for (uint8_t i = 0; i <= 15; i++)
	{
		if (Frontpanel->Frontpanel[i])
		{
			_Daten(ON)
		}else{
			_Daten(OFF)
		}
		_Takt(ON)
		_Takt(OFF)
		_Daten(OFF)
	}
	
	_Latch(ON)
}

void Write_Frontpanel (uint8_t LED, uint8_t Zustand)
{
	Frontpanel.Frontpanel[LED] = Zustand;
}

void Update_Frontpanel (Show *Frontpanel, PWM_Setting *PWM)
{
	if ( (PWM->PWM_Enabel[PWM_Pumpe] == 1) && (PWM->PWM_Wert[PWM_Pumpe] != 0) )
	{
		Write_Frontpanel(F_PUMPE, ON);
	}else{
		Write_Frontpanel(F_PUMPE, OFF);
	}
	
	if ( (PWM->PWM_Enabel[PWM_Heizung] == 1) && (PWM->PWM_Wert[PWM_Heizung] != 0) )
	{
		Write_Frontpanel(F_HEIZUNG, ON);	
		}else{
		Write_Frontpanel( F_HEIZUNG, OFF);
	}	
	
	if ( ( (PWM->PWM_Enabel[PWM_Lufter1] || PWM->PWM_Enabel[PWM_Lufter2]) == 1) && ( (PWM->PWM_Wert[PWM_Lufter1] || PWM->PWM_Wert[PWM_Lufter2]) != 0) )
	{
		Write_Frontpanel(F_LUFTER, ON);
	}else{
		Write_Frontpanel(F_LUFTER, OFF);	
	}
	
	if	( 
			( ( PWM->PWM_Enabel[PWM_Grun1] || PWM->PWM_Enabel[PWM_Rot1] || PWM->PWM_Enabel[PWM_Blau1] == 1 ||PWM->PWM_Enabel[PWM_Grun2] || PWM->PWM_Enabel[PWM_Rot2] || PWM->PWM_Enabel[PWM_Blau2]) == 1)	
			&& 
			( ( PWM->PWM_Wert[PWM_Grun1] || PWM->PWM_Wert[PWM_Rot1] || PWM->PWM_Wert[PWM_Blau1] == 1 ||PWM->PWM_Wert[PWM_Grun2] || PWM->PWM_Wert[PWM_Rot2] || PWM->PWM_Wert[PWM_Blau2]) == 1)
		)
	{
		Write_Frontpanel(F_RGB, ON);
	}else{
		Write_Frontpanel(F_RGB, OFF);
	}
	
	if (PWM->SM_Flag)
	{
		Write_Frontpanel(F_SM, ON);
	}else{
		Write_Frontpanel(F_SM, OFF);
		
	}
}