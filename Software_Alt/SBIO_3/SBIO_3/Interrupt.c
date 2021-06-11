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

ISR (TIMER0_COMP_vect)
{	
	//TCCR2 = 0x00;
	
	PWM_Timer++;
	if (PWM_Timer <= PWM_Pumpe && PWM_Pumpe >= 0)
	{
		PORTA |= (1<<3) ;
	}else{	
		PORTA &= ~(1<<3);
	}
	
	if (PWM_Timer <= PWM_Lufter1 && PWM_Lufter1 >= 0)
	{
		PORTA |= (1<<5) ;
		}else{
		PORTA &= ~(1<<5);
	}
	
	if (PWM_Timer <= PWM_Lufter2 && PWM_Lufter2 >= 0)
	{
		PORTA |= (1<<6) ;
		}else{
		PORTA &= ~(1<<6);
	}
	
		if (PWM_Timer <= PWM_Lufter2 && PWM_Lufter2 >= 0)
	{
		PORTA |= (1<<6) ;
		}else{
		PORTA &= ~(1<<6);
	}
	
	if (PWM_Timer <= PWM_Lufter2 && PWM_Lufter2 >= 0)
	{
		PORTA |= (1<<6) ;
		}else{
		PORTA &= ~(1<<6);
	}
	
	if (PWM_Timer <= PWM_RGB1_Blau && PWM_RGB1_Blau >= 0)
	{
		PORTC |= (1<<6) ;
		}else{
		PORTC &= ~(1<<6);
	}
	
	if (PWM_Timer <= PWM_RGB1_Gruen && PWM_RGB1_Gruen >= 0)
	{
		PORTC |= (1<<5) ;
		}else{
		PORTC &= ~(1<<5);
	}
	
	if (PWM_Timer <= PWM_RGB1_Rot && PWM_RGB1_Rot >= 0)
	{
		PORTC |= (1<<4) ;
		}else{
		PORTC &= ~(1<<4);
	}
	
	if (PWM_Timer <= PWM_RGB2_Rot && PWM_RGB2_Rot >= 0)
	{
		PORTA |= (1<<7) ;
		}else{
		PORTA &= ~(1<<7);
	}
	
	if (PWM_Timer <= PWM_RGB2_Gruen && PWM_RGB2_Gruen >= 0)
	{
		PORTG |= (1<<2) ;
		}else{
		PORTG &= ~(1<<2);
	}
	
	if (PWM_Timer <= PWM_RGB2_Blau && PWM_RGB2_Blau >= 0)
	{
		PORTC |= (1<<7) ;
		}else{
		PORTC &= ~(1<<7);
	}

	if (PWM_Timer == 255)
	{
		PWM_Timer = 0;
	}
	

	
	//TCCR2 =   0b00001100;
}

ISR (TIMER1_COMPA_vect)
{
	if (Pumpen_Counter <= Pumpen_MaxTimer)
	{
		Pumpen_Counter++;		

		if (Pumpen_Counter >= 5)
		{
			Pumpen_Flag = Pumpen_Wait;
		}
		else
		{
			Pumpen_Flag = 1;
		}
	}
	else 
	{
		Pumpen_Flag = Pumpen_Wait;
	}
	
	//PORTB ^= (1<<2);
}

ISR (TIMER2_COMP_vect)
{
		volatile uint8_t i;
		
		Set_SRLatch(OFF);
		_delay_us(SR_DelayTime);
		
		for (i = 0; i <= 15; i++)
		{
			
			if (ShiftReg[i] == ON)
			{
				Set_SRDaten(ON);
			}
			if (ShiftReg[i] == OFF)
			{
				Set_SRDaten(OFF);
			}
			
			_delay_us(SR_DelayTime);
			Set_SRTakt(ON);
			_delay_us(SR_DelayTime);
			Set_SRTakt(OFF);
			_delay_us(SR_DelayTime);
			Set_SRTakt(OFF);
			_delay_us(SR_DelayTime);
			
		}
		
		Set_SRLatch(ON);
		
		if (RX_Feedback_Flag != 0)
		{
			RX_Timer++;
			
			if (RX_Timer == Rx_Laufzeit)
			{
				RX_Timer = 0;
				RX_Flag = 0;
				RX_Feedback_Flag = 0;
				WritePos = 0;
			}
		}
				
}

