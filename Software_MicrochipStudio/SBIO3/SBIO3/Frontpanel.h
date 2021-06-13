/*
 * Frontpanel.h
 *
 * Created: 12.06.2021 21:30:27
 *  Author: Maximilian
 */ 

//Frontpanel LED's
#define F_GNDHUMI_L			0
#define F_GNDHUMI_H			1
#define F_HUMI_L			2
#define F_HUMI_H			3
#define F_TEMP_L			4
#define F_TEMP_H			5
#define F_LUMI_L			6
#define F_LUMI_H			7
#define F_SM				8
#define F_RGB				9
#define F_PUMPE				10
#define F_LUFTER			11
#define F_HEIZUNG			12
#define F_STATUS			13



typedef struct
{
	
	uint8_t Frontpanel[16];
	
}Show;
Show Frontpanel;

void Show_Frontpanel(Show *Frontpanel);

void Write_Frontpanel (uint8_t LED, uint8_t Zustand);

void Update_Frontpanel (Show *Frontpanel, PWM_Setting *PWM);