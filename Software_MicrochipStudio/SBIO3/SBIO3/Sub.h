/*
 * Sub.h
 *
 * Created: 14.06.2021 14:18:32
 *  Author: 107475
 */ 

#define H		1 
#define L		2


typedef struct
{
	
	uint16_t Temp[2];
	uint16_t Lumi[2];
	uint16_t Humi[2];
	uint16_t GHum[2];
		
}Settings_Regelung;
Settings_Regelung Physical_Border;