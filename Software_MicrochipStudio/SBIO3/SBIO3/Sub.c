/*
 * Sub.c
 *
 * Created: 14.06.2021 14:18:19
 *  Author: 107475
 */ 
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
#include "Sub.h"

