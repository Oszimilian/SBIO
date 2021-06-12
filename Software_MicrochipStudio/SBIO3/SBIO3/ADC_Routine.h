/*
 * ADC_Routine.h
 *
 * Created: 12.06.2021 19:59:10
 *  Author: Maximilian
 */ 

#define ON				1
#define OFF				0

//Settings
#define ADC_square		10


typedef struct
{
	uint8_t ADC_Channellist [8];
	uint16_t **ADC_Val;
	uint8_t Channelcounter;
	double ADC_Average[8];
	
}ADW;
ADW ADW0;

void Init_ADC (ADW *ADW0);
void Calculate_ADC(ADW *ADW0);
void Start_ADC (ADW *ADW0);