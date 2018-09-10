#include "Global.h"

uint8_t xRam RxTxStatue;
int16_t xRam StabilizerParam[STABLIZER_SIZE];

// Private *****************************************************************************************
uint8_t xRam RxDatHandle;

uint8_t xRam RxStatusIdx;
uint8_t xRam RxPackageData;
uint8_t xRam RxPackageLength, RxPackageCnt;

uint8_t xRam TxSocketDat[TX_BUFFER_SIZE];
uint8_t xRam RxSocketDat[RX_BUFFER_SIZE]; 

uint8_t  cRam DetectStablizerTickOverFlow;
uint16_t cRam DetectStablizerTickCnt;

uint8_t  cRam StablizerTickOverFlow;
uint16_t cRam StablizerTickCnt;

int16_t xRam Sum, SumPre; //static NoInit

// Private *****************************************************************************************
void UART1_Write_Buffer(uint8_t *pTxBuffer, uint8_t SizeBuffer){
	uint8_t i = 0;
	for(i = 0; i < SizeBuffer; i++){
		SBUF1 = pTxBuffer[i];
		while(!(SCON1&SCON1_TI__BMASK));
		SCON1 &= (uint8_t)(~SCON1_TI__BMASK);
	}
}
void UART1_Read_Encode(void){   // 请求获取增稳仪数据包
  TxSocketDat[0] = TX_CMD;
	TxSocketDat[1] = TX_CMD_SIZE; 
	TxSocketDat[2] = TX_ACK_CMD;
	TxSocketDat[3] = TxSocketDat[0] + TxSocketDat[1] + TxSocketDat[2];
}
void UART1_Write_Encode(void) {
  TxSocketDat[0] = TX_CMD; 
	TxSocketDat[1] = TX_DATA_SIZE;
	TxSocketDat[2] = StabilizerParam[IDX_ROLL_ANGLE]   +   StabilizerParam[IDX_ROLL_DIR] 	* 100;
	TxSocketDat[3] = StabilizerParam[IDX_PITCH_ANGLE]  +   StabilizerParam[IDX_PITCH_DIR] * 100;
	TxSocketDat[4] = StabilizerParam[IDX_YAW_ANGLE]    +   StabilizerParam[IDX_YAW_DIR] 	* 100;
	TxSocketDat[5] = StabilizerParam[IDX_ROLL_RATE]    +   StabilizerParam[IDX_ROLL_DIR] 	* 100;
	TxSocketDat[6] = StabilizerParam[IDX_PITCH_RATE]   +   StabilizerParam[IDX_PITCH_DIR] * 100;
	TxSocketDat[7] = StabilizerParam[IDX_YAW_RATE]     +   StabilizerParam[IDX_YAW_DIR] 	* 100;
	TxSocketDat[8] = StabilizerParam[IDX_ROLL_OFFSET]  +   20;
	TxSocketDat[9] = StabilizerParam[IDX_PITCH_OFFSET] +   20;
  
	TxSocketDat[10] = (StabilizerParam[IDX_SW_P1] << 0) | (StabilizerParam[IDX_SW_P2] << 2)
                  | (StabilizerParam[IDX_SW_P3] << 4) | (StabilizerParam[IDX_SW] << 6);
	
	
	TxSocketDat[11] = (StabilizerParam[IDX_BUILD] << 4)		
									|	(StabilizerParam[IDX_MOUNT_DIR] << 2) | (StabilizerParam[IDX_WING_TYPE] << 0);
  
	TxSocketDat[12] = TxSocketDat[0] + TxSocketDat[1] + TxSocketDat[2]
                  + TxSocketDat[3] + TxSocketDat[4] + TxSocketDat[5] 
                  + TxSocketDat[6] + TxSocketDat[7] + TxSocketDat[8] 
                  + TxSocketDat[9] + TxSocketDat[10] + TxSocketDat[11];
}
void RxSocketDeCode(void) {
	if(RxSocketDat[2] > 100) { StabilizerParam[IDX_ROLL_DIR] = 1; }
	else if(RxSocketDat[2] <= 100) { StabilizerParam[IDX_ROLL_DIR] = 0; }

	if(RxSocketDat[3] > 100) { StabilizerParam[IDX_PITCH_DIR] = 1; }
	else if(RxSocketDat[3] <= 100) { StabilizerParam[IDX_PITCH_DIR] = 0; }

	if(RxSocketDat[4] > 100) { StabilizerParam[IDX_YAW_DIR] = 1; }
	else if(RxSocketDat[4] <= 100) { StabilizerParam[IDX_YAW_DIR] = 0; }

	StabilizerParam[IDX_ROLL_ANGLE] 	= RxSocketDat[2] - StabilizerParam[IDX_ROLL_DIR] 	* 100;
	StabilizerParam[IDX_ROLL_RATE] 		= RxSocketDat[5] - StabilizerParam[IDX_ROLL_DIR] 	* 100; 	
	
	StabilizerParam[IDX_PITCH_ANGLE] 	= RxSocketDat[3] - StabilizerParam[IDX_PITCH_DIR] * 100;
	StabilizerParam[IDX_PITCH_RATE] 	= RxSocketDat[6] - StabilizerParam[IDX_PITCH_DIR] * 100; 
	
	StabilizerParam[IDX_YAW_ANGLE] 		= RxSocketDat[4] - StabilizerParam[IDX_YAW_DIR] 	* 100;
	StabilizerParam[IDX_YAW_RATE] 		= RxSocketDat[7] - StabilizerParam[IDX_YAW_DIR] 	* 100;
	
	StabilizerParam[IDX_ROLL_OFFSET] 	= RxSocketDat[8] - 20;
	StabilizerParam[IDX_PITCH_OFFSET] = RxSocketDat[9] - 20;
	
	StabilizerParam[IDX_SW_P1] 				= (RxSocketDat[10] >> 0) & 0x03;
	StabilizerParam[IDX_SW_P2] 				= (RxSocketDat[10] >> 2) & 0x03;
	StabilizerParam[IDX_SW_P3] 				= (RxSocketDat[10] >> 4) & 0x03;
	StabilizerParam[IDX_SW] 					= (RxSocketDat[10] >> 6) & 0x03;
  
	StabilizerParam[IDX_WING_TYPE] 		= (RxSocketDat[11] >> 0) & 0x03;
	StabilizerParam[IDX_MOUNT_DIR] 		= (RxSocketDat[11] >> 2) & 0x03;
	StabilizerParam[IDX_BUILD]				= (RxSocketDat[11] >> 4) & 0x03;
}
void RxSocketHandler(void){
	uint8_t i, Crc_Data;
  
	for(i = 0, Crc_Data = 0; i < RxSocketDat[1] + 0x02; i++){
		Crc_Data += RxSocketDat[i] ;
	}

	if(Crc_Data == RxSocketDat[i]){
		if(RxSocketDat[0] == RX_CMD && RxSocketDat[1] == RX_CMD_SIZE && RxSocketDat[2] == RX_ACK_CMD){	// 接收机成功写入数据
			RxTxStatue &= ~WRITE_COMMAND;
		}else if(RxSocketDat[0] == RX_CMD && RxSocketDat[1] == RX_DATA_SIZE){	 													// 接收接收机数据的包头
			RxTxStatue &= ~READ_COMMAND;
			RxSocketDeCode();
		}
	}
}
void DetectChargeParameter(int16_t *pData, uint8_t DataSize){
  uint8_t sRam i;
  
  Sum = 0;
	for(i = 0; i < DataSize; i++){
		Sum += pData[i];
	}
	if(Sum != SumPre){
		SumPre = Sum;
		if(!(RxTxStatue&WRITE_COMMAND)){
			RxTxStatue &= ~READ_COMMAND; RxTxStatue |= WRITE_COMMAND;
			
			TickTimeInt(0);
			StablizerTickCnt = TickCnt1ms + 50; 
			if(StablizerTickCnt < 50){
				StablizerTickOverFlow = 0x1;
			}
			TickTimeInt(1);
		}
	}
}

