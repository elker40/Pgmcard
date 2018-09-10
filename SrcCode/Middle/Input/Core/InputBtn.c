#include "InputBtn.h"

//**************************************************************************************************
uint8_t xRam BtnUpdate;

uint8_t cRam BtnTickOverFlow;
uint16_t cRam BtnTickCnt;
//**************************************************************************************************
#define BtnClickAlert()						NOP() 		 
#define BtnDownClickAlert()				NOP()
#define BtnHoldClickAlert() 			NOP()
//--------------------------------------------------------------------------------------------------
uint8_t xRam BtnCnt; //Static 
uint8_t xRam BtnStat, BtnHold, BtnDown; //Static
uint8_t xRam BtnTmpCache; //Static
uint8_t xRam BtnHoldBuffer, BtnDownBuffer; //Static
//**************************************************************************************************
void BtnDatInit(void){
  BtnUpdate = 0x0; 
	BtnTickOverFlow = 0x0; BtnTickCnt = 0x0000;
  
  BtnCnt = 0x00;
  BtnStat = BTN_MASK; BtnHold = BTN_MASK; BtnDown = BTN_MASK;
  BtnTmpCache = BTN_MASK; BtnHoldBuffer = BTN_MASK; BtnDownBuffer = BTN_MASK;
}
//--------------------------------------------------------------------------------------------------
void BtnScanHandle(void){
  uint8_t cRam BtnTmp = BTN_MASK;
	
	TickTimeInt(0);
	if(BtnTickOverFlow == 0x1){
    if(TickCnt1ms > UINT16_MAX-10){
			TickTimeInt(1);
			return;
    }
		BtnTickOverFlow = 0x0;
		TickTimeInt(1);
  }else{
    if(TickCnt1ms < BtnTickCnt){
			TickTimeInt(1);
			return;
		}
		BtnTickCnt = TickCnt1ms + 10;
    if(BtnTickCnt < 10) BtnTickOverFlow = 0x1;
		TickTimeInt(1);
  }
	
  if(BtnGetState(IDX_BTN_UP) == 0x01) BtnTmp &= (uint8_t)(~BTN_UP);
  if(BtnGetState(IDX_BTN_DW) == 0x01) BtnTmp &= (uint8_t)(~BTN_DW);
  if(BtnGetState(IDX_BTN_ENT) == 0x01) BtnTmp &= (uint8_t)(~BTN_ENT);
  if(BtnGetState(IDX_BTN_EXT) == 0x01) BtnTmp &= (uint8_t)(~BTN_EXT);	  

  if(BtnTmpCache == BtnTmp){		
		BtnStat = BtnTmpCache;
		if((BtnStat&BTN_MASK) != BTN_MASK){
			if(BtnCnt == 0){
			  BtnClickAlert();
				BtnDown &= BtnStat;
			}else{
				if(BtnCnt >= BTN_CNT_TRIG){
					BtnDownBuffer = BtnDown;
          BtnHoldBuffer = BtnHold;
	
					BtnDown &= BtnStat|BTN_EXT|BTN_ENT;          
					BtnHold &= BtnStat;
					if(BtnDown != BtnDownBuffer){ BtnDownClickAlert(); }
					else if(BtnHold != BtnHoldBuffer) { BtnHoldClickAlert(); }
          BtnCnt = BTN_CNT_TRIG - BTN_CNT_FREQ;
				}
			}
			BtnCnt++;
		}else{
			BtnHold |= BtnStat;
			BtnCnt = 0x00;
		}
	}else{
		BtnTmpCache = BtnTmp;
    BtnUpdate = 0x01;
	}
}
//--------------------------------------------------------------------------------------------------
void BtnFlush(void){
	BtnDown = BtnStat = BtnHold = BTN_MASK;
	BtnCnt = 0x00;
}
void BtnStopCnt(void){
	BtnCnt = 1;
}
void BtnClearDown(uint8_t BtnMask){
	BtnDown |= BtnMask;	
}
uint8_t BtnTstStat(uint8_t BtnMask){
	return !(BtnStat&BtnMask);
}
uint8_t BtnTstDown(uint8_t BtnMask){
	if((BtnDown&BtnMask)==0){
		BtnDown |= BtnMask;
		return 1;
	}
	return 0;
}
uint8_t BtnTstHold(uint8_t BtnMask){
	if((BtnHold&BtnMask)==0){
		BtnHold |= BtnMask;
		return 1;
	}
	return 0;
}
