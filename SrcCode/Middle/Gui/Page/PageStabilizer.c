#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam AutoFlyMs;
// Private *****************************************************************************************
uString sRom PageOptionMountingDir[4] = {"UP", "DOWN", "RIGHT", "LEFT"};
uString sRom PageOptionWingType[3] = {"Normal", "Delta", "V-Tail"};
MenuItem sRom MenuItemAutoFly[] = { 
	{"IStone Stabilizer",0,0,0,9,0,0,0 },

	{"Fly Mode",	 PageAutoFlyMode,      0,0, 0,0, 0,0},
	{"Yaw Gain",	 PageAutoFlyYawGain,   0,0, 0,0, 0,0},
	{"Roll Gain",	 PageAutoFlyRollGain,  0,0, 0,0, 0,0},
	{"Pitch Gain", PageAutoFlyPitchGain, 0,0, 0,0, 0,0},

	{"Roll Offset:",	0,0, -20,+20, &StabilizerParam[IDX_ROLL_OFFSET],	0,0},
	{"Pitch Offset:", 0,0, -20,+20, &StabilizerParam[IDX_PITCH_OFFSET], 0,0},
  
	{"Mount Dir:", 0,PageOptionMountingDir, 0,3, &StabilizerParam[IDX_MOUNT_DIR], 0,0},
	{"Wing Type:", 0,PageOptionWingType,		0,2, &StabilizerParam[IDX_WING_TYPE], 0,0},

	{"DSM Bind",		PageStablizerBuild, 0,0,0,0,   0,0},
};
// Public ******************************************************************************************
uint8_t PageAutoFly(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyMs.Init){
			AutoFlyMs.ItemEdit = AutoFlyMs.Focus = AutoFlyMs.Start = 0;
			AutoFlyMs.Init = 1; 
		}
		AutoFlyMs.Total = MenuItemAutoFly[0].Max;
		AutoFlyMs.DrawMask = PD_ALL;
		return 1;
	}
  
	DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	PageMenuProc(MenuItemAutoFly, &AutoFlyMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemAutoFly[AutoFlyMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemAutoFly[AutoFlyMs.Focus+1].SubItem, PV_INIT);
		}else{
			AutoFlyMs.ItemEdit = ENABLE;
			AutoFlyMs.DrawMask |= PD_VALUE;
		}
	}

	if(BtnTstDown(BTN_EXT)){
		if(AutoFlyMs.ItemEdit == ENABLE){
		  AutoFlyMs.ItemEdit = DISABLE;
			AutoFlyMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}

	return 0;
}
