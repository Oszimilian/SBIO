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

volatile uint8_t ShiftReg[16] = {0};
volatile uint8_t PWM_Timer = 0;
volatile uint8_t RX_Timer = 0;

uint8_t Fade_Flag = 0;
uint8_t FadeBack_Flag = 0;




int main(void)
{
	Modi_Flag = 1;
	Port_Reset();
	MyInitProgramm();
	Set_Moduladresse();
	//Set_Dbg2(ON);
	Set_RGB1_ROT(PWM, 255);
	Set_RGB2_BLAU(PWM, 255);
	
		while (1)
		{
			Check_Modi();
			Controll_VoCu();
			
			
			if (Get_Input1() == ON && Fade_Flag == 0)
			{
				Fade();
				Fade_Flag = 1;
				FadeBack_Flag = 1;
			}
			if(Get_Input1() == OFF && FadeBack_Flag == 1)
			{
				Fade_Back();
				FadeBack_Flag = 0;
				Fade_Flag = 0;
			}
			
			if (Modi_Flag == Auto)
			{
				Set_Dbg2(OFF);
				Frontpannel_Check();
				if (RX_Flag == 1)
				{
					Rx_Select();
				}
			}
			if (Modi_Flag == Manu)
			{
				Set_Dbg2(ON);
				Frontpannel_Check();
				if (RX_Flag == 1 && RX_Feedback_Flag == 1)
				{
					Rx_Select();
				}
			}
			if (Modi_Flag == Stop)
			{
				NOTAUS_Show();
				NotAus();
				if (RX_Flag == 1 && RX_Feedback_Flag == 1)
				{
					Rx_Select();
				}
			}
		}
}

//
//	Hauptschleife
//

void MainLoop (void)
{
	//Lüfter und Schrittmotoer
	if (I2c_GetHumi() >= LWord_Humi && I2c_GetHumi() <= HWord_Humi)
	{
		if (Get_GND_Humi1() >= HWord_GNDHumi || I2c_GetTemp() >= HWord_Temp)
		{
			Schrittmotor1(256,Positiv);
			Set_Lufter1(PWM, 20);
			Set_Lufter2(PWM, 20);
		}
		if (Get_GND_Humi1() >= HWord_GNDHumi || I2c_GetTemp() >= HWord_Temp)
		{
			Set_Lufter1(PWM, 0);
			Set_Lufter2(PWM, 0);
		}
	}
	else
	{
		Schrittmotor1(256, Negativ
		);		Set_Lufter2(PWM, 0);

		Set_Lufter1(PWM, 0);
	}
	
	//Licht

	//Pumpe
	if(Get_GND_Humi1() <= LWord_GNDHumi)
	{
		Funktion_Pumpe();
	}
	
	//Heizung 
	if(I2c_GetTemp() <= HWord_Temp)
	{
		Set_Heizung(ON, 0);
	}
	if(I2c_GetTemp() >= LWord_Temp)
	{
		Set_Heizung(OFF, 0);
	}
	

}

		



