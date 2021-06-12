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

void Write_Frontpanel (Show *Frontpanel, uint8_t LED, uint8_t Zustand)
{
	Frontpanel->Frontpanel[LED] = Zustand;
}