#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam AutoFlyRollGainMs;
// Private *****************************************************************************************
uString sRom PageOptionGainDir[2] = {"Normal", "Reverse"}; 
MenuItem sRom MenuItemAutoFlyRollGain[] = {
	{"Roll Gain",  	0,0,								 0,3,    0,																 0,0},
	{"Direction:",  0,PageOptionGainDir, 0,1, 	 &StabilizerParam[IDX_ROLL_DIR],	 0,0},
	{"Angle Gain:", 0,0,								 0,+100, &StabilizerParam[IDX_ROLL_ANGLE], 0,0},
	{"Rate Gain:",  0,0,								 0,+100, &StabilizerParam[IDX_ROLL_RATE],	 0,0},
};
// Public ******************************************************************************************
uint8_t PageAutoFlyRollGain(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyRollGainMs.Init){
			AutoFlyRollGainMs.ItemEdit = AutoFlyRollGainMs.Focus = AutoFlyRollGainMs.Start = 0;
			AutoFlyRollGainMs.Init = 1;
		}
		AutoFlyRollGainMs.Total = MenuItemAutoFlyRollGain[0].Max;
		AutoFlyRollGainMs.DrawMask = PD_ALL;
		return 1;
	}

 	DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	PageMenuProc(MenuItemAutoFlyRollGain, &AutoFlyRollGainMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemAutoFlyRollGain[AutoFlyRollGainMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemAutoFlyRollGain[AutoFlyRollGainMs.Focus+1].SubItem, PV_INIT);
		}else{
			AutoFlyRollGainMs.ItemEdit = ENABLE;
			AutoFlyRollGainMs.DrawMask |= PD_VALUE;
		}
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
		if(AutoFlyRollGainMs.ItemEdit == ENABLE){
		  AutoFlyRollGainMs.ItemEdit = DISABLE;
			AutoFlyRollGainMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}	

	return 0;
}