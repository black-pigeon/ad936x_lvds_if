
#ifndef AXI_LITE_TO_USER_H
#define AXI_LITE_TO_USER_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define AXI_LITE_TO_USER_S00_AXI_SLV_REG0_OFFSET 0
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG1_OFFSET 4
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG2_OFFSET 8
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG3_OFFSET 12
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG4_OFFSET 16
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG5_OFFSET 20
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG6_OFFSET 24
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG7_OFFSET 28
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG8_OFFSET 32
#define AXI_LITE_TO_USER_S00_AXI_SLV_REG9_OFFSET 36


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_LITE_TO_USER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_LITE_TO_USERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void AXI_LITE_TO_USER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define AXI_LITE_TO_USER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_LITE_TO_USER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_LITE_TO_USER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 AXI_LITE_TO_USER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_LITE_TO_USER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the AXI_LITE_TO_USER instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus AXI_LITE_TO_USER_Reg_SelfTest(void * baseaddr_p);

#include "xparameters.h"
#define axi_lite_addr 	XPAR_AXI_LITE_TO_USER_0_S00_AXI_BASEADDR
#define DELAY_VALUE		AXI_LITE_TO_USER_S00_AXI_SLV_REG0_OFFSET
#define LOAD_EN 		AXI_LITE_TO_USER_S00_AXI_SLV_REG1_OFFSET
#define RX_CLK_CE	 	AXI_LITE_TO_USER_S00_AXI_SLV_REG2_OFFSET
#define DDS_EN 			AXI_LITE_TO_USER_S00_AXI_SLV_REG3_OFFSET
#define DDS_INC			AXI_LITE_TO_USER_S00_AXI_SLV_REG4_OFFSET
#define MODE_SELECT		AXI_LITE_TO_USER_S00_AXI_SLV_REG5_OFFSET
void AXI_REG_WRITE(unsigned RegOffset, u32 Data);
void AXI_REG_READ(u32 *disPtr,u8 byteCnt,unsigned RegOffset);
#endif // AXI_LITE_TO_USER_H
