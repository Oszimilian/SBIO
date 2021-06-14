
/*
 * UART_Routine.h
 * Inspired by Sparkfun
 * Created: 28.05.2021 12:58:57
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
#include "ADC_Routine.h"
#include "Frontpanel.h"
#include "TWI.h"
#include "Terminal.h"


int main (void)
{
	Init_GPIO(&PWM);
    UART_Init(&UART0);
	Init_ADC(&ADW0);
	TWI_Init(&TWI);
	
	char Test[] = "Hallo Terminal";


    while(1)
    {
		

		Show_Terminal();

	
		_delay_ms(1000);
		
		

		_SET_PWM(PWM_Pumpe, 1);
		_SET_PWM(PWM_Heizung, 1);
		_SET_PWM(PWM_Lufter1, 1);
		_SET_PWM(PWM_Rot1, 1);
		PWM.SM_Flag = 1;
		
		PWM_Generator(&PWM);
		
		Update_Frontpanel(&Frontpanel, &PWM);
		Show_Frontpanel(&Frontpanel);
		
		I2C_GetLuminance();
		I2c_GetHumi();
		I2c_GetTemp();

		Start_ADC(&ADW0);
		Calculate_ADC(&ADW0);
		Calculate_TWI(&TWI);
		UART_RX_Handler(&UART0);
		RX_Taskhandler(&UART0);
    }

    return(0);
}