void StablizerDatInit(void){
  uint8_t i;
	
  for(i = 0; i < TX_BUFFER_SIZE; i++) TxSocketDat[i] = 0;
  for(i = 0; i < RX_BUFFER_SIZE; i++) RxSocketDat[i] = 0;
  for(i = 0; i < STABLIZER_SIZE; i++) StabilizerParam[i] = 0;	
	
  RxStatusIdx = 0;
  RxPackageData = 0;
  RxPackageLength = 0, RxPackageCnt = 0; 
  
	DetectStablizerTickOverFlow = 0x0; DetectStablizerTickCnt = 0;
	StablizerTickOverFlow = 0x0; StablizerTickCnt = 0;
}
void StablizerDetect(void){
  uint8_t InitDatCnt;
	
  InitDatCnt = 0x32;
  RxTxStatue = READ_COMMAND;
  
  while(1){
		// 读数据
		if(RxDatHandle == 1){ 
      SysModuleEnable |= STABLIZER_MODULE;
      return;
    }
		// 写数据
		TickTimeInt(0);
		if(DetectStablizerTickOverFlow == 0x1){
			if(TickCnt1ms > UINT16_MAX-0x04){
				NOP(); NOP(); NOP(); NOP();
			}else{
				DetectStablizerTickOverFlow = 0x0;
			}
			TickTimeInt(1);
		}else{
			if(TickCnt1ms >= DetectStablizerTickCnt){
				DetectStablizerTickCnt = TickCnt1ms + 0x04;
				if(DetectStablizerTickCnt < 0x04) DetectStablizerTickOverFlow = 0x1; 
				TickTimeInt(1);
				
				InitDatCnt--;
				UART1_Read_Encode();
				UART1_Write_Buffer(TxSocketDat, 4);
			}
		}
  }
	P1MDOUT = (P1MDOUT&(~P1MDOUT_B0__BMASK))|P1MDOUT_B0__OPEN_DRAIN;
	P1MDIN = (P1MDIN&(~P1MDIN_B0__BMASK))|P1MDIN_B0__DIGITAL;
	P1_B0 = 0x1; 
	
	P1MDOUT = (P1MDOUT&(~P1MDOUT_B1__BMASK))|P1MDOUT_B1__OPEN_DRAIN;
	P1MDIN = (P1MDIN&(~P1MDIN_B1__BMASK))|P1MDIN_B1__DIGITAL;
	P1_B1 = 0x1;
}
void StablizerProcessHandle(void){
	// 读数据
	if(RxDatHandle){
    RxDatHandle = 0; RxSocketHandler();
  }
	// 写数据
	TickTimeInt(0);
	if(StablizerTickOverFlow == 0x1){
    if(TickCnt1ms > UINT16_MAX-50){
      NOP(); NOP();
    }else{
      StablizerTickOverFlow = 0x0;
    }
		TickTimeInt(1);
  }else{
    if(TickCnt1ms >= StablizerTickCnt){
    	StablizerTickCnt = TickCnt1ms + 50;
      if(StablizerTickCnt < 50) StablizerTickOverFlow = 0x1; 
			TickTimeInt(1);
      
      if(RxTxStatue&READ_COMMAND){
        UART1_Read_Encode();
        UART1_Write_Buffer(TxSocketDat, RX_CMD_SIZE+0x03);
      }else if(RxTxStatue&WRITE_COMMAND){
        UART1_Write_Encode();
        UART1_Write_Buffer(TxSocketDat, TX_DATA_SIZE+0x03);
      }
    }
  }
}
// Private *****************************************************************************************
void UART1_ISR(void) interrupt UART1_IRQn {
	if(SCON1&SCON1_RI__BMASK){
    SCON1 &= ~SCON1_RI__BMASK;
		RxPackageData = SBUF1;
    
    if(RxStatusIdx == 0x00 && RxPackageData == RX_CMD){  			// 引导码
      RxStatusIdx = 0x01;
      RxSocketDat[0] = RxPackageData;
    }else if(RxStatusIdx == 0x01 && RxPackageData < 0x14){ 		// 数据长度
      RxStatusIdx = 0x02;
      RxSocketDat[1] = RxPackageData;
			RxPackageCnt = 0x00; RxPackageLength = RxPackageData;
    }else if(RxStatusIdx == 0x02 && RxPackageLength > 0x00){ 	// 缓存数据
      if((--RxPackageLength) == 0x00){
        RxStatusIdx = 0x03;
      }
      RxSocketDat[RxPackageCnt+0x02] = RxPackageData;
      RxPackageCnt++;
    }else if(RxStatusIdx == 0x03){ 														// 校验数据
      RxStatusIdx = 0x00;
      RxSocketDat[RxPackageCnt+0x02] = RxPackageData;
			RxDatHandle = 0x01;
    }else{
      RxStatusIdx = 0x00;
    }
  }
}
