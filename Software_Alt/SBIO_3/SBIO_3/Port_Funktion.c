#define F_CPU 16000000

#include <stdlib.h>																//Standard Library
//#include <math.h>																//Mathematische Funktionen
//#include <string.h>															//Stringfunktionen (Zeichenkettenfunkionen)
#include <avr/io.h>																//Input Output Funktioen
#include <avr/interrupt.h>														//Programmunterbrechungsfunktionen
//#include <avr/sleep.h>	 													//Stromsparfunktion
//#include <avr/power.h>														//?
//#include <avr/wdt.h>															//Watchdog-Timer (Schleifenfunktionen haben einen Timer)
#include <avr/pgmspace.h>														//?
#include <avr/eeprom.h>														//Zugriff auf das EEPROM
#include <util/delay.h>															//Zeitfunktionen
#include <stdint.h>
#include "All.h"

volatile uint8_t ShiftReg[16];

	
	
/******************************************************************************
*                                                                             *
*                                 OUTPUT-SET                                  *
*                                                                             *
******************************************************************************/
void Set_Pumpe (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTA |= (1<<3);
	}
	if (Zustand == OFF)
	{
		PORTA &= ~(1<<3);
	}
	if (Zustand == PWM)
	{
		PWM_Pumpe = PWM_Wert;
	}
	
}

void Set_Heizung (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTA |=  (1<<4);
		ShiftReg[Heizung] = ON;
	}
	if (Zustand == OFF)
	{
		PORTA &= ~(1<<4);
		ShiftReg[Heizung] = OFF;
	}
	if (Zustand == PWM)
	{
		_delay_ms(1);
	}
	
}

void Set_Lufter1 (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTA |=  (1<<5);
	}
	if (Zustand == OFF)
	{
		PORTA &= ~(1<<5);
	}
	if (Zustand == PWM)
	{
		PWM_Lufter1 = PWM_Wert;
	}
	
}

void Set_Lufter2 (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTA |=  (1<<6);
	}
	if (Zustand == OFF)
	{
		PORTA &= ~(1<<6);
	}
	if (Zustand == PWM)
	{
		PWM_Lufter2 = PWM_Wert;
	}
	
}

void Set_RGB1_ROT (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTC |=  (1<<6);
	}
	if (Zustand == OFF)
	{
		PORTC &= ~(1<<6);
	}
	if (Zustand == PWM)
	{
		PWM_RGB1_Rot = PWM_Wert;
	}
	
}

void Set_RGB1_GRUEN (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTC |=  (1<<5);
	}
	if (Zustand == OFF)
	{
		PORTC &= ~(1<<5);
	}
	if (Zustand == PWM)
	{
		PWM_RGB1_Gruen = PWM_Wert;
	}
	
}

void Set_RGB1_BLAU (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTC |=  (1<<4);
	}
	if (Zustand == OFF)
	{
		PORTC &= ~(1<<4);
	}
	if (Zustand == PWM)
	{
		PWM_RGB1_Blau = PWM_Wert;
	}
	
}



void Set_RGB2_ROT (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTA |=  (1<<7);
	}
	if (Zustand == OFF)
	{
		PORTA &= ~(1<<7);
	}
	if (Zustand == PWM)
	{
		PWM_RGB2_Rot = PWM_Wert;
	}
	
}

void Set_RGB2_GRUEN (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTG |=  (1<<2);
	}
	if (Zustand == OFF)
	{
		PORTG &= ~(1<<2);
	}
	if (Zustand == PWM)
	{
		PWM_RGB2_Gruen = PWM_Wert;
	}
	
}

void Set_RGB2_BLAU (uint8_t Zustand, uint8_t PWM_Wert)
{
	if (Zustand == ON)
	{
		PORTC |=  (1<<7);
	}
	if (Zustand == OFF)
	{
		PORTC &= ~(1<<7);
	}
	if (Zustand == PWM)
	{
		PWM_RGB2_Blau = PWM_Wert;
	}
	
}

void Set_Dbg2 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTB |=  (1<<2); break;
		case OFF: PORTB &= ~(1<<2); break;
	}
}

void Set_SRLatch (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTB |=  (1<<4); break;
		case OFF: PORTB &= ~(1<<4); break;
	}
}

void Set_SRDaten (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTB |=  (1<<5); break;
		case OFF: PORTB &= ~(1<<5); break;
	}
}

void Set_SRTakt (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTB |=  (1<<6); break;
		case OFF: PORTB &= ~(1<<6); break;
	}
}
void Set_SM1_1 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTD |=  (1<<6); break;
		case OFF: PORTD &= ~(1<<6); break;
	}
}

void Set_SM1_2 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTD |=  (1<<7); break;
		case OFF: PORTD &= ~(1<<7); break;
	}
}

void Set_SM1_3 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTG |=  (1<<0); break;
		case OFF: PORTG &= ~(1<<0); break;
	}
}

