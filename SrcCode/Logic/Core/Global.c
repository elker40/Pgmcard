#include "Global.h"

uint16_t cRam TickCnt1ms;
uint16_t bRam SysTaskHandle;
uint16_t bRam SysModuleEnable;

TxSysDef xRam TxSys;

void SysDatInit(void){
  TickCnt1ms = 0x0000;

  SysTaskHandle = 0x0000;
  SysModuleEnable = 0x0000;  
 
  TxSys.Mark = 0;
  TxSys.Version = 0;
  TxSys.LightSw = 0;
  TxSys.LightTim = 0;
  TxSys.Contrast = 0;
  TxSys.Language = 0;
}

void DelayMs(uint16_t mTim){
	uint8_t TickOverFlow; 
	uint16_t DelayTickCnt;
	
	TickOverFlow = 0x0;
	DelayTickCnt = TickCnt1ms + mTim;
	if(DelayTickCnt < mTim) TickOverFlow = 0x1; 

	while(1){
		if(TickOverFlow == 0x1){
			if(TickCnt1ms > UINT16_MAX-mTim){
				NOP(); NOP(); 	
			}else{
				TickOverFlow = 0x0;
			}
		}else{
			if(TickCnt1ms >= DelayTickCnt) break;
		}
	}
}
// TickTime
void TIMER1_ISR(void) interrupt TIMER1_IRQn{
  TCON_TF1 = 0;           // Clear T1 Interrupt Flag
  TH1 = ((0xFFFF+1)-1000)/(0xFF+1);   
  TL1 = ((0xFFFF+1)-1000)%(0xFF+1);
  
  TickCnt1ms++;
	BtnScanHandle();
}
