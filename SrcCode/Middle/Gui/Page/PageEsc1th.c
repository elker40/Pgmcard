#include "Page.h"

// Declare Private Fun  ****************************************************************************
void Esc1thDatProccess(void);
// Public ******************************************************************************************
MenuStat xRam Esc1thMs;
// Private *****************************************************************************************
sChar xRam ShowText1thFlightMode[20];
sChar xRam ShowText1thAirLipoCells[20];
sChar xRam ShowText1thCutType[20];
sChar xRam ShowText1thAirCutVoltage[20];
sChar xRam ShowText1thAirBecVoltage[20];
sChar xRam ShowText1thStartUpTime[20];
sChar xRam ShowText1thGovParamP[20];
sChar xRam ShowText1thGovParamI[20];
sChar xRam ShowText1thArTime[20];
sChar xRam ShowText1thArReStartTime[20];
sChar xRam ShowText1thBrakeType[20];
sChar xRam ShowText1thBrakeForce[20];
sChar xRam ShowText1thTiming[20];
sChar xRam ShowText1thRotateDirection[20];
sChar xRam ShowText1thActiveFw[20];
// Private -----------------------------------------------------------------------------------------
MenuItem sRom MenuItemEsc1th[] = { 
	{"ESC",            0,0,0,18,  0,0,0                                 	  },
	{"Param ESC ",		 PageEscParam,0,0,0,0,0,0 													  },
  {"Mode:",   			 0,0,1,4,   &EscParam[1], 0,ShowText1thFlightMode    	},     //1 1-4
  {"LiPo Cells:",    0,0,1,6,   &EscParam[2], 0,ShowText1thAirLipoCells  	},     //2 1-6
  {"CutOff Type:",   0,0,1,2,   &EscParam[3], 0,ShowText1thCutType       	},     //3 1-2
  {"CutOff Volt:",   0,0,1,12,  &EscParam[4], 0,ShowText1thAirCutVoltage 	},  	 //4 1-12 
  {"BEC Volt:",      0,0,1,31,  &EscParam[5], 0,ShowText1thAirBecVoltage 	},     //5 1-31
  {"StartUp Time:",  0,0,1,22,  &EscParam[6], 0,ShowText1thStartUpTime   	},     //6 1-22
  {"Gov Param P:",   0,0,1,9,   &EscParam[7], 0,ShowText1thGovParamP     	},     //7 1-9
  {"Gov Param I:",   0,0,1,9,   &EscParam[8], 0,ShowText1thGovParamI     	},     //8 1-9
  {"AR Time:",       0,0,1,90,  &EscParam[9], 0,ShowText1thArTime        	},     //9 1-90
  {"RestartAccel:",  0,0,1,5,   &EscParam[10],0,ShowText1thArReStartTime 	},     //10 1-5
  {"Brake Type:",    0,0,1,4,   &EscParam[11],0,ShowText1thBrakeType     	},     //11 1-4 
  {"Brake Force:",   0,0,1,100, &EscParam[12],0,ShowText1thBrakeForce    	},     //12 1-100
  {"Timing:",        0,0,1,5,   &EscParam[13],0,ShowText1thTiming        	},     //13 1-5
  {"Rotate Dir:",    0,0,1,2,   &EscParam[14],0,ShowText1thRotateDirection},     //14 1-2  
  {"Active FW:",     0,0,1,2,   &EscParam[15],0,ShowText1thActiveFw    		},     //15 1-2
  	
  {"Load Default",   PageEsc1thRst,  		0,0,0,  0,0,0,                    },
	{"Programme", 		 PageEsc3thAbout,  	0,0,0,  0,0,0,                    },
	
};
// Public ******************************************************************************************
uint8_t PageEsc1th(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!Esc1thMs.Init){  
			EscDatCharge(EscParam, ESC_PARAM_SIZE);
			Esc1thMs.ItemEdit = Esc1thMs.Focus = Esc1thMs.Start = 0;
      Esc1thMs.Init = 1;
		}
		Esc1thMs.Total = MenuItemEsc1th[0].Max;
		Esc1thMs.DrawMask = PD_ALL;
		return 1;
	}

  Esc1thDatProccess();
  PageMenuProc(MenuItemEsc1th, &Esc1thMs);
  
	if(BtnTstDown(BTN_ENT)){
		if(MenuItemEsc1th[Esc1thMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemEsc1th[Esc1thMs.Focus+1].SubItem, PV_INIT);
		}else{
			Esc1thMs.ItemEdit = ENABLE;
			Esc1thMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(Esc1thMs.ItemEdit == ENABLE){
		  Esc1thMs.ItemEdit = DISABLE;
			Esc1thMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}
// Define Private Fun ------------------------------------------------------------------------------
void Esc1thDatProccess(void){
	if(EscParam[1] < 1 || EscParam[1] > 4){
		sprintf(ShowText1thFlightMode, "Error");
	}else if(EscParam[1] == 1){
    sprintf(ShowText1thFlightMode, "Fixed Wing");
  }else if(EscParam[1] == 2){
    sprintf(ShowText1thFlightMode, "LineTH");
  }else if(EscParam[1] == 3){
    sprintf(ShowText1thFlightMode, "*ElfGov");
  }else if(EscParam[1] == 4){
    sprintf(ShowText1thFlightMode, "StoGov");
  }

	if(EscParam[2] < 1 || EscParam[2] > 6){
		sprintf(ShowText1thAirLipoCells, "Error");
	}else if(EscParam[2] == 1){ 
    sprintf(ShowText1thAirLipoCells, "*Auto");
  }else{  
    sprintf(ShowText1thAirLipoCells, "%dS", EscParam[2]);
  }
	
	if(EscParam[3] < 1 || EscParam[3] > 2){
		sprintf(ShowText1thCutType, "Error");
	}else if(EscParam[3] == 1){ 
    sprintf(ShowText1thCutType, "*Soft");
  }else if(EscParam[3] == 2){  
    sprintf(ShowText1thCutType, "Hard");
  }

	if(EscParam[4] < 1 || EscParam[4] > 12){
		sprintf(ShowText1thAirCutVoltage, "Error");
	}else if(EscParam[4] == 1){
    sprintf(ShowText1thAirCutVoltage, "Dis");
  }else{		
    if(EscParam[4] == 4){
      sprintf(ShowText1thAirCutVoltage,"*%02.1fV", (float)((26+EscParam[4])/10.0));	
    }else{	
      sprintf(ShowText1thAirCutVoltage,"%02.1fV", (float)((26+EscParam[4])/10.0));							
    }
  }

	if(EscParam[5] < 1 || EscParam[5] > 31){
		sprintf(ShowText1thAirBecVoltage, "Error");
	}else if(EscParam[5] == 11){
    sprintf(ShowText1thAirBecVoltage,"*%02.1fV", (float)((49+EscParam[5])/10.0));	
  }else{      
    sprintf(ShowText1thAirBecVoltage, "%02.1fV", (float)((49+EscParam[5])/10.0));
  }

	if(EscParam[6] < 1 || EscParam[6] > 22){
		sprintf(ShowText1thStartUpTime, "Error");
	}else if(EscParam[6] == 12){
    sprintf(ShowText1thStartUpTime, "*%ds", 3+EscParam[6]);	
  }else{      
    sprintf(ShowText1thStartUpTime, "%ds", 3+EscParam[6]);						
  }
 
	if(EscParam[7] < 1 || EscParam[7] > 9){
		sprintf(ShowText1thGovParamP, "Error");
	}else if(EscParam[7] == 4){
    sprintf(ShowText1thGovParamP,"*%d", EscParam[7]);	
  }else{  
    sprintf(ShowText1thGovParamP,"%d", EscParam[7]);
  }

	if(EscParam[8] < 1 || EscParam[8] > 9){
		sprintf(ShowText1thGovParamI, "Error");
	}else if(EscParam[8] == 4){
    sprintf(ShowText1thGovParamI,"*%d", EscParam[8]);	
  }else{		
    sprintf(ShowText1thGovParamI,"%d", EscParam[8]);
  }
  
	if(EscParam[9] < 1 || EscParam[9] > 90){
		sprintf(ShowText1thArTime, "Error");
	}else if(EscParam[9] == 26){	
    sprintf(ShowText1thArTime,"*%ds", EscParam[9]-1);	
  }else{	  
    sprintf(ShowText1thArTime,"%ds", EscParam[9]-1);					
  }				

	if(EscParam[10] < 1 || EscParam[10] > 5){
		sprintf(ShowText1thArReStartTime, "Error");
	}else if(EscParam[10] == 2){   
    sprintf(ShowText1thArReStartTime,"*%02.1fs", (float)(EscParam[10]/2.0+0.5));
  }else{
    sprintf(ShowText1thArReStartTime,"%02.1fs", (float)(EscParam[10]/2.0+0.5));											
  }

	if(EscParam[11] < 1 || EscParam[11] > 4){
		sprintf(ShowText1thBrakeType, "Error");
	}else if(EscParam[11] == 1){
    sprintf(ShowText1thBrakeType, "Dis");
  }else if(EscParam[11] == 2){
    sprintf(ShowText1thBrakeType, "*Nor");
  }else if(EscParam[11] == 3){
    sprintf(ShowText1thBrakeType, "Propor");
  }else	if(EscParam[11] == 4){
    sprintf(ShowText1thBrakeType, "Rev");
  }
       
	if(EscParam[12] < 1 || EscParam[12] > 100){
		sprintf(ShowText1thBrakeForce, "Error");
	}else if(EscParam[12] == 90){   
    sprintf(ShowText1thBrakeForce, "*%d%%", EscParam[12]);	
  }else{
    sprintf(ShowText1thBrakeForce, "%d%%", EscParam[12]);
  }

	if(EscParam[13] < 1 || EscParam[13] > 5){
		sprintf(ShowText1thTiming, "Error");
	}else if(EscParam[13] == 1){
    sprintf(ShowText1thTiming, "0Deg");
  }else if(EscParam[13] == 2){
    sprintf(ShowText1thTiming, "7.5Deg");
  }else	if(EscParam[13] == 3){
    sprintf(ShowText1thTiming, "*15Deg");
  }else if(EscParam[13] == 4){
    sprintf(ShowText1thTiming, "22.5Deg");
  }else	if(EscParam[13] == 5){
    sprintf(ShowText1thTiming, "30Deg");
  }

	if(EscParam[14] < 1 || EscParam[14] > 2){
		sprintf(ShowText1thRotateDirection, "Error");
	}else if(EscParam[14] == 1){
    sprintf(ShowText1thRotateDirection, "*CW");
  }else	if(EscParam[14] == 2){
    sprintf(ShowText1thRotateDirection, "CCW");
  }
  
	if(EscParam[15] < 1 || EscParam[15] > 2){
		sprintf(ShowText1thActiveFw, "Error");
	}else if(EscParam[15] == 1){
    sprintf(ShowText1thActiveFw, "Enabled");
  }else	if(EscParam[15] == 2){
    sprintf(ShowText1thActiveFw, "*Dis");
  } 
}
