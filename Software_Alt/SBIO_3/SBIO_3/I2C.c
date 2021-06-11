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


/******************************************************************************
*                                                                             *
*                        U n t e r p r o g r a m m e                          *
*                              I2C-Kommunikation                              *
*                                                                             *
******************************************************************************/

/************************************************
*  I2C: Initialisieren                          *
************************************************/
void i2c_init()
{
	TWBR = (F_CPU / 100000UL -16) /2;
}
/************************************************
*  I2C: Start                                   *
************************************************/
void i2c_start()
{
	TWCR = _BV(TWINT) | _BV(TWSTA) | _BV(TWEN);      // INT-Flag löschen=1; I2CSTAart=1 ;I2C ENable=1 => _BV(n) ist das selbe wie (1 << n)
	while ((TWCR & _BV(TWINT)) == 0);                // auf TWINT gelöscht warten
}

/************************************************
*  I2C: Stop                                    *
************************************************/
void i2c_stop()
{
	TWCR = _BV(TWINT) | _BV(TWSTO) | _BV(TWEN);      // INT-Flag löschen=1; I2CSTOp=1 ;I2C ENable=1
}

/************************************************
*  I2C: Write                                   *
************************************************/
void i2c_write(uint8_t	DataByte)
{
	TWDR = DataByte;                                // übergebenes Datenbyte an TWCR (I2C-Data-Register) übergeben
	TWCR = _BV(TWINT) | _BV(TWEN);                  // Übertragung starten: INT-Flag löschen=1; I2C ENable=1
	while ((TWCR & _BV(TWINT))==0);                 // Auf Ende der Übertragung warten
}

/************************************************
*  I2C: Read                                    *
************************************************/
uint8_t i2c_read(uint8_t ack)
{
	if (ack==i2C_ACK)
	TWCR = _BV(TWINT) | _BV(TWEA) | _BV(TWEN);      // INT-Flag löschen=1; I2CSendetACK=1 ;I2C ENable=1
	else
	TWCR = _BV(TWINT) | _BV(TWEN);  // INT-Flag löschen=1; I2C ENable=1
	while ((TWCR & _BV(TWINT))==0);     
		//Set_Dbg2(ON);              // Auf Ende der Übertragung warten
	return TWDR;                                      // empfangenes Byte aus TWDR zurück geben
}


/************************************************
*  I2C: Send                                    *
************************************************/
void i2c_send(char *StringToSend)
{
	while (*StringToSend)
	{
		i2c_write((int)*StringToSend);
		StringToSend++;
	}
	
}

/************************************************
*  I2C: Befehl zum Sensor (B1750) senden         *
************************************************/
void i2c_doSensor_wr (uint8_t SensorAdr, uint8_t SensorCmd)
{
	i2c_start();
	i2c_write(SensorAdr<<1);
	i2c_write(SensorCmd);
	i2c_stop();
}

/************************************************
*  I2C: Befehl zum Sensor (B1750) zulesen       *
************************************************/
uint16_t i2c_doSensor_rd(uint8_t SensorAdr){
	uint8_t i2c_HiByte;
	uint8_t i2c_LoByte;
	i2c_start();
	i2c_write(SensorAdr<<1 | i2C_rd);
		
	i2c_HiByte = i2c_read(i2C_ACK);

	i2c_LoByte = i2c_read(i2C_ACK);
	i2c_stop();
	return ((i2c_HiByte << 8) | i2c_LoByte);
}

uint16_t I2C_GetLuminance()
{
	
	return i2c_doSensor_rd(i2C_Adr_Lo);
}

/************************************************
*  I2C: Befehl zum Sensor (Si7021) zu lesen     *
************************************************/
uint16_t i2c_doSensor7021_rd(uint8_t SensorAdr, uint8_t SensorMode){
	uint8_t i2c_HiByte;
	uint8_t i2c_LoByte;
	i2c_start();
	i2c_write(SensorAdr<<1 | i2C_wr);
	i2c_write(SensorMode);
	i2c_start();
	i2c_write(SensorAdr<<1 | i2C_rd);
	i2c_HiByte = i2c_read(i2C_ACK);
	i2c_LoByte = i2c_read(i2C_noACK);
	i2c_stop();

	//i2c_HiByte = 0xAF;
	//i2c_LoByte = 0xFE;
	return ((i2c_HiByte << 8) | i2c_LoByte);
}

uint16_t I2c_GetHumi(){	
	return i2c_doSensor7021_rd(SensorAdr_Si7021, i2C_Humi);
}

uint16_t I2c_GetTemp(){
	return i2c_doSensor7021_rd(SensorAdr_Si7021, i2C_Temp);
}

