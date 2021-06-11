################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UART/UART_Routine.c \
../UART/UART_Routine_Handling.c 

OBJS += \
./UART/UART_Routine.o \
./UART/UART_Routine_Handling.o 

C_DEPS += \
./UART/UART_Routine.d \
./UART/UART_Routine_Handling.d 


# Each subdirectory must supply rules for building sources it contributes
UART/%.o: ../UART/%.c UART/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega64 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


