#include "Page.h"

// Public ******************************************************************************************
MenuStat xRam SystemMs;
// Private *****************************************************************************************
uString sRom PageOptionSystemLanguage[2] = {"English", "Chinese"};
MenuItem sRom MenuItemSystem[] = { 
	{"System Set",0,0,0,1,0,0,0,"System Set"},

	{"Language",	0, PageOptionSystemLanguage, 0,1,	&TxSys.Language,0,0, "Language"},
};

uint8_t PageSystem(uint8_t event)
{
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!SystemMs.Init){
			SystemMs.ItemEdit = SystemMs.Focus = SystemMs.Start = 0;
			SystemMs.Init = 1;
		}
		SystemMs.Total = MenuItemSystem[0].Max;
		SystemMs.DrawMask = PD_ALL;
		return 1;
	}

	PageMenuProc(MenuItemSystem, &SystemMs);

	if(BtnTstDown(BTN_ENT)){

		if(MenuItemSystem[SystemMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemSystem[SystemMs.Focus+1].SubItem, PV_INIT);
		}else{
			SystemMs.ItemEdit = ENABLE;
			SystemMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(SystemMs.ItemEdit == ENABLE){
		  SystemMs.ItemEdit = DISABLE;
			SystemMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}