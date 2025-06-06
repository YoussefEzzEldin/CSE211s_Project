# 1 ".\\mbed-os\\targets\\TARGET_STM\\TARGET_STM32F4\\TARGET_STM32F401xE\\TOOLCHAIN_ARM\\startup_stm32f401xe.S"
# 1 "<built-in>" 1
# 391 "<built-in>"
# 1 "./BUILD/NUCLEO_F401RE/ARMC6\\mbed_config.h" 1
# 392 "<built-in>" 2
# 1 ".\\mbed-os\\targets\\TARGET_STM\\TARGET_STM32F4\\TARGET_STM32F401xE\\TOOLCHAIN_ARM\\startup_stm32f401xe.S" 2
;*******************************************************************************
;* File Name : startup_stm32f401xe.s
;* Author : MCD Application Team
;* Description : STM32F401xe devices vector table for MDK-ARM toolchain.
;* This module performs:
;* - Set the initial SP
;* - Set the initial PC == Reset_Handler
;* - Set the vector table entries with the exceptions ISR address
;* - Branches to __main in the C library (which eventually
;* calls main()).
;* After Reset the CortexM4 processor is in Thread mode,
;* priority is Privileged, and the Stack is set to Main.
;********************************************************************************
;* @attention
;*
;* <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
;* All rights reserved.</center></h2>
;*
;* This software component is licensed by ST under BSD 3-Clause license,
;* the "License"; You may not use this file except in compliance with the
;* License. You may obtain a copy of the License at:
;* opensource.org/licenses/BSD-3-Clause
;*
;*******************************************************************************
;* <<< Use Configuration Wizard in Context Menu >>>
;
                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset
                AREA RESET, DATA, READONLY
                EXPORT __Vectors
                EXPORT __Vectors_End
                EXPORT __Vectors_Size

                IMPORT |Image$$ARM_LIB_STACK$$ZI$$Limit|
__Vectors DCD |Image$$ARM_LIB_STACK$$ZI$$Limit| ; Top of Stack
                DCD Reset_Handler ; Reset Handler
                DCD NMI_Handler ; NMI Handler
                DCD HardFault_Handler ; Hard Fault Handler
                DCD MemManage_Handler ; MPU Fault Handler
                DCD BusFault_Handler ; Bus Fault Handler
                DCD UsageFault_Handler ; Usage Fault Handler
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD SVC_Handler ; SVCall Handler
                DCD DebugMon_Handler ; Debug Monitor Handler
                DCD 0 ; Reserved
                DCD PendSV_Handler ; PendSV Handler
                DCD SysTick_Handler ; SysTick Handler

                ; External Interrupts
                DCD WWDG_IRQHandler ; Window WatchDog
                DCD PVD_IRQHandler ; PVD through EXTI Line detection
                DCD TAMP_STAMP_IRQHandler ; Tamper and TimeStamps through the EXTI line
                DCD RTC_WKUP_IRQHandler ; RTC Wakeup through the EXTI line
                DCD FLASH_IRQHandler ; FLASH
                DCD RCC_IRQHandler ; RCC
                DCD EXTI0_IRQHandler ; EXTI Line0
                DCD EXTI1_IRQHandler ; EXTI Line1
                DCD EXTI2_IRQHandler ; EXTI Line2
                DCD EXTI3_IRQHandler ; EXTI Line3
                DCD EXTI4_IRQHandler ; EXTI Line4
                DCD DMA1_Stream0_IRQHandler ; DMA1 Stream 0
                DCD DMA1_Stream1_IRQHandler ; DMA1 Stream 1
                DCD DMA1_Stream2_IRQHandler ; DMA1 Stream 2
                DCD DMA1_Stream3_IRQHandler ; DMA1 Stream 3
                DCD DMA1_Stream4_IRQHandler ; DMA1 Stream 4
                DCD DMA1_Stream5_IRQHandler ; DMA1 Stream 5
                DCD DMA1_Stream6_IRQHandler ; DMA1 Stream 6
                DCD ADC_IRQHandler ; ADC1, ADC2 and ADC3s
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD EXTI9_5_IRQHandler ; External Line[9:5]s
                DCD TIM1_BRK_TIM9_IRQHandler ; TIM1 Break and TIM9
                DCD TIM1_UP_TIM10_IRQHandler ; TIM1 Update and TIM10
                DCD TIM1_TRG_COM_TIM11_IRQHandler ; TIM1 Trigger and Commutation and TIM11
                DCD TIM1_CC_IRQHandler ; TIM1 Capture Compare
                DCD TIM2_IRQHandler ; TIM2
                DCD TIM3_IRQHandler ; TIM3
                DCD TIM4_IRQHandler ; TIM4
                DCD I2C1_EV_IRQHandler ; I2C1 Event
                DCD I2C1_ER_IRQHandler ; I2C1 Error
                DCD I2C2_EV_IRQHandler ; I2C2 Event
                DCD I2C2_ER_IRQHandler ; I2C2 Error
                DCD SPI1_IRQHandler ; SPI1
                DCD SPI2_IRQHandler ; SPI2
                DCD USART1_IRQHandler ; USART1
                DCD USART2_IRQHandler ; USART2
                DCD 0 ; Reserved
                DCD EXTI15_10_IRQHandler ; External Line[15:10]s
                DCD RTC_Alarm_IRQHandler ; RTC Alarm (A and B) through EXTI Line
                DCD OTG_FS_WKUP_IRQHandler ; USB OTG FS Wakeup through EXTI line
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD DMA1_Stream7_IRQHandler ; DMA1 Stream7
                DCD 0 ; Reserved
                DCD SDIO_IRQHandler ; SDIO
                DCD TIM5_IRQHandler ; TIM5
                DCD SPI3_IRQHandler ; SPI3
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD DMA2_Stream0_IRQHandler ; DMA2 Stream 0
                DCD DMA2_Stream1_IRQHandler ; DMA2 Stream 1
                DCD DMA2_Stream2_IRQHandler ; DMA2 Stream 2
                DCD DMA2_Stream3_IRQHandler ; DMA2 Stream 3
                DCD DMA2_Stream4_IRQHandler ; DMA2 Stream 4
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD OTG_FS_IRQHandler ; USB OTG FS
                DCD DMA2_Stream5_IRQHandler ; DMA2 Stream 5
                DCD DMA2_Stream6_IRQHandler ; DMA2 Stream 6
                DCD DMA2_Stream7_IRQHandler ; DMA2 Stream 7
                DCD USART6_IRQHandler ; USART6
                DCD I2C3_EV_IRQHandler ; I2C3 event
                DCD I2C3_ER_IRQHandler ; I2C3 error
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD FPU_IRQHandler ; FPU
                DCD 0 ; Reserved
  DCD 0 ; Reserved
  DCD SPI4_IRQHandler ; SPI4

