#include "Page.h"

uint8_t xRam IdxStatue;

uint8_t  cRam PageStablizerBindTickOverFlow;
uint16_t cRam PageStablizerBindTickCnt;
// Public ******************************************************************************************
uint8_t PageStablizerBuild(uint8_t event){
	if(event == PV_INIT){
		LcdDrawClr(0);
		LcdDrawTextString(3, 0, "DSM Bind");
		LcdDrawHLine(0, LCD_W-1, 14, 1);
		StabilizerParam[IDX_BUILD] = 0x1;
		IdxStatue = 0x00; 
		PageStablizerBindTickOverFlow = 0x0; PageStablizerBindTickCnt = 0x0000;
	}else{
		if(BtnTstDown(BTN_EXT)){
			PageReturn(PV_INIT);
		}
		
		TickTimeInt(0);	
		if(PageStablizerBindTickOverFlow == 0x1){
			if(TickCnt1ms > UINT16_MAX-500){
				TickTimeInt(1);
				return 1;
			}
			PageStablizerBindTickOverFlow = 0x0;
			TickTimeInt(1);
		}else{
			if(TickCnt1ms < PageStablizerBindTickCnt){
				TickTimeInt(1);	
				return 1;
			}
			PageStablizerBindTickCnt = TickCnt1ms + 500;
			if(PageStablizerBindTickCnt < 500) PageStablizerBindTickOverFlow = 0x1; 
			TickTimeInt(1);
		}
		
		LcdDrawRect(0, 15, LCD_W-1, 63, 0); 		
		
		if(IdxStatue == 0){
			IdxStatue ++;
			LcdDrawTextString(10, 35, "DSM Bind");
		}else if(IdxStatue == 1){
			IdxStatue ++;
			LcdDrawTextString(10, 35, "DSM Bind.");
		}else if(IdxStatue == 2){
			IdxStatue++;
			LcdDrawTextString(10, 35, "DSM Bind..");
		}else if(IdxStatue == 3){
			IdxStatue ++;
			LcdDrawTextString(10, 35, "DSM Bind...");	
		}else if(IdxStatue == 4){
			IdxStatue ++;
			LcdDrawTextString(10, 35, "DSM Bind....");	
		}else if(IdxStatue == 5){
			IdxStatue ++;
			LcdDrawTextString(10, 35, "DSM Bind.....");	
		}else if(IdxStatue == 6){
			LcdDrawTextString(10, 35, "Please Restart!!!");
		}														
	}
	LcdDrawBufferRefresh();
	DetectChargeParameter(StabilizerParam, sizeof(StabilizerParam)/sizeof(StabilizerParam[0]));
	
	return 1;
}
