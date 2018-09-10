#include "Global.h"

// Publie Define ***********************************************************************************
sint16_t xRam SterringParam[3];
// Private Define **********************************************************************************
uint16_t cRam SterringPwmCnt;
uint16_t cRam SterringTickTime;
uint16_t cRam SterringPwmPulse;
uint16_t cRam SterringPwmPeriod;
// ------------------------------------------------------------------------------------------------
uint8_t cRam SterringStepState;
// Publie Define ***********************************************************************************
void SterringDatInit(void){
	SterringPwmCnt = 0x0000;
  SterringPwmPulse = 0x0096; SterringPwmPeriod = 0x0578;
	SterringParam[0] = 0; SterringParam[1] = 0; SterringParam[2] = 0;	
}
void SterringDetect(void){
	SysModuleEnable |= STERRING_MODULE;
}
void SterringProcessHandle(void){
}
// Tim:10us
void TIMER3_ISR(void) interrupt TIMER3_IRQn{
	if(SterringPwmCnt < SterringPwmPeriod){
		if(SterringPwmCnt > SterringPwmPulse) RC_OUT = 0x0;
	}else{
		RC_OUT = 0x1; SterringPwmCnt = 0x0000;
	}
	SterringPwmCnt ++;
	TMR3CN0_TR2_HOF_CLR();    // Clear T3 Interrupt flag
	
	if(0x00 == SterringParam[IDX_TESTMODE]){ // 自动
		SterringTickTime++;
		if(SterringTickTime > 500+(2000-40*SterringParam[IDX_AUTOSTEP])){ // 0.2ms - 20.2 ms
			if(0x00 != SterringStepState){
				SterringParam[IDX_LOCATION] ++ ;
				if(SterringParam[IDX_LOCATION] == +50) SterringStepState = 0x00;
			}else{
				SterringParam[IDX_LOCATION] --;
				if(SterringParam[IDX_LOCATION] == -50) SterringStepState = 0x01; 
			}
			SterringPwmPulse = SterringParam[IDX_LOCATION] + 150;			
			SterringMs.DrawMask = PD_LIST|PD_IDX;
			SterringTickTime = 0x0000;
		}
	}else if(0x01 == SterringParam[IDX_TESTMODE]){	// 手动
		SterringPwmPulse = SterringParam[IDX_LOCATION] + 150;
	}else if(0x02 == SterringParam[IDX_TESTMODE]){	// 舵量置中
		SterringParam[IDX_LOCATION] = 0; SterringPwmPulse = SterringParam[IDX_LOCATION] + 150;
	}else if(0x03 == SterringParam[IDX_TESTMODE]){	// 舵量最大
		SterringParam[IDX_LOCATION] = +50; SterringPwmPulse = SterringParam[IDX_LOCATION] + 150;
	}else if(0x04 == SterringParam[IDX_TESTMODE]){	// 舵量最小
		SterringParam[IDX_LOCATION] = -50; SterringPwmPulse = SterringParam[IDX_LOCATION] + 150;
	}
}