__Vectors_End

__Vectors_Size EQU __Vectors_End - __Vectors

                AREA |.text|, CODE, READONLY

; Reset handler
Reset_Handler PROC
                 EXPORT Reset_Handler [WEAK]
        IMPORT SystemInit
        IMPORT __main

                 LDR R0, =SystemInit
                 BLX R0
                 LDR R0, =__main
                 BX R0
                 ENDP

; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler PROC
                EXPORT NMI_Handler [WEAK]
                B .
                ENDP
HardFault_Handler PROC

                EXPORT HardFault_Handler [WEAK]
                B .
                ENDP
MemManage_Handler PROC

                EXPORT MemManage_Handler [WEAK]
                B .
                ENDP
BusFault_Handler PROC

                EXPORT BusFault_Handler [WEAK]
                B .
                ENDP
UsageFault_Handler PROC

                EXPORT UsageFault_Handler [WEAK]
                B .
                ENDP
SVC_Handler PROC
                EXPORT SVC_Handler [WEAK]
                B .
                ENDP
DebugMon_Handler PROC

                EXPORT DebugMon_Handler [WEAK]
                B .
                ENDP
PendSV_Handler PROC
                EXPORT PendSV_Handler [WEAK]
                B .
                ENDP
SysTick_Handler PROC
                EXPORT SysTick_Handler [WEAK]
                B .
                ENDP

