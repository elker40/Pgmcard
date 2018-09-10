#include "Page.h"

// Declare Private Fun  ****************************************************************************
void Esc2thDatPreproccess(void);
// Declare Public Ram ******************************************************************************
MenuStat xRam Esc2thMs;
// Declare Private Ram -----------------------------------------------------------------------------
sChar xRam ShowText2thRunMode[20];
sChar xRam ShowText2thLipoCells[20];
sChar xRam ShowText2thCutVoltage[20];
sChar xRam ShowText2thEscThermal[20];
sChar xRam ShowText2thBecVoltage[20];
sChar xRam ShowText2thMaxBrake[20];
sChar xRam ShowText2thMaxReverse[20];
sChar xRam ShowText2thPunch[20];
sChar xRam ShowText2thDragBrake[20];
// Declare Private Rom -----------------------------------------------------------------------------
MenuItem sRom MenuItemEsc2th[] = { 
	{"ESC",          0,0,0,12,0,0,0},
  
	{"Param ESC ",	 PageEscParam,0,0,0,0,0,0 									    },
  {"Run Mode:",    0,0,1,2,  &EscParam[1],0,ShowText2thRunMode    },    //1 1-2
  {"LiPo Cells:",  0,0,1,4,  &EscParam[2],0,ShowText2thLipoCells  },    //2 1-4
  {"CutOff Volt:", 0,0,1,12, &EscParam[3],0,ShowText2thCutVoltage },    //3 1-12
  {"ESC Ther:",    0,0,1,2,  &EscParam[4],0,ShowText2thEscThermal },    //4 1-2
  {"BEC Volt:",    0,0,1,2,  &EscParam[5],0,ShowText2thBecVoltage },    //5 1-2
  {"Max Brake:",   0,0,1,5,  &EscParam[6],0,ShowText2thMaxBrake   },    //6 1-5
  {"Max Rev:",     0,0,1,2,  &EscParam[7],0,ShowText2thMaxReverse },    //7 1-2
  {"Punch Level:", 0,0,1,5,  &EscParam[8],0,ShowText2thPunch      },    //8 1-5
  {"Drag Brake:",  0,0,1,8,  &EscParam[9],0,ShowText2thDragBrake  },    //9 1-8
  
  {"Load Default", PageEsc2thRst,  		0,0,0,  0,0,0 			        }, //这个地方的变量有问题
  {"Programme", 	 PageEsc3thAbout,  	0,0,0,  0,0,0,              },
};
// Define Public Fun *******************************************************************************
uint8_t PageEsc2th(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!Esc2thMs.Init){
			EscDatCharge(EscParam, ESC_PARAM_SIZE);
			Esc2thMs.ItemEdit = Esc2thMs.Focus = Esc2thMs.Start = 0;
			Esc2thMs.Init = 1;
		}
		Esc2thMs.Total = MenuItemEsc2th[0].Max;
		Esc2thMs.DrawMask = PD_ALL;
		return 1;
	}
   
  Esc2thDatPreproccess();  
	PageMenuProc(MenuItemEsc2th, &Esc2thMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemEsc2th[Esc2thMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemEsc2th[Esc2thMs.Focus+1].SubItem, PV_INIT);
		}else{
			Esc2thMs.ItemEdit = ENABLE;
			Esc2thMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(Esc2thMs.ItemEdit == ENABLE){
		  Esc2thMs.ItemEdit = DISABLE;
			Esc2thMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}
// Define Private Fun ------------------------------------------------------------------------------
void Esc2thDatPreproccess(void){
	if(EscParam[1] < 1 || EscParam[1] > 2){
    sprintf(ShowText2thRunMode, "Error");
  }else if(EscParam[1]==1){
    sprintf(ShowText2thRunMode, "Nor");
  }else if(EscParam[1]==2){
    sprintf(ShowText2thRunMode, "*Rev");
  }

	if(EscParam[2] < 1 || EscParam[2] > 4){
    sprintf(ShowText2thLipoCells, "Error");
  }else if(EscParam[2]==1){
    sprintf(ShowText2thLipoCells, "*Auto");
  }else{	
    sprintf(ShowText2thLipoCells, "%dS", EscParam[2]);
  }

	if(EscParam[3] < 1 || EscParam[3] > 12){
    sprintf(ShowText2thCutVoltage, "Error");
  }else if(EscParam[3] == 1){
    sprintf(ShowText2thCutVoltage, "Dis");
  }else{
    if(EscParam[3]==4){
      sprintf(ShowText2thCutVoltage, "*%02.1fV", (float)((27+EscParam[3]-1)/10.0));	
    }else{	
      sprintf(ShowText2thCutVoltage, "%02.1fV", (float)((27+EscParam[3]-1)/10.0));
    }
  }								

	if(EscParam[4] < 1 || EscParam[4] > 2){
    sprintf(ShowText2thEscThermal, "Error");
  }else if(EscParam[4]==1){
    sprintf(ShowText2thEscThermal, "*105C/221F");                
  }else if(EscParam[4]==2){
    sprintf(ShowText2thEscThermal, "125C/257F");                  
  }

	if(EscParam[5] < 1 || EscParam[5] > 2){
    sprintf(ShowText2thBecVoltage, "Error");
  }else if(EscParam[5]==1){
    sprintf(ShowText2thBecVoltage, "*6.0V"); 
  }else if(EscParam[5]==2){
    sprintf(ShowText2thBecVoltage, "7.4V");
  }

	if(EscParam[6] < 1 || EscParam[6] > 5){
    sprintf(ShowText2thMaxBrake, "Error");
  }else if(EscParam[6]==5){
    sprintf(ShowText2thMaxBrake, "Dis");
  }else{
    if(EscParam[6]==2){
      sprintf(ShowText2thMaxBrake, "*%d%%", 25*EscParam[6]);
    }else{
      sprintf(ShowText2thMaxBrake, "%d%%", 25*EscParam[6]);
    } 
  }								

	if(EscParam[7] < 1 || EscParam[7] > 2){
    sprintf(ShowText2thMaxReverse, "Error");
  }else if(EscParam[7]==1){
    sprintf(ShowText2thMaxReverse, "25%%");
  }else if(EscParam[7]==2){
    sprintf(ShowText2thMaxReverse, "*50%%");  
  }

	if(EscParam[8] < 1 || EscParam[8] > 5){
    sprintf(ShowText2thPunch, "Error");
  }else if(EscParam[8]==3){
    sprintf(ShowText2thPunch, "*%d", EscParam[8]);
  }else{
    sprintf(ShowText2thPunch, "%d", EscParam[8]);
  }
                   
	if(EscParam[9] < 1 || EscParam[9] > 8){
    sprintf(ShowText2thDragBrake, "Error");
  }else if(EscParam[9]==1){
    sprintf(ShowText2thDragBrake, "*%d%", 25*EscParam[9]);
  }else{
    sprintf(ShowText2thDragBrake, "%d%", 25*EscParam[9]);
  }  
}
 