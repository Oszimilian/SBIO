/*
 * UART_Routine.h
 *
 * Created: 28.05.2021 12:58:57
 *  Author: Maximilian
 */ 



#define FOSC 16000000
#define BAUD 76800
#define MYUBRR ((FOSC/16/BAUD) - 1)



#define RX_Buffer_size 128
#define RX_Task_size 10


#define TASK1			1
#define TASK2			2
#define SET_TEMP_L		3
#define SET_TEMP_H		4
#define SET_LUMI_L		5
#define SET_LUMI_H		6
#define SET_HUMI_L		7
#define SET_HUMI_H		8
#define SET_GHUM_L		9
#define SET_GHUM_H		10

#define _UART_break(x)	UART0->RX_Task[x] = 0; Terminal.Terminal_En = 1; break


typedef struct
{
	
	volatile char RX_Buf[RX_Buffer_size]; 
	volatile uint8_t RX_Complete;
	volatile uint8_t RX_Global_Counter;
	volatile uint8_t RX_Task[RX_Task_size];
	volatile char RX_Char;
	
}UART;
UART UART0;


void UART_Init(UART *UART_s);
static int UART_TX(char c, FILE *stream);
static FILE mystdout = FDEV_SETUP_STREAM(UART_TX, NULL, _FDEV_SETUP_WRITE);

void UART_RX_Handler(UART *UART0);
void RX_Taskhandler(UART *UART0);





