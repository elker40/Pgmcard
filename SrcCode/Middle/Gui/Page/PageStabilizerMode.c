#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam AutoFlyModeMs;
// Private *****************************************************************************************
uString sRom PageOptionSwitch[4] = {"SA","SB","SC","SD"};
uString sRom PageOptionFlyMode[4] = {"OFF", "Normal", "Safe", "ACRO"};
MenuItem sRom MenuItemAutoFlyMode[] = { 
	{"Fly Mode", 0,0,									0,3, 0,														0,0},
	{"SW-P1:",   0,PageOptionFlyMode, 0,3, &StabilizerParam[IDX_SW_P1], 0,0},
	{"SW-P2:",   0,PageOptionFlyMode, 0,3, &StabilizerParam[IDX_SW_P2], 0,0},
	{"SW-P3:",   0,PageOptionFlyMode, 0,3, &StabilizerParam[IDX_SW_P3], 0,0},
};
// Public ******************************************************************************************
uint8_t PageAutoFlyMode(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyModeMs.Init){
			AutoFlyModeMs.ItemEdit = AutoFlyModeMs.Focus = AutoFlyModeMs.Start = 0;
			AutoFlyModeMs.Init = 1;
		}
		AutoFlyModeMs.Total = MenuItemAutoFlyMode[0].Max;
		AutoFlyModeMs.DrawMask = PD_ALL;
		return 1;
	}

	DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	PageMenuProc(MenuItemAutoFlyMode, &AutoFlyModeMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemAutoFlyMode[AutoFlyModeMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemAutoFlyMode[AutoFlyModeMs.Focus+1].SubItem, PV_INIT);
		}else{
			AutoFlyModeMs.ItemEdit = ENABLE;
			AutoFlyModeMs.DrawMask |= PD_VALUE;
		}
	}                                                                                                 
	if(BtnTstDown(BTN_EXT)){
		if(AutoFlyModeMs.ItemEdit == ENABLE){
		  AutoFlyModeMs.ItemEdit = DISABLE;
			AutoFlyModeMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}

	return 0;
}
