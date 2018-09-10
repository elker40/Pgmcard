#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam AutoFlyPitchGainMs;
// Private *****************************************************************************************
uString sRom PageOptionAutoFlyPitchGain[2] = {"Normal", "Reverse"};
MenuItem sRom MenuItemAutoFlyPitchGain[] = {
	{"Pitch Gain", 	0,0,													0,3,		0,																 0,0},
	{"Direction:",  0,PageOptionAutoFlyPitchGain, 0,1,    &StabilizerParam[IDX_PITCH_DIR],	 0,0},
	{"Angle Gain:", 0,0,												  0,+100, &StabilizerParam[IDX_PITCH_ANGLE], 0,0},
	{"Rate Gain:",  0,0,													0,+100, &StabilizerParam[IDX_PITCH_RATE],	 0,0},
};
// Public ******************************************************************************************
uint8_t PageAutoFlyPitchGain(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyPitchGainMs.Init){
			AutoFlyPitchGainMs.ItemEdit = AutoFlyPitchGainMs.Focus = AutoFlyPitchGainMs.Start = 0;
			AutoFlyPitchGainMs.Init = 1;
		}
		AutoFlyPitchGainMs.Total = MenuItemAutoFlyPitchGain[0].Max;
		AutoFlyPitchGainMs.DrawMask = PD_ALL;
		return 1;
	}

  DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	PageMenuProc(MenuItemAutoFlyPitchGain, &AutoFlyPitchGainMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemAutoFlyPitchGain[AutoFlyPitchGainMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemAutoFlyPitchGain[AutoFlyPitchGainMs.Focus+1].SubItem, PV_INIT);
		}else{
			AutoFlyPitchGainMs.ItemEdit = ENABLE;
			AutoFlyPitchGainMs.DrawMask |= PD_VALUE;
		}
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
		if(AutoFlyPitchGainMs.ItemEdit == ENABLE){
		  AutoFlyPitchGainMs.ItemEdit = DISABLE;
			AutoFlyPitchGainMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}	

	return 0;
}