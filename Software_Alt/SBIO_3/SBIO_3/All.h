#define F_CPU 16000000
#define BAUD 9600
#define BRC ((F_CPU/16/BAUD) - 1)
#define Rx_Laufzeit 300

#define PWM 0x02
#define ON  0x01
#define OFF 0x00
#define SR_DelayTime 1
#define Auto 0x01
#define Manu 0x02
#define Stop 0x03

#define ONOFF   15
#define Heizung  14
#define Lufter   13
#define Pumpe	 12
#define RGB		 11
#define SM		 10
#define LUMI_H	 9
#define LUMI_L	 8
#define TEMP_H	 7
#define TEMP_L	 6
#define HUMI_H	 5
#define HUMI_L   4
#define GNDH_H	 3 
#define GNDH_L	 2

#define i2C_rd          1
#define i2C_wr          0
#define i2C_noACK       0
#define i2C_ACK         1
#define i2C_Adr_Hi      0x5C
//#define i2C_Adr_Lo      0x23
#define i2C_Adr_Lo		0x23
#define i2C_Humi	    0xE5
#define i2C_Temp		0xE3
#define SensorAdr_Si7021  0x40

#define Pumpen_Wait 5
#define Pumpen_MaxTimer 10

#define Max_Voltage	0xF4
#define Max_Current 0x4FF

#define SMTime 1000

#define Positiv 1
#define Negativ 2


void Port_Reset (void);
void MyInitProgramm (void);
void Set_ShiftReg (void);
void Frontpannel_Check (void);

void Rx_Select (void);
void Rx_Funktion (void);

void Send_Data (uint8_t Datenanzahl);
void Transimit_Test (void);
void Fade (void);
void Fade_Back (void);
void Tx_Voltage (void);
void Tx_Current (void);
void Tx_Humi (void);
void Tx_Lumi (void);
void Tx_Temp (void);
void Tx_GND1 (void);
void Tx_GND2 (void);
void Tx_ModiFlag (void);

void Funktion_Pumpe (void);
void GewaechshausControll (void);
void Set_Moduladresse (void);

/******************************************************************************
*                                                                             *
*                                 OUTPUT-SET                                  *
*                                                                             *
******************************************************************************/
void Set_Pumpe (uint8_t Zustand, uint8_t PWM_Wert);
void Set_Heizung (uint8_t Zustand, uint8_t PWM_Wert);
void Set_Lufter1 (uint8_t Zustand, uint8_t PWM_Wert);
void Set_Lufter2 (uint8_t Zustand, uint8_t PWM_Wert);
void Set_RGB2_ROT (uint8_t Zustand, uint8_t PWM_Wert);
void Set_Dbg2 (uint8_t Zustand);
void Set_SRLatch (uint8_t Zustand);
void Set_SRDaten (uint8_t Zustand);
void Set_SRTakt (uint8_t Zustand);
void Set_SM2_2 (uint8_t Zustand);
void Set_SM2_1 (uint8_t Zustand);
void Set_SM2_4 (uint8_t Zustand);
void Set_SM2_3 (uint8_t Zustand);
void Set_RGB1_BLAU (uint8_t Zustand, uint8_t PWM_Wert);
void Set_RGB1_GRUEN (uint8_t Zustand, uint8_t PWM_Wert);
void Set_RGB1_ROT (uint8_t Zustand, uint8_t PWM_Wert);
void Set_RGB2_BLAU (uint8_t Zustand, uint8_t PWM_Wert);
void Set_SM1_2 (uint8_t Zustand);
void Set_SM1_1 (uint8_t Zustand);
void Set_UART_DIR (uint8_t Zustand);
void Set_SM1_4 (uint8_t Zustand);
void Set_SM1_3 (uint8_t Zustand);
void Set_RGB2_GRUEN (uint8_t Zustand, uint8_t PWM_Wert);

void Set_ShiftReg (void);
//void PWM_Mode (void);

void Manu_Show (void);
void NOTAUS_Show (void);
void NotAus (void);

void Controll_VoCu(void);

void Schrittmotor1 (uint16_t Durchlauf, uint8_t Drehrichtung);
void Schrittmotor2 (uint16_t Durchlauf, uint8_t Drehrichtung);

/******************************************************************************
*                                                                             *
*                                 INPUT-GET                                   *
*                                                                             *
******************************************************************************/
uint8_t Get_Input1();
uint8_t Get_Input2();
uint8_t Get_Stop();
uint8_t Get_Start();
uint8_t Get_Dbg1();
uint8_t Get_NotAus();

uint16_t ADC_Messung(uint8_t Channel);
uint16_t Get_GND_Humi1();
uint16_t Get_GND_Humi2();
uint16_t Get_Voltage();
uint16_t Get_Current();

/******************************************************************************
*                                                                             *
*                                 I²C   -SET                                  *
*                                                                             *
******************************************************************************/


void i2c_init();
void i2c_start();
void i2c_stop();
void i2c_write(uint8_t	DataByte);
uint8_t i2c_read(uint8_t ack);
void i2c_send(char *StringToSend);
void i2c_doSensor_wr (uint8_t SensorAdr, uint8_t SensorCmd);
uint16_t i2c_doSensor_rd(uint8_t SensorAdr);
uint16_t I2C_GetLuminance();

uint16_t HWord_Humi;
uint16_t LWord_Humi;

uint16_t HWord_GNDHumi;
uint16_t LWord_GNDHumi;

uint16_t HWord_Lumi;
uint16_t LWord_Lumi;

uint16_t HWord_Temp;
uint16_t LWord_Temp;

//uint16_t HWORD_HUMI;
 
/******************************************************************************
*                                                                             *
*                                 Global-Var                                  *
*                                                                             *
******************************************************************************/
volatile uint8_t PWM_Timer;
volatile uint8_t PWM_Pumpe;
volatile uint8_t PWM_Lufter1;
volatile uint8_t PWM_Lufter2;
volatile uint8_t PWM_RGB1_Rot;
volatile uint8_t PWM_RGB1_Gruen;
volatile uint8_t PWM_RGB1_Blau;
volatile uint8_t PWM_RGB2_Rot;
volatile uint8_t PWM_RGB2_Gruen;
volatile uint8_t PWM_RGB2_Blau;

volatile uint8_t ShiftReg[16];

volatile uint8_t RxBuffer[128];
volatile uint8_t WritePos;
volatile uint8_t Datenlaenge;
uint8_t TxBuffer[128];
volatile uint8_t RX_Flag;
volatile uint8_t RX_Feedback_Flag;
volatile uint8_t RX_Timer;

volatile uint32_t Pumpen_Flag;
volatile uint32_t Pumpen_Counter;

volatile uint8_t Modi_Flag;

uint8_t ManuShow_Timer;

uint8_t Moduladresse;

/******************************************************************************
*                                                                             *
*                                 EEPROM	                                  *
*                                                                             *
******************************************************************************/


void EEProm_Writer (void);
void Save_Grenzwert (void);


