#include "Page.h"

// Declare Private Fun  ****************************************************************************
void Esc3thDatProccess(void);
// Public ******************************************************************************************
MenuStat xRam Esc3thMs;
// Private *****************************************************************************************
sChar xRam ShowText3thBrake[20];
sChar xRam ShowText3thBatteryType[20];
sChar xRam ShowText3thCutOffType[20];
sChar xRam ShowText3thCutOffVoltage[20];
sChar xRam ShowText3thStartMode[20];
sChar xRam ShowText3thTimingMode[20];
// Private -----------------------------------------------------------------------------------------
MenuItem sRom MenuItemEsc3th[] = { 
	{"ESC",          0,0, 0,8, 0,0,0,                                  	 },
  {"Brake:",   		 0,0, 1,2, &EscParam[1], 0,ShowText3thBrake,       	 }, //1 1-2
  {"Bat Type:",    0,0, 1,2, &EscParam[2], 0,ShowText3thBatteryType, 	 }, //2 1-2
  {"CutOff:",      0,0, 1,2, &EscParam[3], 0,ShowText3thCutOffType,    }, //3 1-2
  {"CutOff Vol:",  0,0, 1,3, &EscParam[4], 0,ShowText3thCutOffVoltage, }, //4 1-3 
  {"Start Mode:",  0,0, 1,3, &EscParam[5], 0,ShowText3thStartMode,     }, //5 1-3
  {"Timing Mode:", 0,0, 1,3, &EscParam[6], 0,ShowText3thTimingMode,    }, //6 1-3 

  {"Load Default", PageEsc3thRst, 	 0,0,0,  0,0,0,                    },
  {"Programme", 	 PageEsc3thAbout,  0,0,0,  0,0,0,                    },
};
// Public ******************************************************************************************
uint8_t PageEsc3th(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!Esc3thMs.Init){ 
			EscDatCharge(EscParam, ESC_PARAM_SIZE);			
			Esc3thMs.ItemEdit = Esc3thMs.Focus = Esc3thMs.Start = 0;
      Esc3thMs.Init = 1;
		}
		Esc3thMs.Total = MenuItemEsc3th[0].Max;
		Esc3thMs.DrawMask = PD_ALL;
		return 1;
	}

  Esc3thDatProccess();
  PageMenuProc(MenuItemEsc3th, &Esc3thMs);
  
	if(BtnTstDown(BTN_ENT)){
		if(MenuItemEsc3th[Esc3thMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemEsc3th[Esc3thMs.Focus+1].SubItem, PV_INIT);
		}else{
			Esc3thMs.ItemEdit = ENABLE;
			Esc3thMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(Esc3thMs.ItemEdit == ENABLE){
		  Esc3thMs.ItemEdit = DISABLE;
			Esc3thMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}
// Define Private Fun ------------------------------------------------------------------------------
void Esc3thDatProccess(void){
	if(EscParam[1] < 1 || EscParam[1] > 2){
    sprintf(ShowText3thBrake, "Error");
  }else if(EscParam[1] == 1){
    sprintf(ShowText3thBrake, "*OFF");
  }else if(EscParam[1] == 2){
    sprintf(ShowText3thBrake, "ON");
  }

	if(EscParam[2] < 1 || EscParam[2] > 2){
    sprintf(ShowText3thBatteryType, "Error");
  }else if(EscParam[2] == 1){ 
    sprintf(ShowText3thBatteryType, "*Li-Po");
  }else if(EscParam[2] == 2){  
    sprintf(ShowText3thBatteryType, "Ni-MH");
  }

 	if(EscParam[3] < 1 || EscParam[3] > 2){
    sprintf(ShowText3thCutOffType, "Error");
  }else if(EscParam[3] == 1){ 
    sprintf(ShowText3thCutOffType, "*SoftCut");
  }else if(EscParam[3] == 2){  
    sprintf(ShowText3thCutOffType, "CutOff");
  }

 	if(EscParam[4] < 1 || EscParam[4] > 3){
    sprintf(ShowText3thCutOffVoltage, "Error");
  }else if(EscParam[4] == 1){
    sprintf(ShowText3thCutOffVoltage, "Low");
  }else if(EscParam[4] == 2){
    sprintf(ShowText3thCutOffVoltage, "*Mid");
  }else if(EscParam[4] == 3){
    sprintf(ShowText3thCutOffVoltage, "High");
  }

  if(EscParam[5] < 1 || EscParam[5] > 3){
    sprintf(ShowText3thStartMode, "Error");
  }else if(EscParam[5] == 1){
    sprintf(ShowText3thStartMode, "*Nor");
  }else if(EscParam[5] == 2){      
    sprintf(ShowText3thStartMode, "Soft");
  }else if(EscParam[5] == 3){
    sprintf(ShowText3thStartMode, "Very");
	}

  if(EscParam[6] < 1 || EscParam[6] > 3){
    sprintf(ShowText3thTimingMode, "Error");
  }else if(EscParam[6] == 1){
    sprintf(ShowText3thTimingMode, "Low");
  }else if(EscParam[6] == 2){
    sprintf(ShowText3thTimingMode, "*Mid");
  }else if(EscParam[6] == 3){
    sprintf(ShowText3thTimingMode, "High");
  }
}
