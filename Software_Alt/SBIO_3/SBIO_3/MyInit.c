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


/*
void MyInitProgramm (void)
{
	i2c_init();
	i2c_doSensor_wr(i2C_Adr_Lo,0x01);                      // Sensor über Adresse ansprechen und "Power on"
	i2c_doSensor_wr(i2C_Adr_Lo,0x10);

	
	uint8_t i;
	uint8_t k;
	for (i = 0; i <= 15; i++)
	{
		ShiftReg[i] = ON;
		_delay_ms(25);
	}
	
	for (k = 0; k <= 15; k++)
	{
		ShiftReg[k] = OFF;
		_delay_ms(25);
	}
	
	HWord_Humi = eeprom_read_word(&HWORD_HUMI);
	LWord_Humi = eeprom_read_word(&LWORD_HUMI);
	
	HWord_GNDHumi = eeprom_read_word(&HWORD_GNDHUMI);
	LWord_GNDHumi = eeprom_read_word(&LWORD_GNDHUMI);
	
	HWord_Lumi = eeprom_read_word(&HWORD_LUMI);
	LWord_Lumi = eeprom_read_word(&LWORD_LUMI);
	
	HWord_Temp = eeprom_read_word(&HWORD_TEMP);
	LWord_Temp = eeprom_read_word(&LWORD_TEMP);
	
}
*/
void Manu_Show (void)
{
	
	ManuShow_Timer++;
	
	Set_Dbg2(ON);
	_delay_ms(100);
	Set_Dbg2(OFF);
	_delay_ms(100);
	
}

void NOTAUS_Show (void)
{

		uint8_t i;
		for (i = 0; i <= 15; i++)
		{
			ShiftReg[i] = ON;
		}
		Set_Dbg2(ON);

}


uint8_t MODULADRESSE EEMEM = 10;

void Set_Moduladresse (void)
{

		if (Get_Stop() == ON)
		{
			do
			{
				if (Get_Dbg1() == ON)
				{
					Set_Dbg2(ON);
					Moduladresse = 'N';
					eeprom_write_byte(&MODULADRESSE, Moduladresse);					
					break;
				}
				if (Get_Start() == ON )
				{
					Set_Dbg2(ON);
					Moduladresse = 'M';
					eeprom_write_byte(&MODULADRESSE, Moduladresse);	
					break;
				}
			}
			while ( Get_Stop() != OFF);
		}
		else
		{
			Moduladresse = eeprom_read_byte(&MODULADRESSE);
		}
}