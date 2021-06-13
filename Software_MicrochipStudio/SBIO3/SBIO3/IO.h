#define ON 			1
#define OFF 		0

#define Debounce	10

#define PWM_Anzahl	10

#define PWM_Pumpe 		0
#define PWM_Heizung 	1
#define PWM_Lufter1		2
#define PWM_Lufter2		3
#define PWM_Rot1		4
#define PWM_Grun1		5
#define PWM_Blau1		6
#define PWM_Rot2		7
#define PWM_Grun2		8
#define PWM_Blau2		9



typedef struct
{

	volatile  uint8_t PWM_Enabel[PWM_Anzahl];
	volatile uint8_t PWM_Wert[PWM_Anzahl];
	volatile uint8_t SM_Flag;

}PWM_Setting;
PWM_Setting PWM;


//Input Ports & Pins
#define Input1_Port		PINA
#define Input2_Port		PINA
#define Stop_Port		PINB
#define Start_Port		PINB
#define NotAus_Port		PINE
#define DBG1_Port		PINB

#define Input1			0
#define Input2			1
#define Stop			0
#define Start			1
#define NotAus			7
#define DBG1			3


//Aktoren
#define Pumpe 		3
#define Heizung 	4
#define Lufter1		5
#define Lufter2		6
#define DBG			2


//RGB
#define Rot1		6
#define Grun1		5
#define Blau1		4

#define Rot2		7
#define Grun2		2
#define Blau2		7


//Schieberegister
#define Latch		4
#define Daten		5
#define Takt		6


//Schirttmotor 1
#define SM1_1		6
#define SM1_2		7
#define SM1_3		0
#define SM1_4		1


//Schrittmotor 2
#define SM2_1		0
#define SM2_2		1
#define SM2_3		2
#define SM2_4		3

//UART
#define DIR			2


//Schirttmotor 1 Schritte
#define SM1_Schritt1	PORTD |= (ON<<SM1_1);  PORTD &= ~(ON<<SM1_2); PORTG &= ~(ON<<SM1_3); PORTG &= ~(ON<<SM1_4);
#define SM1_Schritt2	PORTD &= ~(ON<<SM1_1); PORTD |= (ON<<SM1_2);  PORTG &= ~(ON<<SM1_3); PORTG &= ~(ON<<SM1_4);
#define SM1_Schritt3	PORTD &= ~(ON<<SM1_1); PORTD &= ~(ON<<SM1_2); PORTG |= (ON<<SM1_3);  PORTG &= ~(ON<<SM1_4);
#define SM1_Schritt4	PORTD &= ~(ON<<SM1_1); PORTD &= ~(ON<<SM1_2); PORTG &= ~(ON<<SM1_3); PORTG |= (ON<<SM1_4);


//Schirttmotor 2 Schritte
#define SM2_Schritt1	PORTC |= (ON<<SM2_1);  PORTC &= ~(ON<<SM2_2); PORTC &= ~(ON<<SM2_3); PORTC &= ~(ON<<S2_4);
#define SM2_Schritt2	PORTC &= ~(ON<<SM2_1); PORTC |= (ON<<SM2_2);  PORTC &= ~(ON<<S2_3);  PORTC &= ~(ON<<SM2_4);
#define SM2_Schritt3	PORTC &= ~(ON<<SM2_1); PORTC &= ~(ON<<SM2_2); PORTC |= (ON<<SM2_3);  PORTC &= ~(ON<<SM2_4);
#define SM2_Schritt4	PORTC &= ~(ON<<SM2_1); PORTC &= ~(ON<<SM2_2); PORTC &= ~(ON<<SM2_3); PORTC |= (ON<<SM2_4);


//GPIO Makros
#define _Pumpe(x) 		if (x) PORTA |= (1<<Pumpe);   else PORTA &= ~(1<<Pumpe);
#define _Heizung(x) 	if (x) PORTA |= (1<<Heizung); else PORTA &= ~(1<<Heizung);
#define _Lufter1(x)		if (x) PORTA |= (1<<Lufter1); else PORTA &= ~(1<<Lufter1);
#define _Lufter2(x)		if (x) PORTA |= (1<<Lufter2); else PORTA &= ~(1<<Lufter2);

#define _DBG(x)			if (x) PORTB |= (1<<DBG);	  else PORTB &= ~(1<<DBG);

#define _Rot1(x)		if (x) PORTC |= (1<<Rot1);    else PORTC &= ~(1<<Rot1);
#define _Grun1(x)		if (x) PORTC |= (1<<Grun1);   else PORTC &= ~(1<<Grun1);
#define _Blau1(x)		if (x) PORTC |= (1<<Blau1);   else PORTC &= ~(1<<Blau1);

#define _Rot2(x)		if (x) PORTA |= (1<<Rot2);    else PORTA &= ~(1<<Rot2);
#define _Grun2(x)		if (x) PORTG |= (1<<Grun2);   else PORTA &= ~(1<<Grun2);
#define _Blau2(x)		if (x) PORTC |= (1<<Blau2);   else PORTA &= ~(1<<Blau2);

#define _Latch(x)		if (x) PORTB |= (1<<Latch);   else PORTB &= ~(1<<Latch);
#define _Daten(x)		if (x) PORTB |= (1<<Daten);   else PORTB &= ~(1<<Daten);
#define _Takt(x)		if (x) PORTB |= (1<<Takt);    else PORTB &= ~(1<<Takt);

#define _DIR(x) 		if (x) PORTE |= (1<<DIR); 	  else PORTE &= ~(1<<DIR);

//PWM_Makros
#define _SET_PWM(y, x)	if (x >= 1){ PWM.PWM_Enabel[y] = ON; PWM.PWM_Wert[y] = x;} if (!x) PWM.PWM_Enabel[y] = OFF;


//Schrittmotor 1 Schritt
#define _SM1(x)		if (x==1) SM1_Schritt1 if (x==2) SM1_Schritt2 if (x==3) SM1_Schritt3 if (x==4) SM1_Schritt4
#define _SM2(x)		if (x==1) SM2_Schritt1 if (x==2) SM2_Schritt2 if (x==3) SM2_Schritt3 if (x==4) SM2_Schritt4




void Init_GPIO(PWM_Setting *PWM);
void Set_OutputPWM(uint8_t Zustand, uint8_t Pin, uint8_t Wert);
