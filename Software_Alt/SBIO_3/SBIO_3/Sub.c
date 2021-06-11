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


 uint16_t HWORD_HUMI EEMEM = 2;
 //HWORD_HUMI EEMEM = 2;
 uint16_t LWORD_HUMI EEMEM = 3;

 uint16_t HWORD_GNDHUMI EEMEM = 4;
 uint16_t LWORD_GNDHUMI EEMEM = 5;

 uint16_t HWORD_LUMI EEMEM = 6;
 uint16_t LWORD_LUMI EEMEM = 7;

 uint16_t HWORD_TEMP EEMEM = 8;
 uint16_t LWORD_TEMP EEMEM = 9;


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

void Frontpannel_Check (void)
{
	
	uint16_t Temp = I2c_GetTemp();
	uint16_t Humi = I2c_GetHumi();
	uint16_t GNDHumi = Get_GND_Humi1();
	uint16_t Lumi = I2C_GetLuminance();
		
	//Temp
	if (Temp >= HWord_Temp && Temp >= LWord_Temp)
	{
		ShiftReg[TEMP_H] = ON;
		ShiftReg[TEMP_L] = OFF;
	}
	if (Temp <= HWord_Temp && Temp <= LWord_Temp)
	{
		ShiftReg[TEMP_H] = OFF;
		ShiftReg[TEMP_L] = ON;
	}
	if (Temp <= HWord_Temp && Temp >= LWord_Temp)
	{
		ShiftReg[TEMP_H] = ON;
		ShiftReg[TEMP_L] = ON;
	}
	//Lumi
	if (Lumi >= HWord_Lumi && Lumi >= LWord_Lumi)
	{
		ShiftReg[LUMI_H] = ON;
		ShiftReg[LUMI_L] = OFF;
	}
	if (Lumi <= HWord_Lumi && Lumi <= LWord_Lumi)
	{
		ShiftReg[LUMI_H] = OFF;
		ShiftReg[LUMI_L] = ON;
	}
	if (Lumi <= HWord_Lumi && Lumi >= LWord_Lumi)
	{
		ShiftReg[LUMI_H] = ON;
		ShiftReg[LUMI_L] = ON;
	}
	//GNDHUMI
	if (GNDHumi >= HWord_GNDHumi && GNDHumi >= LWord_GNDHumi)
	{
		ShiftReg[GNDH_H] = ON;
		ShiftReg[GNDH_L] = OFF;
	}
	if (GNDHumi <= HWord_GNDHumi && GNDHumi <= LWord_GNDHumi)
	{
		ShiftReg[GNDH_H] = OFF;
		ShiftReg[GNDH_L] = ON;
	}
	if (GNDHumi <= HWord_GNDHumi && GNDHumi >= LWord_GNDHumi)
	{
		ShiftReg[GNDH_H] = ON;
		ShiftReg[GNDH_L] = ON;
	}
	//HUMI
	if (Humi >= HWord_Humi && Humi >= LWord_Humi)
	{
		ShiftReg[HUMI_H] = ON;
		ShiftReg[HUMI_L] = OFF;
	}
	if (Humi <= HWord_Humi && Humi <= LWord_Humi)
	{
		ShiftReg[HUMI_H] = OFF;
		ShiftReg[HUMI_L] = ON;
	}
	if (Humi <= HWord_Lumi && Humi >= LWord_Humi)
	{
		ShiftReg[HUMI_H] = ON;
		ShiftReg[HUMI_L] = ON;
	}
	
	if(PWM_Pumpe >= 1)
	{
		ShiftReg[Pumpe] = ON;
	}else{
		ShiftReg[Pumpe] = OFF;
	}
	
	if(PWM_Lufter1 >= 1 || PWM_Lufter2 >= 1)
	{
		ShiftReg[Lufter] = ON;
	}else{
		ShiftReg[Lufter] = OFF;
	}
	
	if(PWM_RGB1_Rot >= 1 || PWM_RGB1_Blau >= 1 || PWM_RGB1_Gruen >= 1 || PWM_RGB2_Rot >= 1 || PWM_RGB2_Blau >= 1 || PWM_RGB2_Gruen >= 1)
	{
		ShiftReg[RGB] = ON;
		}else{
		ShiftReg[RGB] = OFF;
	}
	
	//Heizung in SET_HEizung ON
	
	//SM in Ansteuerung für Motor
	
}

void Transimit_Test (void)
{
	TxBuffer[0] = 'T';
	TxBuffer[1] = 'E';
	TxBuffer[2] = 'S';
	TxBuffer[3] = 'T';
	
	Send_Data(3);
}

