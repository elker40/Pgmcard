#include "Page.h"

// Private *****************************************************************************************
uint8_t cRam PageStackIdx;
PageFun cRam PageStack[PAGE_LEVEL];
//--------------------------------------------------------------------------------------------------
void PageInit(PageFun Page, uint8_t Msg){
  for(PageStackIdx = 0; PageStackIdx < PAGE_LEVEL; PageStackIdx ++){
    PageStack[PageStackIdx] = NULL;
  }    
  PageStackIdx = 0;
  PageStack[PageStackIdx] = Page;
	Page(Msg);
}  
void PageGoto(PageFun Page, uint8_t Msg){
	PageStack[PageStackIdx] = Page;	
	Page(Msg);
}
void PageEnter(PageFun Page, uint8_t Msg){
	if(PageStackIdx >= PAGE_LEVEL - 1) return;
	PageStack[++PageStackIdx] = Page;
	Page(Msg);
}
void PageReturn(uint8_t Msg){
	if(PageStackIdx > 0) PageStackIdx--;
	PageStack[PageStackIdx](Msg);
} 
//**************************************************************************************************
void PageMenuStatDatInit(void){  
	EscMs.Init = 0; 
  EscMs.Focus = 0; 
  EscMs.Start = 0; 
  EscMs.Total = 0;  
  EscMs.DrawMask = 0; 
  EscMs.ItemEdit = 0;
	
  Esc1thMs.Init = 0; 
  Esc1thMs.Focus = 0; 
  Esc1thMs.Start = 0; 
  Esc1thMs.Total = 0;  
  Esc1thMs.DrawMask = 0; 
  Esc1thMs.ItemEdit = 0; 	
	
  Esc2thMs.Init = 0; 
  Esc2thMs.Focus = 0; 
  Esc2thMs.Start = 0; 
  Esc2thMs.Total = 0;  
  Esc2thMs.DrawMask = 0; 
  Esc2thMs.ItemEdit = 0;
	
	Esc3thMs.Init = 0; 
  Esc3thMs.Focus = 0; 
  Esc3thMs.Start = 0; 
  Esc3thMs.Total = 0;  
  Esc3thMs.DrawMask = 0; 
  Esc3thMs.ItemEdit = 0; 	
	
  AutoFlyMs.Init = 0;
  AutoFlyMs.Focus = 0;
  AutoFlyMs.Start = 0;
  AutoFlyMs.Total = 0;  
  AutoFlyMs.DrawMask = 0; 
  AutoFlyMs.ItemEdit = 0;
  
  AutoFlyModeMs.Init = 0;
  AutoFlyModeMs.Focus = 0;  
  AutoFlyModeMs.Start = 0; 
  AutoFlyModeMs.Total = 0;      
  AutoFlyModeMs.DrawMask = 0;
  AutoFlyModeMs.ItemEdit = 0;   

  AutoFlyYawGainMs.Init = 0;
  AutoFlyYawGainMs.Focus = 0;  
  AutoFlyYawGainMs.Start = 0;  
  AutoFlyYawGainMs.Total = 0;   
  AutoFlyYawGainMs.DrawMask = 0;
  AutoFlyYawGainMs.ItemEdit = 0;  
  
  AutoFlyRollGainMs.Init = 0;
  AutoFlyRollGainMs.Focus = 0;  
  AutoFlyRollGainMs.Start = 0;  
  AutoFlyRollGainMs.Total = 0;   
  AutoFlyRollGainMs.DrawMask = 0;
  AutoFlyRollGainMs.ItemEdit = 0;  
  
  AutoFlyPitchGainMs.Init = 0; 
  AutoFlyPitchGainMs.Focus = 0; 
  AutoFlyPitchGainMs.Start = 0; 
  AutoFlyPitchGainMs.Total = 0;  
  AutoFlyPitchGainMs.DrawMask = 0; 
  AutoFlyPitchGainMs.ItemEdit = 0; 
 
  LipoCellsEscMs.Init = 0; 
  LipoCellsEscMs.Focus = 0; 
  LipoCellsEscMs.Start = 0; 
  LipoCellsEscMs.Total = 0;  
  LipoCellsEscMs.DrawMask = 0; 
  LipoCellsEscMs.ItemEdit = 0;
	
	SterringMs.Init = 0; 
  SterringMs.Focus = 0; 
  SterringMs.Start = 0; 
  SterringMs.Total = 0;  
  SterringMs.DrawMask = 0; 
  SterringMs.ItemEdit = 0;
}
//**************************************************************************************************
void PageMenuProc(MenuItem *pmi, MenuStat *pms){
  uint8_t cRam i = 0, idx = 0; 
	uint16_t cRam s = 0, p = 0, x = 0, y =0;
	MenuItem *mi = (MenuItem *)&pmi[pms->Focus+1]; 
	
	if(pms->DrawMask){ 
		if(pms->DrawMask&PD_TITLE){		
      LcdDrawRect(0, 0, LCD_W-1, 15, 0); 
			LcdDrawTextString(3, 1, pmi[0].Title); LcdDrawHLine(0, LCD_W-1, 15, 1);
		}
    
		if(pms->DrawMask&PD_IDX){
      if(pms->Total > 9){
        LcdDrawMiniInt(LCD_W-12, 6, pms->Focus+1, 2, 0, 0xFF, 1);   // 绘制分子
        LcdDrawMiniBmp(LCD_W-12, 6, LCD_MN_SPA);                    // 绘制分割
        LcdDrawMiniInt(LCD_W-8, 6, pms->Total, 2, 0, 0xFF, 0);      // 绘制分母
      }else{
    		LcdDrawMiniInt(LCD_W-12, 6, pms->Focus+1, 2, 0, 0xFF, 1);   // 绘制分子
        LcdDrawMiniBmp(LCD_W-12, 6, LCD_MN_SPA);                    // 绘制分割
        LcdDrawMiniInt(LCD_W-8, 6, pms->Total, 1, 0, 0xFF, 0);      // 绘制分母
      }
    }
	
		if(pms->DrawMask&(PD_LIST|PD_VALUE)){
			for(i = 0, y = 16; i < LCD_MENU_LINES && i < pms->Total; i++, y+=16){
				idx = pms->Start + i;
				LcdBw = (idx == pms->Focus);
				idx++;
        
        x = 0;
        if(idx > 9) x = 4;
        
				if(pms->DrawMask&PD_LIST||LcdBw){
					LcdDrawRect(1, y+1, LCD_W-1, y+15, LcdBw);	  // 绘制选中
          LcdDrawMiniInt(2, y+6, idx, 0, 0, 0xFF, 0);	  // 绘制序号
          LcdDrawMiniBmp(x+6, y+6, LCD_MN_DOT);		      // 绘制分隔         
          LcdDrawTextString(x+8, y+2, pmi[idx].Title);  // 绘制内容
					
					if(pmi[idx].SubItem){
						if(LcdBw){
							LcdDrawTextString(LCD_W-14, y+2, "\6\2"); // 绘制箭头 =>
						}else{
							LcdDrawTextString(LCD_W-8, y+2, "\2");    // 绘制箭头 >
						}
					}
				
					if(pmi[idx].Text){		                        // 显示文本
						s = (LCD_W-10)-6*strlen(pmi[idx].Text);
						p = LcdDrawTextString(s, y+2, pmi[idx].Text);
						LcdDrawHLine(s, p, y+14, 0);                // 画下划线
					}else if(pmi[idx].pValue){	
            if(*pmi[idx].pValue > pmi[idx].Max) *pmi[idx].pValue = pmi[idx].Max;  // 防止溢出
            if(*pmi[idx].pValue < pmi[idx].Min) *pmi[idx].pValue = pmi[idx].Min;  // 防止溢出  
    
            if(pmi[idx].ValueList){                     // 显示文字
              s = (LCD_W-10)-6*strlen(pmi[idx].ValueList[*pmi[idx].pValue]);
              p = LcdDrawTextString(s , y+2, (char *)pmi[idx].ValueList[*pmi[idx].pValue]);
            }else{  
              LcdDrawInt(s = LCD_W-38, y+2, *pmi[idx].pValue, 3, pmi[idx].Data, 0, 0); 
              p = (LCD_W-38)+24+2;
            }
					}
					
					if(pms->ItemEdit&&LcdBw){  									// 编辑状态
						if(*pmi[idx].pValue == pmi[idx].Max){
							LcdDrawTextString(LCD_W-8, y+2, "\4");  // 绘制下箭头  
						}else if(*pmi[idx].pValue == pmi[idx].Min){
							LcdDrawTextString(LCD_W-8, y+2, "\5");  // 绘制上箭头
						}else{
							LcdDrawTextString(LCD_W-8, y+2, "\3");  // 绘制上下箭头
							LcdDrawHLine(s-1, p+1, y+14, 0);        // 画一条下划线
						}
					}
				}
				LcdBw = 0;
			}
		}
    LcdDrawBufferRefresh();
		pms->DrawMask = 0;
	}

	if(pms->ItemEdit != 0) {
		if(BtnTstDown(BTN_UP)){
			if(mi->pValue){
				if(*mi->pValue < mi->Max){
					(*mi->pValue)++;
					pms->DrawMask |= PD_VALUE;
				}
			}
		}
		if(BtnTstDown(BTN_DW)){
			if(mi->pValue){
				if(*mi->pValue > mi->Min){
					(*mi->pValue)--;
					pms->DrawMask |= PD_VALUE;
				}
			}
		}
	}else{
    if(BtnTstDown(BTN_UP)){
			if(pms->Focus > 0){
				pms->Focus--;
			}else{
				pms->Focus = pms->Total-1;
			}
			pms->DrawMask = PD_LIST|PD_IDX;
		}
		if(BtnTstDown(BTN_DW)){
			if(pms->Focus < pms->Total-1){
				pms->Focus++;
			}else{ 
				pms->Focus = 0;
			}
			pms->DrawMask = PD_LIST|PD_IDX;
		}
	}
  
	if(pms->Focus < pms->Start) pms->Start = pms->Focus;  // 上翻控制
	if(pms->Focus > pms->Start+LCD_MENU_LINES-1) pms->Start = pms->Focus-(LCD_MENU_LINES-1); // 下翻控制	
} 