void Set_SM1_4 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTG |=  (1<<1); break;
		case OFF: PORTG &= ~(1<<1); break;
	}
}

void Set_SM2_1 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTC |=  (1<<0); break;
		case OFF: PORTC &= ~(1<<0); break;
	}
}

void Set_SM2_2 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTC |=  (1<<1); break;
		case OFF: PORTC &= ~(1<<1); break;
	}
}

void Set_SM2_3 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTC |=  (1<<2); break;
		case OFF: PORTC &= ~(1<<2); break;
	}
}

void Set_SM2_4 (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTC |=  (1<<3); break;
		case OFF: PORTC &= ~(1<<3); break;
	}
}

void Set_UART_DIR (uint8_t Zustand)
{
	switch (Zustand)
	{
		case ON:  PORTE |=  (1<<2); break;
		case OFF: PORTE &= ~(1<<2); break;
	}
}

/******************************************************************************
*                                                                             *
*                                 INPUT-GET                                   *
*                                                                             *
******************************************************************************/

uint8_t Get_Input1()
{
	uint8_t Zustand;
	Zustand = PINA;
	Zustand = Zustand & 0b00000001;
	if (Zustand == 0b00000001)
	{
		_delay_ms(5);
		Zustand = PINA;
		Zustand = Zustand & 0b00000001;
		if (Zustand == 0b00000001)
		{
			return ON;
		}
		else
		{
			return OFF;
		}
	}
	else
	{
		return OFF;
	}
}

uint8_t Get_Input2()
{
	uint8_t Zustand;
	Zustand = PINA;
	Zustand = Zustand & 0b00000010;
	if (Zustand == 0b00000010)
	{
		_delay_ms(5);
		Zustand = PINA;
		Zustand = Zustand & 0b00000010;
		if (Zustand == 0b00000010)
		{
			return ON;
		}
		else
		{
			return OFF;
		}
	}
	else
	{
		return OFF;
	}
}

uint8_t Get_Stop()
{
	uint8_t Zustand;
	Zustand = PINB;
	Zustand = Zustand & 0b00000001;
	if (Zustand == 0b00000001)
	{
		_delay_ms(5);
		Zustand = PINB;
		Zustand = Zustand & 0b00000001;
		if (Zustand == 0b00000001)
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

uint8_t Get_Start()
{
	uint8_t Zustand;
	Zustand = PINB;
	Zustand = Zustand & 0b00000010;
	if (Zustand == 0b00000010)
	{
		_delay_ms(5);
		Zustand = PINB;
		Zustand = Zustand & 0b00000010;
		if (Zustand == 0b00000010)
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

uint8_t Get_NotAus()
{
	uint8_t Zustand;
	Zustand = PINE;
	Zustand = Zustand & 0b10000000;
	if (Zustand == 0b10000000)
	{
		_delay_ms(5);
		Zustand = PINE;
		Zustand = Zustand & 0b10000000;
		if (Zustand == 0b10000000)
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

uint8_t Get_Dbg1()
{
	uint8_t Zustand;
	Zustand = PINB;
	Zustand = Zustand & 0b00001000;
	if (Zustand == 0b00001000)
	{
		_delay_ms(5);
		Zustand = PINB;
		Zustand = Zustand & 0b00001000;
		if (Zustand == 0b00001000)
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

uint16_t ADC_Messung(uint8_t Channel)
{
	uint16_t ADC_Ergebnis;														//Lokale Variable für ADC_Ergebnis anlegen
	ADMUX = (ADMUX & ~(0x0F)) | (Channel & 0x0F);								//Kanal des ADCMUX wählen
	_delay_us (50);																//Verzögerung zwischen Kanalwählen und erster Singelwandlung
	ADCSRA |= (1<<ADSC);														//Wandlung Starten
	while (ADCSRA & (1<<ADSC) )													//Auf abschluss der ersten Singel-Wandlung warten
	{
	}
	ADC_Ergebnis = ADCW;														//Wert der Globalen Variable ADCW in der Lokalen Variable ablegen
	ADMUX &=  ~(0x0F);															//ADMUX auf den Channel 0 zurücksetzen
	return ADC_Ergebnis; 														//ADC_Ergebnis der Lokalen Variable an den Anfang des Unterprogramms übergeben
}

uint16_t Get_GND_Humi1()
{
	uint8_t ADCWert;
	ADCWert = ADC_Messung(0);
	return ADCWert;	
}

uint16_t Get_GND_Humi2()
{
	uint8_t ADCWert;
	ADCWert = ADC_Messung(1);
}

uint16_t Get_Voltage()
{
	uint16_t ADCWert;
	ADCWert = ADC_Messung(2);
	return ADCWert;
}

uint16_t Get_Current()
{
	uint16_t ADCWert;
	ADCWert = ADC_Messung(3);
	return ADCWert;
}

