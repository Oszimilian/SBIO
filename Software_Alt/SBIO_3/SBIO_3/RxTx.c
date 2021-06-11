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

volatile uint8_t RxBuffer[128] = {0};
volatile uint8_t WritePos = 0;
volatile uint8_t Datenlaenge = 0;

uint8_t TxBuffer[128];
volatile uint8_t RX_Flag;


ISR(USART0_RX_vect)
{
	RxBuffer[WritePos] = UDR0;
	
	RX_Feedback_Flag = 1;				
	
	WritePos = WritePos + 1;
	
	Datenlaenge = RxBuffer[2] + 8;
	
	if (WritePos == Datenlaenge)
	{
		WritePos = 0;
		RX_Flag = 1;
	}
}

void Rx_Select (void)
{
	if (RxBuffer[0] == 'S')
	{
		if (RxBuffer[1] == Moduladresse)
		{
			Rx_Funktion();
			
		}
	}
}






void Rx_Funktion (void)
{
	if(RX_Flag == 1)
	{
		//DBG ON
		if (RxBuffer[3] == 'D' && RxBuffer[4] == 'B' && RxBuffer[5] == 'G' && RxBuffer[6] == 'O' && RxBuffer[7] == 'N' && RxBuffer[8] == 'N')
		{
			Set_Dbg2(ON);
			//RX_Flag = 0;
		}
		//DBG OFF
		if (RxBuffer[3] == 'D' && RxBuffer[4] == 'B' && RxBuffer[5] == 'G' && RxBuffer[6] == 'O' && RxBuffer[7] == 'F' && RxBuffer[8] == 'F')
		{
			Set_Dbg2(OFF);
			//RX_Flag = 0;
		}
		//RGB1
		if (RxBuffer[3] == 'R' && RxBuffer[4] == 'G' && RxBuffer[5] == 'B' && RxBuffer[6] == 'O' && RxBuffer[7] == 'N' && RxBuffer[8] == 'E')
		{
			Set_RGB1_ROT(PWM, RxBuffer[9]);
			Set_RGB1_GRUEN(PWM, RxBuffer[10]);
			Set_RGB1_BLAU(PWM, RxBuffer[11]);
			//RX_Flag = 0;
		}
		if (RxBuffer[3] == 'R' && RxBuffer[4] == 'G' && RxBuffer[5] == 'B' && RxBuffer[6] == 'T' && RxBuffer[7] == 'W' && RxBuffer[8] == 'O')
		{
			Set_RGB2_ROT(PWM, RxBuffer[9]);
			Set_RGB2_GRUEN(PWM, RxBuffer[10]);
			Set_RGB2_BLAU(PWM, RxBuffer[11]);
			//RX_Flag = 0;
		}
		if (RxBuffer[3] == 'F' && RxBuffer[4] == 'A' && RxBuffer[5] == 'D' && RxBuffer[6] == 'E' && RxBuffer[7] == 'O' && RxBuffer[8] == 'N')
		{
			Fade();
			_delay_ms(100);
			Fade_Back();
		}
		if (RxBuffer[3] == 'H' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'O' && RxBuffer[7] == 'N' && RxBuffer[8] == 'N')
		{
			Set_Heizung(ON, 0);
		}
		if (RxBuffer[3] == 'H' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'O' && RxBuffer[7] == 'F' && RxBuffer[8] == 'F')
		{
			Set_Heizung(OFF, 0);
		}
		if (RxBuffer[3] == 'L' && RxBuffer[4] == 'U' && RxBuffer[5] == 'F' && RxBuffer[6] == 'O' && RxBuffer[7] == 'P' && RxBuffer[8] == 'W')
		{
			Set_Lufter1(PWM, RxBuffer[9]);
		}
		if (RxBuffer[3] == 'L' && RxBuffer[4] == 'U' && RxBuffer[5] == 'F' && RxBuffer[6] == 'T' && RxBuffer[7] == 'P' && RxBuffer[8] == 'W')
		{
			Set_Lufter2(PWM, RxBuffer[9]);
		}
		if (RxBuffer[3] == 'L' && RxBuffer[4] == 'U' && RxBuffer[5] == 'F' && RxBuffer[6] == 'T' && RxBuffer[7] == 'O' && RxBuffer[8] == 'F')
		{
			Set_Lufter2(PWM, RxBuffer[9]);
			Set_Lufter1(PWM, RxBuffer[9]);
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'V' && RxBuffer[7] == 'O' && RxBuffer[8] == 'L')
		{
			Tx_Voltage();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'C' && RxBuffer[7] == 'U' && RxBuffer[8] == 'R')
		{
			Tx_Current();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'H' && RxBuffer[7] == 'U' && RxBuffer[8] == 'M')
		{
			Tx_Humi();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'L' && RxBuffer[7] == 'U' && RxBuffer[8] == 'M')
		{
			Tx_Lumi();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'T' && RxBuffer[7] == 'E' && RxBuffer[8] == 'M')
		{
			Tx_Temp();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'G' && RxBuffer[7] == 'N' && RxBuffer[8] == 'O')
		{
			Tx_GND1();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'G' && RxBuffer[7] == 'N' && RxBuffer[8] == 'T')
		{
			Tx_GND2();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'A' && RxBuffer[7] == 'L' && RxBuffer[8] == 'L')
		{
			Tx_Humi();
			Tx_Lumi();
			Tx_Temp();
			Tx_GND1();
			Tx_GND2();
		}
		if (RxBuffer[3] == 'S' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'P' && RxBuffer[7] == 'U' && RxBuffer[8] == 'M')
		{
			Funktion_Pumpe();
			//Set_Dbg2(ON);
		}
		if (RxBuffer[3] == 'A' && RxBuffer[4] == 'U' && RxBuffer[5] == 'T' && RxBuffer[6] == 'O' && RxBuffer[7] == 'N' && RxBuffer[8] == 'O')
		{
			Modi_Flag = Auto;
		}
		if (RxBuffer[3] == 'M' && RxBuffer[4] == 'A' && RxBuffer[5] == 'N' && RxBuffer[6] == 'U' && RxBuffer[7] == 'E' && RxBuffer[8] == 'L')
		{
			Modi_Flag = Manu;
		}
		if (RxBuffer[3] == 'N' && RxBuffer[4] == 'O' && RxBuffer[5] == 'T' && RxBuffer[6] == 'A' && RxBuffer[7] == 'U' && RxBuffer[8] == 'S')
		{
			Modi_Flag = Stop;
		}
		if (RxBuffer[3] == 'S' && RxBuffer[4] == 'C' && RxBuffer[5] == 'H' && RxBuffer[6] == 'R' && RxBuffer[7] == 'I' && RxBuffer[8] == 'T')
		{
			Schrittmotor1(256, Negativ);
			Schrittmotor2(256, Negativ);
		}
		if (RxBuffer[3] == 'T' && RxBuffer[4] == 'E' && RxBuffer[5] == 'S' && RxBuffer[6] == 'T' && RxBuffer[7] == 'E' && RxBuffer[8] == 'E')
		{
			EEProm_Writer();
		}
		if (RxBuffer[3] == 'S' && RxBuffer[4] == 'E' && RxBuffer[5] == 'N' && RxBuffer[6] == 'D' && RxBuffer[7] == 'D' && RxBuffer[8] == 'A')
		{
			Save_Grenzwert();
		}
		if (RxBuffer[3] == 'G' && RxBuffer[4] == 'E' && RxBuffer[5] == 'T' && RxBuffer[6] == 'R' && RxBuffer[7] == 'U' && RxBuffer[8] == 'N')
		{
					Set_Dbg2(ON);
					_delay_ms(5);
					Set_Dbg2(OFF);
					_delay_ms(5);
			Tx_ModiFlag();
		}
		
		
	}

RX_Flag = 0;
RX_Feedback_Flag = 0;
WritePos = 0;
}



void Send_Data (uint8_t Datenanzahl)
{
	UCSR0B &=  ~( 1<<RXEN0);
	UCSR0B &= ~(1<<RXCIE0);
	Set_UART_DIR(ON);
	
	uint8_t i;
	
	//while (!(UCSR0A & (1<<UDRE0)));
	
	UDR0 = 'S';
	_delay_ms(1);
	//while (!(UCSR0A & (1<<UDRE0)));	
	UDR0 = 'P';
	_delay_ms(1);
	
	

	
	for (i = 0; i <= Datenanzahl; i++)
	{
		//while (!(UCSR0A & (1<<UDRE0)));
		UDR0 = TxBuffer[i];
		_delay_ms(1);
	}
	Set_UART_DIR(OFF);
	UCSR0B |=  ( 1<<RXEN0);
	UCSR0B |= (1<<RXCIE0);
	
	//_delay_ms(10);
}
