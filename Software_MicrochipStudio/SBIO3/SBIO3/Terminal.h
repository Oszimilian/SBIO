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
	uint8_t Info_En;
	char Last_CMD[20];
	
	char CMD_TASK1[10];
	char CMD_UPDATE[10];
	
	char CMD_SET_TEMPL[18];
	char CMD_SET_TEMPH[18];
	char CMD_SET_LUMIL[18];
	char CMD_SET_LUMIH[18];
	char CMD_SET_HUMIL[18];
	char CMD_SET_HUMIH[18];
	char CMD_SET_GHUML[18];
	char CMD_SET_GHUMH[18];
	
	char CMD_INFO[15];
	
}Settings_Terminal;
Settings_Terminal Terminal;

void Show_Terminal(void);
void Init_Terminal (Settings_Terminal *Terminal);