#include "Page.h"

uint8_t xRam Language = 0;

// Public ******************************************************************************************
MenuStat xRam MainMs;
// Private *****************************************************************************************
MenuItem sRom MenuItemMain[] = { 
	{"Programable Card", 0,0,0,4,0,0,0,"Programable Card"},
  
	{"Stablizer",      PageAutoFly,       0,0,0,0,0,0, "Stablizer"},  
	{"SkyLord Esc",    PageAutoMobileEsc, 0,0,0,0,0,0, "SkyLord Esc"},    
  {"AutoMobile Esc", PageAircraftEsc,	  0,0,0,0,0,0, "AutoMobile Esc"},  
  {"Battery",		     PageBatVolt,	      0,0,0,0,0,0, "Battery"},
};
// Public ******************************************************************************************
uint8_t PageMain(uint8_t event)
{
	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!AutoFlyMs.Init){
			MainMs.ItemEdit = MainMs.Focus = MainMs.Start = 0;
			MainMs.Init = 1;
		}
		MainMs.Total = MenuItemMain[0].Max;
		MainMs.DrawMask = PD_ALL;
		return 1;
	}

	PageMenuProc(MenuItemMain, &MainMs);

	if(BtnTstDown(BTN_ENT)){
		if(MenuItemMain[MainMs.Focus+1].SubItem){
			PageEnter((PageFun)MenuItemMain[MainMs.Focus+1].SubItem, PV_INIT);
		}else{
			MainMs.ItemEdit = ENABLE;
			MainMs.DrawMask |= PD_VALUE;
		}
	}
	if(BtnTstDown(BTN_EXT)){
		if(MainMs.ItemEdit == ENABLE){
		  MainMs.ItemEdit = DISABLE;
			MainMs.DrawMask |= PD_VALUE;
		}else{
      PageReturn(PV_INIT);
		}
	}
	return 0;
}
