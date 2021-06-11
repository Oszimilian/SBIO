/*
 * IO.c
 *
 *  Created on: 09.06.2021
 *      Author: maximilian
 */

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <util/delay.h>

#include "IO.h"



void Init_GPIO(PWM_Setting *PWM)
{
	//DDRX Output Conf
	DDRA |= (1<<Pumpe);
	DDRA |= (1<<Heizung);
	DDRA |= (1<<Lufter1);
	DDRA |= (1<<Lufter2);

	DDRC |= (1<<Rot1);
	DDRC |= (1<<Grun1);
	DDRC |= (1<<Blau1);

	DDRA |= (1<<Rot2);
	DDRG |= (1<<Grun2);
	DDRC |= (1<<Blau2);

	DDRB |= (1<<Latch);
	DDRB |= (1<<Daten);
	DDRB |= (1<<Takt);

	DDRD |= (1<<SM1_1);
	DDRD |= (1<<SM1_2);
	DDRG |= (1<<SM1_3);
	DDRG |= (1<<SM1_4);

	DDRC |= (1<<SM2_1);
	DDRC |= (1<<SM2_2);
	DDRC |= (1<<SM2_3);
	DDRC |= (1<<SM2_4);


	//DDRX Input Conf
	DDRA |= (1<<Input1);
	DDRA |= (1<<Input2);
	DDRB |= (1<<Stop);
	DDRB |= (1<<Start);
	DDRE |= (1<<NotAus);
	DDRB |= (1<<DBG1);

	//Pull Up
	PORTA |= (1<<Input1);
	PORTA |= (1<<Input2);
	PORTB |= (1<<Stop);
	PORTB |= (1<<Start);
	PORTE |= (1<<NotAus);
	PORTB |= (1<<DBG1);
}

uint8_t Get_Input(uint8_t *Port, uint8_t Pin)
{
	if (*Port & (1<<Pin) <= 1)
	{
		_delay_ms(Debounce);

		if(*Port & (1<<Pin) <= 1)
		{
			return OFF;
		}
		else
		{
			return ON;
		}
	}
	else
	{
		return ON;
	}
}

void PWM_Generator(PWM_Setting *PWM)
{
	volatile static uint8_t Counter = 0;
	if (Counter == 255) Counter == 0;


	if (PWM->PWM_Enabel[PWM_Pumpe]   == 1 &&  PWM->PWM_List[PWM_Pumpe]   == 1 && PWM->PWM_Wert[PWM_Pumpe] == Counter)   _Pumpe(ON);
	if (PWM->PWM_Enabel[PWM_Heizung] == 1 &&  PWM->PWM_List[PWM_Heizung] == 1 && PWM->PWM_Wert[PWM_Heizung] == Counter) _Heizung(ON);
	if (PWM->PWM_Enabel[PWM_Lufter1] == 1 &&  PWM->PWM_List[PWM_Lufter1] == 1 && PWM->PWM_Wert[PWM_Lufter1] == Counter) _Lufter1(ON)
	if (PWM->PWM_Enabel[PWM_Lufter2] == 1 &&  PWM->PWM_List[PWM_Lufter2] == 1 && PWM->PWM_Wert[PWM_Lufter2] == Counter) _Lufter2(ON)
	if (PWM->PWM_Enabel[PWM_Rot1]    == 1 &&  PWM->PWM_List[PWM_Rot1]    == 1 && PWM->PWM_Wert[PWM_Rot1] == Counter)    _Rot1(ON);
	if (PWM->PWM_Enabel[PWM_Grun1]   == 1 &&  PWM->PWM_List[PWM_Grun1]   == 1 && PWM->PWM_Wert[PWM_Grun1] == Counter)   _Grun1(ON);
	if (PWM->PWM_Enabel[PWM_Blau1]   == 1 &&  PWM->PWM_List[PWM_Blau1]   == 1 && PWM->PWM_Wert[PWM_Blau1] == Counter)   _Blau1(ON)
	if (PWM->PWM_Enabel[PWM_Rot2]    == 1 &&  PWM->PWM_List[PWM_Rot2]    == 1 && PWM->PWM_Wert[PWM_Rot2] == Counter)    _Rot2(ON);
	if (PWM->PWM_Enabel[PWM_Grun2]   == 1 &&  PWM->PWM_List[PWM_Grun2]   == 1 && PWM->PWM_Wert[PWM_Grun2] == Counter)   _Grun2(ON);
	if (PWM->PWM_Enabel[PWM_Blau2]   == 1 &&  PWM->PWM_List[PWM_Blau2]   == 1 && PWM->PWM_Wert[PWM_Blau2] == Counter)   _Blau2(ON);

	if (Counter == 254)
	{
		_Pumpe(OFF);
		_Heizung(OFF);
		_Lufter1(OFF);
		_Lufter2(OFF);
		_Rot1(OFF);
		_Grun1(OFF);
		_Blau1(OFF);
		_Rot2(OFF);
		_Grun2(OFF);
		_Blau2(OFF);
	}

	Counter++;
}

