#include "Page.h"

// Public Define ***********************************************************************************
MenuStat xRam SterringMs;
// Private Define **********************************************************************************
uString sRom PageOptionSterringMode[] = {
 "Auto", "Manual", "Neutral", "Maximum", "Minimum"
};
MenuItem sRom MenuItemSterring[] = { 
	{"Sterring",0,0,0,3,0,0,0 },
	{"TestMode:", 0,PageOptionSterringMode, 0,4, 		 &SterringParam[IDX_TESTMODE], 0,0},
	{"AutoStep:",	0,0, 										  0,+50,   &SterringParam[IDX_AUTOSTEP], 0,0},
	{"Location:",	0,0, 											-50,+50, &SterringParam[IDX_LOCATION], 0,0}
};
// Public Define ***********************************************************************************
uint8_t PageSterring(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!SterringMs.Init){
			SterringMs.ItemEdit = SterringMs.Focus = SterringMs.Start = 0;
			SterringMs.Init = 1; 
		}
		SterringMs.Total = MenuItemSterring[0].Max;
		SterringMs.DrawMask = PD_ALL;
		return 1;
	}
	PageMenuProc(MenuItemSterring, &SterringMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemSterring[SterringMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemSterring[SterringMs.Focus+1].SubItem, PV_INIT);
		}else{
			SterringMs.ItemEdit = ENABLE; SterringMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(SterringMs.ItemEdit == ENABLE){
		  SterringMs.ItemEdit = DISABLE; SterringMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}