void Fade (void)
{
	uint8_t a;
	
	
	for (a = 0; a <= 250; a++)
	{
		Set_RGB1_GRUEN(PWM, a);
		Set_RGB1_BLAU(PWM, a);
		Set_RGB2_GRUEN(PWM, a);
		Set_RGB2_ROT(PWM, a);
		_delay_ms(2);			
	}			
}

void Fade_Back (void)
{
	uint8_t i;
	for (i = 250; i >= 1; i--)
	{
		Set_RGB1_GRUEN(PWM, i);
		Set_RGB1_BLAU(PWM, i);
		Set_RGB2_ROT(PWM, i);
		Set_RGB2_GRUEN(PWM, i);
		_delay_ms(2);
	}
}

void Tx_Voltage (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = Get_Voltage();
	
	Daten_L = Wert;
	Daten_H = Wert << 8;
	
	
	TxBuffer[0] = 'V';
	TxBuffer[1] = 'O';
	TxBuffer[2] = Daten_H;
	TxBuffer[3] = Daten_L;
	
	Send_Data(3);	
}

void Tx_Current (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = Get_Current();
		//Set_Dbg2(ON);
	
	Daten_L = Wert;
	Daten_H = Wert << 8;
	
	
	TxBuffer[0] = 'C';
	TxBuffer[1] = 'U';
	TxBuffer[2] = Daten_H;
	TxBuffer[3] = Daten_L;
	
	Send_Data(3);
}

void Tx_Humi (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = I2c_GetHumi();

	
	Daten_L = Wert;
	if (Daten_H == 0)
	{
		Daten_H = (Wert >> 8) + 1;
	}
	else
	{
		Daten_H = (Wert >> 8);
	}
	
	
	TxBuffer[0] = 3;
	TxBuffer[1] = 'H';
	TxBuffer[2] = 'U';
	TxBuffer[3] = 'M';
	TxBuffer[4] = 'I';
	TxBuffer[5] = 'N';
	TxBuffer[6] = 'A';
	
	TxBuffer[7] = Daten_H;
	TxBuffer[8] = Daten_L;
	
	Send_Data(8);
}

void Tx_Lumi (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = I2C_GetLuminance();

	
	Daten_L = Wert;
	
	if (Daten_H == 0)
	{
		Daten_H = (Wert >> 8) + 1;
	}
	else
	{
		Daten_H = (Wert >> 8);
	}
	
	
	
	TxBuffer[0] = 3;
	TxBuffer[1] = 'L';
	TxBuffer[2] = 'U';
	TxBuffer[3] = 'M';
	TxBuffer[4] = 'I';
	TxBuffer[5] = 'N';
	TxBuffer[6] = 'A';
	
	TxBuffer[7] = Daten_H;
	TxBuffer[8] = Daten_L;
	
	Send_Data(8);
}

void Tx_Temp (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = I2c_GetTemp();

	if (Wert == 0)
	{
		Daten_L = Wert++;
	}
	else
	{
		Daten_L = Wert;		
	}
	
	if (Daten_H == 0)
	{
		Daten_H = (Wert >> 8) + 1;
	}
	else
	{
		Daten_H = (Wert >> 8);
	}

	
	
	TxBuffer[0] = 3;
	TxBuffer[1] = 'T';
	TxBuffer[2] = 'E';
	TxBuffer[3] = 'M';
	TxBuffer[4] = 'P';
	TxBuffer[5] = 'E';
	TxBuffer[6] = 'R';
	
	TxBuffer[7] = Daten_H;
	TxBuffer[8] = Daten_L;
	
	Send_Data(8);
	
}
void Tx_GND1 (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = Get_GND_Humi1();

	
	Daten_L = Wert;
	Daten_H = Wert >> 8 | 0b10000000;
	
	
	TxBuffer[0] = 3;
	TxBuffer[1] = 'H';
	TxBuffer[2] = 'U';
	TxBuffer[3] = 'M';
	TxBuffer[4] = 'G';
	TxBuffer[5] = 'N';
	TxBuffer[6] = 'D';
	
	TxBuffer[7] = Daten_H;
	TxBuffer[8] = Daten_L;
	
	Send_Data(8);
}

void Tx_ModiFlag (void)
{

	
	TxBuffer[0] = 2;
	TxBuffer[1] = 'M';
	TxBuffer[2] = 'O';
	TxBuffer[3] = 'D';
	TxBuffer[4] = 'I';
	TxBuffer[5] = 'F';
	TxBuffer[6] = 'L';
	
	TxBuffer[7] = Modi_Flag;
	

	
	Send_Data(7);
}

void Tx_GND2 (void)
{
	uint16_t Wert;				//Wert der Spannung
	uint8_t Daten_H;
	uint8_t Daten_L;
	Wert = Get_GND_Humi2();

	
	Daten_L = Wert;
	Daten_H = Wert << 8;
	
	
	TxBuffer[0] = 'G';
	TxBuffer[1] = 'T';
	TxBuffer[2] = Daten_H;
	TxBuffer[3] = Daten_L;
	
	Send_Data(3);
}

