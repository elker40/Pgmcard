#include "Page.h"

// Define Public Ram *******************************************************************************
MenuStat xRam LipoCellsEscMs;
// Define Public Fun *******************************************************************************
uint8_t PageBatVolt(uint8_t event)
{
 	if(event == PV_INIT){
		LcdDrawClr(0);
		if(!LipoCellsEscMs.Init){
			LipoCellsEscMs.ItemEdit = LipoCellsEscMs.Focus = LipoCellsEscMs.Start = 0;
      LipoCellsEscMs.Total = 0;
			LipoCellsEscMs.Init = 1;
		}
		LipoCellsEscMs.DrawMask = PD_ALL;
		return 1;
	}else if(event == PV_RUN){
    if(AdcCovOkFlag != 0){
      AdcCovOkFlag = 0x0;
      LipoCellsEscMs.DrawMask |= PD_VALUE;
    }      
  }

  if(LipoCellsEscMs.DrawMask){
    if(LipoCellsEscMs.DrawMask&PD_TITLE){		
      LcdDrawRect(0, 0, LCD_W-1, 12, 0); 
      
      if(TxSys.Language == LNG_CHS){
        LcdDrawTextString(3, 0, "LiPo Cells Voltage");
      }else if(TxSys.Language == LNG_ENG){
        LcdDrawTextString(3, 0, "LiPo Cells Voltage");
      }
      LcdDrawHLine(0, LCD_W-1, 12, 1);
    }
    
    if(LipoCellsEscMs.DrawMask&PD_LIST){
      LcdDrawTextString(0, 13, "1st:     V"); LcdDrawTextString((uint16_t)(LCD_W/2), 13, "2nd:     V");
      LcdDrawTextString(0, 23, "3rd:     V"); LcdDrawTextString((uint16_t)(LCD_W/2), 23, "4th:     V");
      LcdDrawTextString(0, 33, "5th:     V"); LcdDrawTextString((uint16_t)(LCD_W/2), 33, "6th:     V");      
      LcdDrawTextString(0, 43, "7th:     V"); LcdDrawTextString((uint16_t)(LCD_W/2), 43, "8th:     V");
      LcdDrawTextString(0, 53, "Total Cell:      V"); 
    }
    
    if(LipoCellsEscMs.DrawMask&PD_VALUE){
      LcdDrawInt(30, 13, BatVoltage[0]/10, 0, 2, 0xFF, 0); LcdDrawInt((uint16_t)(30+LCD_W/2), 13, BatVoltage[1]/10, 0, 2, 0xFF, 0); 
      LcdDrawInt(30, 23, BatVoltage[2]/10, 0, 2, 0xFF, 0); LcdDrawInt((uint16_t)(30+LCD_W/2), 23, BatVoltage[3]/10, 0, 2, 0xFF, 0); 
      LcdDrawInt(30, 33, BatVoltage[4]/10, 0, 2, 0xFF, 0); LcdDrawInt((uint16_t)(30+LCD_W/2), 33, BatVoltage[5]/10, 0, 2, 0xFF, 0); 
      LcdDrawInt(30, 43, BatVoltage[6]/10, 0, 2, 0xFF, 0); LcdDrawInt((uint16_t)(30+LCD_W/2), 43, BatVoltage[7]/10, 0, 2, 0xFF, 0); 
      LcdDrawInt(70, 53, BatVoltage[8]/10, 4, 2, 0xFF, 0);
    }  
    
    LipoCellsEscMs.DrawMask = 0;
    LcdDrawBufferRefresh();
    AdcCovEnTrigger = 0x1;
  }
  
	if(BtnTstDown(BTN_EXT)||BtnTstDown(BTN_ENT)){
    PageReturn(PV_INIT);
	}
	return 0;
}