Default_Handler PROC

                EXPORT WWDG_IRQHandler [WEAK]
                EXPORT PVD_IRQHandler [WEAK]
                EXPORT TAMP_STAMP_IRQHandler [WEAK]
                EXPORT RTC_WKUP_IRQHandler [WEAK]
                EXPORT FLASH_IRQHandler [WEAK]
                EXPORT RCC_IRQHandler [WEAK]
                EXPORT EXTI0_IRQHandler [WEAK]
                EXPORT EXTI1_IRQHandler [WEAK]
                EXPORT EXTI2_IRQHandler [WEAK]
                EXPORT EXTI3_IRQHandler [WEAK]
                EXPORT EXTI4_IRQHandler [WEAK]
                EXPORT DMA1_Stream0_IRQHandler [WEAK]
                EXPORT DMA1_Stream1_IRQHandler [WEAK]
                EXPORT DMA1_Stream2_IRQHandler [WEAK]
                EXPORT DMA1_Stream3_IRQHandler [WEAK]
                EXPORT DMA1_Stream4_IRQHandler [WEAK]
                EXPORT DMA1_Stream5_IRQHandler [WEAK]
                EXPORT DMA1_Stream6_IRQHandler [WEAK]
                EXPORT ADC_IRQHandler [WEAK]
                EXPORT EXTI9_5_IRQHandler [WEAK]
                EXPORT TIM1_BRK_TIM9_IRQHandler [WEAK]
                EXPORT TIM1_UP_TIM10_IRQHandler [WEAK]
                EXPORT TIM1_TRG_COM_TIM11_IRQHandler [WEAK]
                EXPORT TIM1_CC_IRQHandler [WEAK]
                EXPORT TIM2_IRQHandler [WEAK]
                EXPORT TIM3_IRQHandler [WEAK]
                EXPORT TIM4_IRQHandler [WEAK]
                EXPORT I2C1_EV_IRQHandler [WEAK]
                EXPORT I2C1_ER_IRQHandler [WEAK]
                EXPORT I2C2_EV_IRQHandler [WEAK]
                EXPORT I2C2_ER_IRQHandler [WEAK]
                EXPORT SPI1_IRQHandler [WEAK]
                EXPORT SPI2_IRQHandler [WEAK]
                EXPORT USART1_IRQHandler [WEAK]
                EXPORT USART2_IRQHandler [WEAK]
                EXPORT EXTI15_10_IRQHandler [WEAK]
                EXPORT RTC_Alarm_IRQHandler [WEAK]
                EXPORT OTG_FS_WKUP_IRQHandler [WEAK]
                EXPORT DMA1_Stream7_IRQHandler [WEAK]
                EXPORT SDIO_IRQHandler [WEAK]
                EXPORT TIM5_IRQHandler [WEAK]
                EXPORT SPI3_IRQHandler [WEAK]
                EXPORT DMA2_Stream0_IRQHandler [WEAK]
                EXPORT DMA2_Stream1_IRQHandler [WEAK]
                EXPORT DMA2_Stream2_IRQHandler [WEAK]
                EXPORT DMA2_Stream3_IRQHandler [WEAK]
                EXPORT DMA2_Stream4_IRQHandler [WEAK]
                EXPORT OTG_FS_IRQHandler [WEAK]
                EXPORT DMA2_Stream5_IRQHandler [WEAK]
                EXPORT DMA2_Stream6_IRQHandler [WEAK]
                EXPORT DMA2_Stream7_IRQHandler [WEAK]
                EXPORT USART6_IRQHandler [WEAK]
                EXPORT I2C3_EV_IRQHandler [WEAK]
                EXPORT I2C3_ER_IRQHandler [WEAK]
                EXPORT FPU_IRQHandler [WEAK]
    EXPORT SPI4_IRQHandler [WEAK]

WWDG_IRQHandler
PVD_IRQHandler
TAMP_STAMP_IRQHandler
RTC_WKUP_IRQHandler
FLASH_IRQHandler
RCC_IRQHandler
EXTI0_IRQHandler
EXTI1_IRQHandler
EXTI2_IRQHandler
EXTI3_IRQHandler
EXTI4_IRQHandler
DMA1_Stream0_IRQHandler
DMA1_Stream1_IRQHandler
DMA1_Stream2_IRQHandler
DMA1_Stream3_IRQHandler
DMA1_Stream4_IRQHandler
DMA1_Stream5_IRQHandler
DMA1_Stream6_IRQHandler
ADC_IRQHandler
EXTI9_5_IRQHandler
TIM1_BRK_TIM9_IRQHandler
TIM1_UP_TIM10_IRQHandler
TIM1_TRG_COM_TIM11_IRQHandler
TIM1_CC_IRQHandler
TIM2_IRQHandler
TIM3_IRQHandler
TIM4_IRQHandler
I2C1_EV_IRQHandler
I2C1_ER_IRQHandler
I2C2_EV_IRQHandler
I2C2_ER_IRQHandler
SPI1_IRQHandler
SPI2_IRQHandler
USART1_IRQHandler
USART2_IRQHandler
EXTI15_10_IRQHandler
RTC_Alarm_IRQHandler
OTG_FS_WKUP_IRQHandler
DMA1_Stream7_IRQHandler
SDIO_IRQHandler
TIM5_IRQHandler
SPI3_IRQHandler
DMA2_Stream0_IRQHandler
DMA2_Stream1_IRQHandler
DMA2_Stream2_IRQHandler
DMA2_Stream3_IRQHandler
DMA2_Stream4_IRQHandler
OTG_FS_IRQHandler
DMA2_Stream5_IRQHandler
DMA2_Stream6_IRQHandler
DMA2_Stream7_IRQHandler
USART6_IRQHandler
I2C3_EV_IRQHandler
I2C3_ER_IRQHandler
FPU_IRQHandler
SPI4_IRQHandler

                B .

                ENDP

                ALIGN

;*******************************************************************************
; User Stack and Heap initialization
;*******************************************************************************

                 END

;************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE*****