void Funktion_Pumpe (void)
{
	if (Pumpen_Flag != 1)
	{
		Set_Pumpe(PWM, 0);
		
		uint8_t i;
		for (i = 0; i <= 250; i++)
		{
			Set_Pumpe(PWM, i);
			_delay_ms(2);
		}
		//Set_Dbg2(ON);
		ShiftReg[Pumpe] = ON;
		
		
		_delay_ms(5000);
		
		uint8_t k;
		for(k = 250; k >= 1; k--)
		{
			Set_Pumpe(PWM, k);
			_delay_ms(2);
		}
		Set_Pumpe(PWM, 0);
		ShiftReg[Pumpe] = OFF;
		
		Pumpen_Counter = 0;
		
	}
	
	
}

	
	void Controll_VoCu (void)
	{	
		uint8_t Voltage = Get_Voltage();
		uint16_t Current = Get_Current();
		
		if (Voltage >= Max_Voltage || Current >= Max_Current)
		{
			Modi_Flag = Stop;
		}
		/*
		if (Voltage <= Max_Voltage && Current <= Max_Current)
		{
			Modi_Flag = Auto;
		}		
	*/
	}

	
	void Schrittmotor1 (uint16_t Durchlauf, uint8_t Drehrichtung)
	{
		
		ShiftReg[ON] = ON;
		uint16_t i;
		if (Drehrichtung == Positiv)
		{
			for (i = 0; i <= Durchlauf; i++)
			{
				
				Set_SM1_1(ON);
				Set_SM1_2(OFF);
				Set_SM1_3(OFF);
				Set_SM1_4(OFF);
				_delay_us(SMTime);
				
				Set_SM1_1(OFF);
				Set_SM1_2(ON);
				Set_SM1_3(OFF);
				Set_SM1_4(OFF);
				_delay_us(SMTime);
				
				Set_SM1_1(OFF);
				Set_SM1_2(OFF);
				Set_SM1_3(ON);
				Set_SM1_4(OFF);
				_delay_us(SMTime);
				
				Set_SM1_1(OFF);
				Set_SM1_2(OFF);
				Set_SM1_3(OFF);
				Set_SM1_4(ON);
				_delay_us(SMTime);

			}
		}
		if (Drehrichtung == Negativ)
		{
			//uint16_t i;
			for (i = 0; i <= Durchlauf; i++)
			{
				
				Set_SM1_1(OFF);
				Set_SM1_2(OFF);
				Set_SM1_3(OFF);
				Set_SM1_4(ON);
				_delay_us(SMTime);
				
				Set_SM1_1(OFF);
				Set_SM1_2(OFF);
				Set_SM1_3(ON);
				Set_SM1_4(OFF);
				_delay_us(SMTime);
				
				Set_SM1_1(OFF);
				Set_SM1_2(ON);
				Set_SM1_3(OFF);
				Set_SM1_4(OFF);
				_delay_us(SMTime);
				
				Set_SM1_1(ON);
				Set_SM1_2(OFF);
				Set_SM1_3(OFF);
				Set_SM1_4(OFF);
				_delay_us(SMTime);

			}
		}	
				Set_SM1_1(OFF);
				Set_SM1_2(OFF);
				Set_SM1_3(OFF);
				Set_SM1_4(OFF);
				
				ShiftReg[ON] = OFF;
	}
	
	
void Schrittmotor2 (uint16_t Durchlauf, uint8_t Drehrichtung)
{
	
	ShiftReg[ON] = ON;
	uint16_t i;
	if (Drehrichtung == Positiv)
	{

		for (i = 0; i <= Durchlauf; i++)
		{
			Set_SM2_1(ON);
			Set_SM2_2(OFF);
			Set_SM2_3(OFF);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
		
			Set_SM2_1(OFF);
			Set_SM2_2(ON);
			Set_SM2_3(OFF);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
		
			Set_SM2_1(OFF);
			Set_SM2_2(OFF);
			Set_SM2_3(ON);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
		
			Set_SM2_1(OFF);
			Set_SM2_2(OFF);
			Set_SM2_3(OFF);
			Set_SM2_4(ON);
			_delay_us(SMTime);
		}
	}
	if (Drehrichtung == Negativ)
	{
		for (i = 0; i <= Durchlauf; i++)
		{
			Set_SM2_1(OFF);
			Set_SM2_2(OFF);
			Set_SM2_3(OFF);
			Set_SM2_4(ON);
			_delay_us(SMTime);
			
			Set_SM2_1(OFF);
			Set_SM2_2(OFF);
			Set_SM2_3(ON);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
			
			Set_SM2_1(OFF);
			Set_SM2_2(ON);
			Set_SM2_3(OFF);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
			
			Set_SM2_1(ON);
			Set_SM2_2(OFF);
			Set_SM2_3(OFF);
			Set_SM2_4(OFF);
			_delay_us(SMTime);
		}
	}
			Set_SM2_1(OFF);
			Set_SM2_2(OFF);
			Set_SM2_3(OFF);
			Set_SM2_4(OFF);
			
			ShiftReg[ON] = OFF;
}

