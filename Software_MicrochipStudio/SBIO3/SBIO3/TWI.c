/*
 * TWI.c
 *
 * Created: 13.06.2021 14:13:04
 *  Author: Maximilian
 */ 
#define F_CPU 16000000

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <util/delay.h>

#include "TWI.h"

void TWI_Init (TWI_Settings *TWI)
{
	TWBR = (F_CPU / 100000UL -16) /2;
}

void i2c_start()
{
	TWCR = _BV(TWINT) | _BV(TWSTA) | _BV(TWEN);      
	while ((TWCR & _BV(TWINT)) == 0);               
}

void i2c_stop()
{
	TWCR = _BV(TWINT) | _BV(TWSTO) | _BV(TWEN);      
}

void i2c_write(uint8_t	DataByte)
{
	TWDR = DataByte;                                
	TWCR = _BV(TWINT) | _BV(TWEN);                  
	while ((TWCR & _BV(TWINT))==0);                 
}

uint8_t i2c_read(uint8_t ack)
{
	if (ack==i2C_ACK)
	{
		TWCR = _BV(TWINT) | _BV(TWEA) | _BV(TWEN); 
	}else{ 	
		TWCR = _BV(TWINT) | _BV(TWEN); 
	}
	while ((TWCR & _BV(TWINT))==0);
	           
	return TWDR;                                     
}

void i2c_send(char *StringToSend)
{
	while (*StringToSend)
	{
		i2c_write((int)*StringToSend);
		StringToSend++;
	}
	
}

void i2c_doSensor_wr (uint8_t SensorAdr, uint8_t SensorCmd)
{
	i2c_start();
	i2c_write(SensorAdr<<1);
	i2c_write(SensorCmd);
	i2c_stop();
}

uint16_t i2c_doSensor_rd(uint8_t SensorAdr)
{
	uint8_t i2c_HiByte;
	uint8_t i2c_LoByte;
	i2c_start();
	i2c_write(SensorAdr<<1 | i2C_rd);
	
	i2c_HiByte = i2c_read(i2C_ACK);

	i2c_LoByte = i2c_read(i2C_ACK);
	i2c_stop();
	return ((i2c_HiByte << 8) | i2c_LoByte);
}

uint16_t i2c_doSensor7021_rd(uint8_t SensorAdr, uint8_t SensorMode)
{
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

	return ((i2c_HiByte << 8) | i2c_LoByte);
}

void I2c_GetHumi(void)
{
	static uint8_t counter = 0;
	if (counter == Mittelwerte) counter = 0;
	TWI.HUMI_Val[counter] = i2c_doSensor7021_rd(SensorAdr_Si7021, i2C_Humi);
	counter++;
}

void I2c_GetTemp(void)
{
	static uint8_t counter = 0;
	if (counter == Mittelwerte) counter = 0;
	TWI.TEMP_Val[counter] = i2c_doSensor7021_rd(SensorAdr_Si7021, i2C_Temp);
	counter++;
}

void I2C_GetLuminance(void)
{	
	static uint8_t counter = 0;
	if (counter == Mittelwerte) counter = 0;
	TWI.LUMI_Val[counter] = i2c_doSensor_rd(i2C_Adr_Lo);
	counter++;
}

void Calculate_TWI(TWI_Settings *TWI)
{
	uint64_t TWI_Sum = 0;
	
	for (uint8_t i = 0; i <= (Mittelwerte-1); i++)
	{
		TWI_Sum += TWI->HUMI_Val[i];
	}
	TWI->HUMI_Average = TWI_Sum / Mittelwerte;
	TWI_Sum = 0;
	
	for (uint8_t i = 0; i <= (Mittelwerte-1); i++)
	{
		TWI_Sum += TWI->TEMP_Val[i];
	}
	TWI->TEMP_Average = TWI_Sum / Mittelwerte;
	TWI_Sum = 0;
	
	for (uint8_t i = 0; i <= (Mittelwerte-1); i++)
	{
		TWI_Sum += TWI->LUMI_Val[i];
	}
	TWI->LUMI_Average = TWI_Sum / Mittelwerte;
}