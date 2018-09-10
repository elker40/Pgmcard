//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include "Global.h"

void SysHandleProcess(uint8_t HandleCfg){ 
  //if(HandleCfg&ESC_1TH_HANDLE_MSAK) NOP();
  //if(HandleCfg&ESC_2TH_HANDLE_MSAK) NOP();
	//if(HandleCfg&ESC_3TH_HANDLE_MSAK) NOP();
  //if(HandleCfg&LIPOCELLS_HANDLE_MSAK) LipoCellsProcessHandle();
  if(HandleCfg&STABLIZER_HANDLE_MSAK) StablizerProcessHandle(); 
	//if(HandleCfg&STERRING_HANDLE_MSAK) SterringProcessHandle();
}

//-----------------------------------------------------------------------------
// main() Routine
// ----------------------------------------------------------------------------
int main(void) {
	// Call hardware initialization routine
  enter_DefaultMode_from_RESET();
  
  SysDatInit();
  BtnDatInit();
  //EscDatInit();
  //LipoCellsDatInit();
  StablizerDatInit();
	//SterringDatInit();
  //PageMenuStatDatInit();
  
 // Lcd_Init();
  //LcdDrawClr(0);  
  //LcdWriteClr(1);
 
  //LcdDrawBmpToArray(0, 0, PageMainBmp);
  //LcdDrawTextString(20, 45, "Initialize...");
  //LcdDrawBufferRefresh();
  
 // EscDetect(); 
  //LipoCellsDetect();
  StablizerDetect();
	//SterringDetect();
  
  if(SysModuleEnable&ESC_MODULE){
    if(EscParam[23] == 0x01){         
      SysTaskHandle |= ESC_1TH_HANDLE_MSAK;
      PageInit(PageEsc1th, PV_INIT);
    }else if(EscParam[23] == 0x02){ 
      SysTaskHandle |= ESC_2TH_HANDLE_MSAK;
      PageInit(PageEsc2th, PV_INIT);
    }else if(EscParam[23] == 0x03){
			SysTaskHandle |= ESC_3TH_HANDLE_MSAK;
      PageInit(PageEsc3th, PV_INIT);
		}
  }else if(SysModuleEnable&LIPOCELLS_MODULE){
    SysTaskHandle |= LIPOCELLS_HANDLE_MSAK;
    PageInit(PageBatVolt, PV_INIT);
  }else if(SysModuleEnable&STABLIZER_MODULE){
    SysTaskHandle |= STABLIZER_HANDLE_MSAK;
    PageInit(PageAutoFly, PV_INIT);    
  }else if(SysModuleEnable&STERRING_MODULE){
		SysTaskHandle |= STERRING_HANDLE_MSAK;	
		
		TMR3CN0_TR2_EN();
    PageInit(PageSterring, PV_INIT);
  }else{
	  LcdDrawClr(0);
    LcdDrawTextString(10, 10, "Please...");
    LcdDrawTextString(10, 25, "Connect Device");
    LcdDrawTextString(10, 40, "Then Power On!!!!!");
    LcdDrawBufferRefresh();
    while(1);
	}
  
	while(1){
    SysHandleProcess(SysTaskHandle);
    PageStack[PageStackIdx](PV_RUN);
	}
}