void NotAus (void)
{
	
	PWM_Lufter1 = 0;
	PWM_Lufter2 = 0;
	PWM_Pumpe = 0;
	PWM_RGB1_Blau = 0;
	PWM_RGB1_Gruen = 0;
	PWM_RGB1_Rot = 0;
	PWM_RGB2_Blau = 0;
	PWM_RGB2_Gruen = 0;
	PWM_RGB2_Rot = 0;	
	Set_Heizung(OFF, 0);
}

void EEProm_Writer (void)
{
		
		TxBuffer[0] = eeprom_read_word(&HWORD_HUMI);
		//TxBuffer[0] = 255; 
		TxBuffer[1] = eeprom_read_word(&LWORD_HUMI);
		
		TxBuffer[2] = eeprom_read_word(&HWORD_GNDHUMI);
		TxBuffer[3] = eeprom_read_word(&LWORD_GNDHUMI);
		
		TxBuffer[4] = eeprom_read_word(&HWORD_LUMI);
		TxBuffer[5] = eeprom_read_word(&LWORD_LUMI);
		
		TxBuffer[6] = eeprom_read_word(&HWORD_TEMP);
		TxBuffer[7] = eeprom_read_word(&LWORD_TEMP);
		
		//TxBuffer[0] = HWord_Humi;
		Send_Data(7);
		 

}




void Save_Grenzwert(void)
{
	uint8_t HByte1_Humi = RxBuffer [9];
	uint8_t HByte2_Humi = RxBuffer [10];
	uint8_t LByte1_Humi = RxBuffer [11];
	uint8_t LByte2_Humi = RxBuffer [12];
	
	
	HWord_Humi = (HByte1_Humi << 8) | HByte2_Humi;
	LWord_Humi = (LByte1_Humi << 8) | LByte2_Humi;
	
	uint8_t HByte1_GNDHumi = RxBuffer [13];
	uint8_t HByte2_GNDHumi = RxBuffer [14];
	uint8_t LByte1_GNDHumi = RxBuffer [15];
	uint8_t LByte2_GNDHumi = RxBuffer [16];
	
	HWord_GNDHumi = (HByte1_GNDHumi << 8) | HByte2_GNDHumi;
	LWord_GNDHumi = (LByte1_GNDHumi << 8) | LByte2_GNDHumi;
	
	uint8_t HByte1_Lumi = RxBuffer[17];
    uint8_t HByte2_Lumi = RxBuffer[18];
	uint8_t LByte1_Lumi = RxBuffer[19];
	uint8_t LByte2_Lumi = RxBuffer[20];
	
	HWord_Lumi = (HByte1_Lumi << 8) | HByte2_Lumi;
	LWord_Lumi = (LByte1_Lumi << 8) | LByte2_Lumi;
	
	uint8_t HByte1_Temp = RxBuffer[21];
	uint8_t HByte2_Temp = RxBuffer[22];
	uint8_t LByte1_Temp = RxBuffer[23];
	uint8_t LByte2_Temp = RxBuffer[24];
	
	HWord_Temp = (HByte1_Temp << 8) | HByte2_Temp;
	LWord_Temp = (LByte1_Temp << 8) | LByte2_Temp;
	
	//eeprom_write_word(&HWORD_HUMI, 10);
	//eeprom_write_word(&LWORD_HUMI, 10);
	
	eeprom_write_word(&HWORD_HUMI, HWord_Humi);
	eeprom_write_word(&LWORD_HUMI, LWord_Humi);
	
	eeprom_write_word(&HWORD_GNDHUMI, HWord_GNDHumi);
	eeprom_write_word(&LWORD_GNDHUMI, LWord_GNDHumi);
	
	eeprom_write_word(&HWORD_LUMI, HWord_Lumi);
	eeprom_write_word(&LWORD_LUMI, LWord_Lumi);
	
	eeprom_write_word(&HWORD_TEMP, HWord_Temp);
	eeprom_write_word(&LWORD_TEMP, LWord_Temp);
		
	
}

void Check_Modi (void)
{
	if (Get_Start() == ON)
	{
		Modi_Flag = Auto;
	}
	if (Get_Stop() == ON)
	{
		Modi_Flag = Manu;
	}
	if (Get_NotAus() == ON)
	{
		Modi_Flag = Stop;
	}
}



 