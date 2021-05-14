/***************************************************************************//**
 *   @file   parameters.h
 *   @brief  Parameters Definitions.
 *   @author WCC
*********************************************************************************/
#ifndef __PARAMETERS_H__
#define __PARAMETERS_H__

#include <xparameters.h>
#define GPIO_DEVICE_ID				XPAR_PS7_GPIO_0_DEVICE_ID
#define SPI_DEVICE_ID				XPAR_PS7_SPI_0_DEVICE_ID

#define GPIO_TRX_SW      			0 + 54
#define GPIO_FDD_TDD_SEL 			1 + 54
#define GPIO_TXNRX_PIN        		2 + 54
#define GPIO_ENABLE_PIN				3 + 54
#define GPIO_RESET_PIN				4 + 54
#define GPIO_SYNC_PIN				5 + 54
#define GPIO_EN_AGC					6 + 54
#define GPIO_CTL0_PIN				7 + 54
#define GPIO_CTL1_PIN				8 + 54
#define GPIO_CTL2_PIN				9 + 54
#define GPIO_CTL3_PIN				10 + 54

#define GPIO_BANDSEL_RX1_A			11 + 54
#define GPIO_BANDSEL_RX1_B			12 + 54
#define GPIO_BANDSEL_TX1_A			13 + 54
#define GPIO_BANDSEL_TX1_B			14 + 54

#define GPIO_BANDSEL_RX2_A			15 + 54
#define GPIO_BANDSEL_RX2_B			16 + 54
#define GPIO_BANDSEL_TX2_A			17 + 54
#define GPIO_BANDSEL_TX2_B			18 + 54

#endif // __PARAMETERS_H__

