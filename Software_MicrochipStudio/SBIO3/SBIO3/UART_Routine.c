/*
 *	UART_Routine.c
 *	
 *	Created: 28.05.2021 12:58:39
 *  Author: Maximilian
 */ 
#define F_CPU 16000000

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>
#include <util/delay.h>

#include "UART_Routine.h"
#include "IO.h"






void UART_Init(UART *UART)
{

	//RXD-PIN als Eingang
	//DDRD &= ~(1<<0);

	//USART Baud rate: 9600
	UBRR0H = (MYUBRR >> 8);
	UBRR0L = MYUBRR;
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
	UCSR0B = (1 << TXEN0) | ( 1<<RXEN0) | (1<<RXCIE0);
	
	//Wichtig für printf
	stdout = &mystdout;
	
	UART->RX_Complete = 0;
	
	
	
	sei();
}

static int UART_TX(char c, FILE *stream)
{
	UCSR0B &= ~(1<<RXCIE0);
	UCSR0B &= ~(1<<RXEN0);

	if (c == '\n') UART_TX('\r', stream);
	
	_DIR(ON)
	
	while (!(UCSR0A & (1<<UDRE0)));
	
	UDR0 = c;
	
	_delay_us(600);
	
	_DIR(OFF)

	UCSR0B |= (1<<RXCIE0);
	UCSR0B |= (1<<RXEN0);
	

	return 0;
} 



ISR(USART0_RX_vect)
{
	static uint8_t RX_Counter = 0;
	
	if (!UART0.RX_Complete)
	{
		char local_RX = UDR0;
		
		if (local_RX == '{') RX_Counter = 0;
			
		if (local_RX == '}')
		{
			UART0.RX_Complete = 1;
			UART0.RX_Global_Counter = RX_Counter;
		}
		
		if (RX_Counter <= (RX_Buffer_size - 1))
		{
			UART0.RX_Buf[RX_Counter] = local_RX;
			RX_Counter++;
		}
	}
}

