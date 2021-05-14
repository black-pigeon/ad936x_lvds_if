

/***************************** Include Files *******************************/
#include "axi_lite_to_user.h"

/************************** Function Definitions ***************************/
void AXI_REG_WRITE(unsigned RegOffset, u32 Data)
{
	AXI_LITE_TO_USER_mWriteReg(axi_lite_addr,RegOffset,Data);
}

void AXI_REG_READ(u32 *disPtr,u8 byteCnt,unsigned RegOffset)
{
	u8 i;
	u32 recv;
	for(i=0;i<byteCnt;i++){
		recv = AXI_LITE_TO_USER_mReadReg(axi_lite_addr,RegOffset);
		*(disPtr+i) = recv;
	}
}
