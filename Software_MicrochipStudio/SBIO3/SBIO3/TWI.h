/*
 * TWI.h
 *
 * Created: 13.06.2021 14:13:14
 *  Author: Maximilian
 */ 

#define i2C_rd				1
#define i2C_wr				0
#define i2C_noACK			0
#define i2C_ACK				1
#define i2C_Adr_Hi			0x5C
#define i2C_Adr_Lo		0x23
#define i2C_Adr_Lo			0x23
#define i2C_Humi			0xE5
#define i2C_Temp			0xE3
#define SensorAdr_Si7021	0x40

#define Mittelwerte			10

typedef struct
{
	
	volatile uint16_t HUMI_Val [Mittelwerte];
	volatile uint16_t TEMP_Val [Mittelwerte];
	volatile uint16_t LUMI_Val [Mittelwerte];
	
	double HUMI_Average;
	double TEMP_Average;
	double LUMI_Average;
	
}TWI_Settings;
TWI_Settings TWI;


void TWI_Init (TWI_Settings *TWI);
void i2c_start();
void i2c_stop();
void i2c_write(uint8_t	DataByte);
uint8_t i2c_read(uint8_t ack);
void i2c_send(char *StringToSend);
void i2c_doSensor_wr (uint8_t SensorAdr, uint8_t SensorCmd);
uint16_t i2c_doSensor_rd(uint8_t SensorAdr);
uint16_t i2c_doSensor7021_rd(uint8_t SensorAdr, uint8_t SensorMode);
void I2c_GetHumi(void);
void I2c_GetTemp(void);
void I2C_GetLuminance(void);
void Calculate_TWI(TWI_Settings *TWI);