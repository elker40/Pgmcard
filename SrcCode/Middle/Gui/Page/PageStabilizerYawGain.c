#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam AutoFlyYawGainMs;
// Private******************************************************************************************
uString sRom PageOptionAutoFlyYawGain[2] = {"Normal", "Reverse"};
MenuItem sRom MenuItemAutoFlyYawGain[] = {
	{"Yaw Gain", 		0,0,												0,3,		0,															 0,0},
	{"Direction:",  0,PageOptionAutoFlyYawGain,	0,1, 		&StabilizerParam[IDX_YAW_DIR],   0,0},
	{"Angle Gain:", 0,0,												0,+100, &StabilizerParam[IDX_YAW_ANGLE], 0,0},
	{"Rate Gain:",  0,0,												0,+100, &StabilizerParam[IDX_YAW_RATE],  0,0},
};
// Public ******************************************************************************************
uint8_t PageAutoFlyYawGain(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyYawGainMs.Init){
			AutoFlyYawGainMs.ItemEdit = AutoFlyYawGainMs.Focus = AutoFlyYawGainMs.Start = 0;
			AutoFlyYawGainMs.Init = 1;
		}
		AutoFlyYawGainMs.Total = MenuItemAutoFlyYawGain[0].Max;
		AutoFlyYawGainMs.DrawMask = PD_ALL;
		return 1;
	}

	DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	PageMenuProc(MenuItemAutoFlyYawGain, &AutoFlyYawGainMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemAutoFlyYawGain[AutoFlyYawGainMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemAutoFlyYawGain[AutoFlyYawGainMs.Focus+1].SubItem, PV_INIT);
		}else{
			AutoFlyYawGainMs.ItemEdit = ENABLE;
			AutoFlyYawGainMs.DrawMask |= PD_VALUE;
		}
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
		if(AutoFlyYawGainMs.ItemEdit == ENABLE){
		  AutoFlyYawGainMs.ItemEdit = DISABLE;
			AutoFlyYawGainMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}	
	
	return 0;
}