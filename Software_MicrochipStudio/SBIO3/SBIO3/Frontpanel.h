/*
 * Frontpanel.h
 *
 * Created: 12.06.2021 21:30:27
 *  Author: Maximilian
 */ 


typedef struct
{
	
	uint8_t Frontpanel[16];
	
}Show;
Show Frontpanel;

void Show_Frontpanel(Show *Frontpanel);

void Write_Frontpanel (Show *Frontpanel, uint8_t LED, uint8_t Zustand);