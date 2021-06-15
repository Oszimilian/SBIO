/*
 * EEPROM.c
 *
 * Created: 15.06.2021 12:29:05
 *  Author: 107475
 */ 

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include "main.h"
#include "Terminal.h"
#include "UART_Routine.h"
#include "IO.h"
#include "ADC_Routine.h"
#include "Frontpanel.h"
#include "TWI.h"
#include "EEPROM.h"
#include "Sub.h"

//EEPROM
uint16_t EEPROM_TEMP_L EEMEM = 1;
uint16_t EEPROM_TEMP_H EEMEM = 2;
uint16_t EEPROM_LUMI_L EEMEM = 3;
uint16_t EEPROM_LUMI_H EEMEM = 4;
uint16_t EEPROM_HUMI_L EEMEM = 5;
uint16_t EEPROM_HUMI_H EEMEM = 6;
uint16_t EEPROM_GHUM_L EEMEM = 7;
uint16_t EEPROM_GHUM_H EEMEM = 8;

//Unbedingt Adresse übergeben!!
void Save_To_EEPROM (uint16_t Wert)
{
	if (Wert == &Physical_Border.Temp[L]) eeprom_write_word(&EEPROM_TEMP_L, Physical_Border.Temp[L]);
	if (Wert == &Physical_Border.Temp[H]) eeprom_write_word(&EEPROM_TEMP_H, Physical_Border.Temp[H]);

	if (Wert == &Physical_Border.Lumi[L]) eeprom_write_word(&EEPROM_LUMI_L, Physical_Border.Lumi[L]);
	if (Wert == &Physical_Border.Lumi[H]) eeprom_write_word(&EEPROM_LUMI_H, Physical_Border.Lumi[H]);	
	
	if (Wert == &Physical_Border.Humi[L]) eeprom_write_word(&EEPROM_HUMI_L, Physical_Border.Humi[L]);
	if (Wert == &Physical_Border.Humi[H]) eeprom_write_word(&EEPROM_HUMI_H, Physical_Border.Humi[H]);
	
	if (Wert == &Physical_Border.GHum[L]) eeprom_write_word(&EEPROM_GHUM_L, Physical_Border.GHum[L]);
	if (Wert == &Physical_Border.GHum[H]) eeprom_write_word(&EEPROM_GHUM_H, Physical_Border.GHum[H]);
}

void RST_Falshback(void)
{
	Physical_Border.Temp[L] = eeprom_read_word(&EEPROM_TEMP_L);
	Physical_Border.Temp[H] = eeprom_read_word(&EEPROM_TEMP_H);
	
	Physical_Border.Lumi[L] = eeprom_read_word(&EEPROM_LUMI_L);
	Physical_Border.Lumi[H] = eeprom_read_word(&EEPROM_LUMI_H);
	
	Physical_Border.Humi[L] = eeprom_read_word(&EEPROM_HUMI_L);
	Physical_Border.Humi[H] = eeprom_read_word(&EEPROM_HUMI_H);
	
	Physical_Border.GHum[L] = eeprom_read_word(&EEPROM_GHUM_L);
	Physical_Border.GHum[H] = eeprom_read_word(&EEPROM_GHUM_H);
	
	for (uint8_t i = 0; i <= 10; i++)
	{
		I2C_GetLuminance();
		I2c_GetHumi();
		I2c_GetTemp();

		Start_ADC(&ADW0);
		Calculate_ADC(&ADW0);
		Calculate_TWI(&TWI);	
	}

}