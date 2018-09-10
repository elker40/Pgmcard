#include "Page.h"

// Private Declare  ********************************************************************************
void ParamEscDatProccess(void);
// Public Define ***********************************************************************************
MenuStat xRam EscMs;
// Private Define **********************************************************************************
float MinVolt,MaxCurr,MaxTemp;
// -------------------------------------------------------------------------------------------------
sChar xRam ShowTextMinVolt[20];
sChar xRam ShowTextMaxTemp[20];
sChar xRam ShowTextMaxCurr[20];
// -------------------------------------------------------------------------------------------------
sChar xRam ShowText3thHardware[20];
sChar xRam ShowText3thFirmware[20];
sChar xRam ShowText3thSoftWare[20];
// -------------------------------------------------------------------------------------------------
MenuItem sRom MenuItemParamEsc[] = { 
	{"Param ESC ", 0,0,0,3, 0,0,0},
  {"Min Volt:",0,0,0,0, 0,0,ShowTextMinVolt},
  {"Max Temp:",0,0,0,0, 0,0,ShowTextMaxTemp},
  {"Max Curr:",0,0,0,0, 0,0,ShowTextMaxCurr},
};
// Public Define ***********************************************************************************
void ParamEscDatProccess(void){
	MinVolt = (EscParam[17]*(0xFF+0x01)+EscParam[16])/1024.0*3.3*11.0;     
	sprintf(ShowTextMinVolt, "%02.2fV", MinVolt);

	MaxTemp=((EscParam[19]*(0xFF+0x01)+EscParam[18])*3.3/1024.0-0.776)*1000.0/2.86; 	
	sprintf(ShowTextMaxTemp, "%02.1fC", MaxTemp);
	
  MaxCurr = (EscParam[21]*(0xFF+0x01)+EscParam[20])*3.3/1024.0/10.0/0.0005/2.0;  	//发现该值除2后十分接近实际电流值			
	sprintf(ShowTextMaxCurr, "%02.2fA", MaxCurr);
}
// -------------------------------------------------------------------------------------------------
uint8_t PageEscParam(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!EscMs.Init){      
			EscMs.ItemEdit = EscMs.Focus = EscMs.Start = 0;
      EscMs.Init = 1;
		}
		EscMs.Total = MenuItemParamEsc[0].Max;
		EscMs.DrawMask = PD_ALL;
		return 1;
	}

  ParamEscDatProccess();
  PageMenuProc(MenuItemParamEsc, &EscMs);
 
	if(BtnTstDown(BTN_EXT)){
    PageReturn(PV_INIT);
	}
	return 0;
}
// -------------------------------------------------------------------------------------------------
uint8_t PageEsc1thRst(uint8_t event){
  if(event == PV_INIT){
    LcdDrawClr(0);
    LcdDrawTextString(15, 10, "Reset to Default");
    LcdDrawTextString(15, 25, "   Yes or No?   ");
    LcdDrawTextString(15, 40, " Yes:ENT No:EXT ");
    LcdDrawBufferRefresh();
  }
  
  if(BtnTstDown(BTN_ENT)){
    EscParam[1] = 3;  EscParam[2] = 1;  EscParam[3] = 1; 
    EscParam[4] = 4;  EscParam[5] = 11; EscParam[6] = 12;
    EscParam[7] = 4;  EscParam[8] = 4;  EscParam[9] = 26;
    EscParam[10] = 2; EscParam[11] = 2; EscParam[12] = 90;
    EscParam[13] = 3; EscParam[14] = 1; EscParam[15] = 2;
		PgmStatus |= PGM_WRITE_PEND;
    PageReturn(PV_INIT);
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
    PageReturn(PV_INIT);
	}
  return 0;
}
uint8_t PageEsc2thRst(uint8_t event){
  if(event == PV_INIT){
    LcdDrawClr(0);
    LcdDrawTextString(15, 10, "Reset to Default");
    LcdDrawTextString(15, 25, "   Yes or No?   ");
    LcdDrawTextString(15, 40, " Yes:ENT No:EXT ");
    LcdDrawBufferRefresh();
  }
  
  if(BtnTstDown(BTN_ENT)){
    EscParam[1] = 2;  EscParam[2] = 1;  EscParam[3] = 4; 
    EscParam[4] = 1;  EscParam[5] = 1;  EscParam[6] = 2;
    EscParam[7] = 2;  EscParam[8] = 3;  EscParam[9] = 1;
    EscParam[10] = 0; EscParam[11] = 0; EscParam[12] = 0;
    EscParam[13] = 0; EscParam[14] = 0; EscParam[15] = 0;
		PgmStatus |= PGM_WRITE_PEND;
    PageReturn(PV_INIT);
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
    PageReturn(PV_INIT);
	}
  return 0;
}
// -------------------------------------------------------------------------------------------------
uint8_t PageEsc3thRst(uint8_t event){
  if(event == PV_INIT){
    LcdDrawClr(0);
    LcdDrawTextString(15, 10, "Reset to Default");
    LcdDrawTextString(15, 25, "   Yes or No?   ");
    LcdDrawTextString(15, 40, " Yes:ENT No:EXT ");
    LcdDrawBufferRefresh();
  }
  
  if(BtnTstDown(BTN_ENT)){
    EscParam[1] = 1;  EscParam[2] = 1;  EscParam[3] = 1; 
    EscParam[4] = 2;  EscParam[5] = 1;  EscParam[6] = 2;
		EscParam[7] = 0;  EscParam[8] = 0;  EscParam[9] = 0;
    EscParam[10] = 0; EscParam[11] = 0; EscParam[12] = 0;
    EscParam[13] = 0; EscParam[14] = 0; EscParam[15] = 0;
		PgmStatus |= PGM_WRITE_PEND;
    PageReturn(PV_INIT);
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
    PageReturn(PV_INIT);
	}
  return 0;
}
uint8_t PageEsc3thAbout(uint8_t event){
	uint8_t i;
	
  if(event == PV_INIT){
    LcdDrawClr(0);
    LcdDrawTextString(15, 10, "Confirm or Cancel");
    LcdDrawTextString(15, 25, "   Yes or No!?   ");
    LcdDrawTextString(15, 40, " Yes:ENT  No:EXT ");
    LcdDrawBufferRefresh();
  }
   
	if(BtnTstDown(BTN_ENT)){
		if(EscDatCharge(EscParam, ESC_PARAM_SIZE)||(PgmStatus&PGM_WRITE_PEND)){
			if((PgmStatus&PGM_WRITE_ING) == PGM_WRITE_ING){
				PgmStatus |= PGM_WRITE_PEND;
			}else{
				PgmStatus &= (uint8_t)(~PGM_WRITE_PEND);
				PgmStatus |= (uint8_t)( PGM_WRITE_ING);
	 
				for(i = 0; i < ESC_PARAM_SIZE; i++){
					EscTxParam[i] = EscParam[i];
				}      
			 
				TH0 = ((0xFFFF+1)-32768)/(0xFF+1);   
				TL0 = ((0xFFFF+1)-32768)%(0xFF+1);
				TCON_TR0 = 1; 
			}
		}
		
    LcdDrawClr(0);
    LcdDrawTextString(15, 25, "    Program...    ");
    LcdDrawBufferRefresh();		
		while(PgmStatus&PGM_WRITE_ING);
    PageReturn(PV_INIT);
	}
	if(BtnTstDown(BTN_EXT)){
    PageReturn(PV_INIT);
	}
  return 0;
}
