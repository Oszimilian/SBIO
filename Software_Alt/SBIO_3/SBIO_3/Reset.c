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
*                                 PORT-BIT'S                                  *
*                                                                             *
******************************************************************************/

void Port_Reset (void)
{
	PORTA = 0b00000111;
	DDRA  = 0b11111000; //
	//        |||||||+- 0:	INPUT1
	//        ||||||+-- 1:	INPUT2
	//        |||||+--- 2:	NOT-AUS
	//        ||||+---- 3:	PWM_PUMPE
	//        |||+----- 4:	HEIZUNG
	//        ||+------ 5:	PWM_LUEFTER1
	//        |+------- 6:	PWM_LUEFTER2
	//        +-------- 7:	RGB2_ROT

	PORTB = 0b00001011;
	DDRB  = 0b11110100; //
	//        |||||||+- 0:	STOP
	//        ||||||+-- 1:	START
	//        |||||+--- 2:	Dbg2 (Output)
	//        ||||+---- 3:	Dbg1 (Input)
	//        |||+----- 4:	SR_LATCH
	//        ||+------ 5:	SR_DATEN
	//        |+------- 6:	SR_TAKT
	//        +-------- 7:	
	
	PORTC = 0b00000000;
	DDRC  = 0b11111111; //
	//        |||||||+- 0:	SM2_2
	//        ||||||+-- 1:	SM2_1
	//        |||||+--- 2:	SM2_4
	//        ||||+---- 3:	SM2_3
	//        |||+----- 4:	RGB1_BLAU
	//        ||+------ 5:	RGB1_GRUEN
	//        |+------- 6:	RGB1_ROT
	//        +-------- 7:	RGB2_BLAU
	
	PORTD = 0b00000000;
	DDRD  = 0b11111100; //
	//        |||||||+- 0:	I²C
	//        ||||||+-- 1:	I²C
	//        |||||+--- 2:	
	//        ||||+---- 3:	
	//        |||+----- 4:	
	//        ||+------ 5:	
	//        |+------- 6:	SM1_2
	//        +-------- 7:	SM1_1
	
	PORTE = 0b10011000;
	DDRE  = 0b01100100; //
	//        |||||||+- 0:	RXD
	//        ||||||+-- 1:	TXD
	//        |||||+--- 2:	DIR
	//        ||||+---- 3:	ADRESS1
	//        |||+----- 4:	ADRESS2
	//        ||+------ 5:	
	//        |+------- 6:	
	//        +-------- 7:	NOTAUS
	
	//PORTF = ADC's und JTAG
	
	PORTG = 0b00000;
	DDRG  = 0b11111; //
	//        ||||+- 0:	SM1_4
	//        |||+-- 1:	SM1_3
	//        ||+--- 2: RGB2_GRUEN
	//        |+---- 3:	
	//        +----- 4:


	  ADMUX = 0b01000000;
	//          |||||||+- 0:	MUX0 - Channel select Bit			.
	//          ||||||+-- 1:	MUX1 - Channel select Bit			.
	//          |||||+--- 2:	MUX2 - Channel select Bit			.
	//          ||||+---- 3:	MUX3 - Channel select Bit			.
	//          |||+----- 4:	--------------						.
	//          ||+------ 5:	ADLAR - ADC Left Adjust Result		.
	//          |+------- 6:	REFS0 - Reference Selection Bit 	.
	//          +-------- 7: 	REFS1 - Reference Selection Bit		.
	
	 ADCSRA = 0b11000111;
	//          |||||||+- 0:	ADPS0 - ADC Prescaler Select Bit	.
	//          ||||||+-- 1:	ADPS1 - ADC Prescaler Select Bit	.
	//          |||||+--- 2:	ADPS2 - ADC Prescaler Select Bit	.
	//          ||||+---- 3:	ADIE - ADC Interrupt Enable			.
	//          |||+----- 4:	ADIF - ADC Interrupt Flag			.
	//          ||+------ 5:	ADATE - ADC Auto Trigger Enable		.
	//          |+------- 6:	ADSC - ADC Start Canversion			.
	//          +-------- 7: 	ADEN - ADC Enable					.


	//TIMER 0
	 TCCR0 =   0b00001101;
	 //          |||||||+- 0:	CS00 - Clock Select					.
	 //          ||||||+-- 1:	CS01 - Clock Select					.
	 //          |||||+--- 2:	CS02 - Clock Select					.
	 //          ||||+---- 3:	WGM01 - Waveform Generator Mode		.
	 //          |||+----- 4:	COM00 - Compare Match Output Mode	.
	 //          ||+------ 5:	COM01 - Compare Match Output Mode	.
	 //          |+------- 6:	WGM00 - Waveform Generator Mode		.
	 //          +-------- 7: 	FOC0 - Force Output Compare			.
	 
	 TIMSK =   0b10010010;
	 //          |||||||+- 0:	TOIE0 - T/C Overflow Interrupt Enable				.
	 //          ||||||+-- 1:	OCIE0 - T/C Output Compare Match Interrupt Enable	.
	 //          |||||+--- 2:	TOIE1 - .
	 //          ||||+---- 3:	OCIE1B - .
	 //          |||+----- 4:	OCIE1A - .
	 //          ||+------ 5:	TICIE1 - .
	 //          |+------- 6:	TOIE2 - .
	 //          +-------- 7: 	OCIE2 - .	
	 
	 OCR0 = 2; 
	 
	 //TIMER 1
	TCCR1B =   0b00001101;
	 //          |||||||+- 0:	CS10 - Clock Select							.
	 //          ||||||+-- 1:	CS11 - Clock Select							.
	 //          |||||+--- 2:	CS12 - Clock Select							.
	 //          ||||+---- 3:	WGM12 - Waveform Generator Mode				.
	 //          |||+----- 4:	WGM13 - Waveform Generator Mode				.
	 //          ||+------ 5:	 -											.
	 //          |+------- 6:	ICES1 - Input Capture Edge Select			.
	 //          +-------- 7: 	ICNC1 - Input Capture Noise Canceler		.	 
	 
	OCR1AH = 200;
	OCR1AL = 200;
	
	//Timer 2
	 TCCR2 =   0b00001101;
	 //          |||||||+- 0:	CS20 - Clock Select					.
	 //          ||||||+-- 1:	CS21 - Clock Select					.
	 //          |||||+--- 2:	CS22 - Clock Select					.
	 //          ||||+---- 3:	WGM21 - Waveform Generator Mode		.
	 //          |||+----- 4:	COM20 - Compare Match Output Mode	.
	 //          ||+------ 5:	COM21 - Compare Match Output Mode	.
	 //          |+------- 6:	WGM20 - Waveform Generator Mode		.
	 //          +-------- 7: 	FOC0 - Force Output Compare			. 
	 
	 OCR2 = 200; 
	 

	 
	
	//I²C Konfig
	UBRR0H = (BRC >> 8);
	UBRR0L = BRC;
	
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
	UCSR0B = (1 << TXEN0) | ( 1<<RXEN0) | (1<<RXCIE0);
	 
	 sei();	
	
}