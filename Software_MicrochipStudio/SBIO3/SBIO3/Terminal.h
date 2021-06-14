/*
 * Terminal.h
 *
 * Created: 13.06.2021 14:45:02
 *  Author: Maximilian
 */ 

#define _Erase_Putty()		printf("\033\143");

typedef struct
{
	
	uint8_t Terminal_En;
	char Last_CMD[20];
	
}Settings_Terminal;
Settings_Terminal Terminal;

void Show_Terminal(void);
void Init_Terminal (Settings_Terminal *Terminal);