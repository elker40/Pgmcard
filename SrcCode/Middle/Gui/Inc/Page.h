#ifndef __PAGE_H
#define __PAGE_H

#include "Global.h"
#include "LcdDraw.h"
#include "InputBtn.h"
#include "Stablizer.h"

#define PAGE_LEVEL   	    3  // 最深菜单
#define LCD_MENU_LINES  	3	 // 不包含标题,显示条目数

//**************************************************************************************************
typedef enum{
  PD_TITLE  =	0x01,
  PD_LIST	  =	0x02,
  PD_IDX		= 0x04,
  PD_VALUE	= 0x08,
  PD_ALL		= 0xFF,
}PdDef, PdTypeDef;

typedef enum{
  PV_INIT	  =	0x01,				  // 初始化
  PV_RUN    = 0x02,				  // 运行
  PV_END    = 0x04,				  // 结束
  PV_REDRAW	= 0x08,				  // 重绘    
  PV_PARAM	=	0x10,         // 保留
}PvInitDef, PvInitTypeDef;

typedef uint8_t (*PageFun)(uint8_t Event);

typedef struct{
	uint8_t     Init;	        // 初始化
	uint8_t     DrawMask,     // 绘制掩码  
              Focus,        // 页面焦点
              Start,        // 初始焦点
              Total;        // 总条数数
	uint8_t     ItemEdit; 		// 编辑标志
}MenuStat, MenuStatDef, MenuStatTypeDef;

typedef struct{
	sString			Title;			  // 标题
	PageFun			SubItem;		  // 子菜单
	sString		*	ValueList;		// 选项列表	 
	int16_t			Min, Max;		  // 最大最小值
	int16_t	 	* pValue;			  // 数值
	uint8_t    	Data;			    // 数值
	sString			Text;				  // 数值
}MenuItem, MenuItemDef, MenuItemTypeDef;

//**************************************************************************************************
extern uint8_t cRam PageStackIdx;
extern PageFun cRam PageStack[PAGE_LEVEL];
//--------------------------------------------------------------------------------------------------
extern void PageInit(PageFun Page, uint8_t Msg);
extern void PageGoto(PageFun Page, uint8_t Msg);
extern void PageEnter(PageFun Page, uint8_t Msg);
extern void PageReturn(uint8_t Msg);
//--------------------------------------------------------------------------------------------------
extern void PageMenuStatDatInit(void);
//--------------------------------------------------------------------------------------------------
extern void PageMenuProc(MenuItem *pmi, MenuStat *pms);
//**************************************************************************************************
extern uint8_t PageEscParam(uint8_t event); 
//--------------------------------------------------------------------------------------------------
extern uint8_t PageEsc1th(uint8_t event);
extern uint8_t PageEsc2th(uint8_t event);
extern uint8_t PageEsc3th(uint8_t event);
//--------------------------------------------------------------------------------------------------
extern uint8_t PageEsc1thRst(uint8_t event);
extern uint8_t PageEsc2thRst(uint8_t event);
extern uint8_t PageEsc3thRst(uint8_t event);
extern uint8_t PageEsc3thAbout(uint8_t event);
//--------------------------------------------------------------------------------------------------
extern uint8_t PageAutoFly(uint8_t event);
//--------------------------------------------------------------------------------------------------
extern uint8_t PageAutoFlyMode(uint8_t event);
extern uint8_t PageStablizerBuild(uint8_t event);
extern uint8_t PageAutoFlyYawGain(uint8_t event);
extern uint8_t PageAutoFlyRollGain(uint8_t event);
extern uint8_t PageAutoFlyPitchGain(uint8_t event);
//--------------------------------------------------------------------------------------------------
extern uint8_t PageBatVolt(uint8_t event);
//--------------------------------------------------------------------------------------------------
extern uint8_t PageSterring(uint8_t event);
//**************************************************************************************************
extern MenuStat xRam EscMs;
//--------------------------------------------------------------------------------------------------
extern MenuStat xRam Esc1thMs;
extern MenuStat xRam Esc2thMs;
extern MenuStat xRam Esc3thMs;
//--------------------------------------------------------------------------------------------------
extern MenuStat xRam AutoFlyMs;
extern MenuStat xRam AutoFlyModeMs;
extern MenuStat xRam AutoFlyYawGainMs;
extern MenuStat xRam AutoFlyRollGainMs;
extern MenuStat xRam AutoFlyPitchGainMs;
//--------------------------------------------------------------------------------------------------
extern MenuStat xRam LipoCellsEscMs;
//--------------------------------------------------------------------------------------------------
extern MenuStat xRam SterringMs;
//**************************************************************************************************

#endif
