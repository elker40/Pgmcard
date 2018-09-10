#ifndef __PAGE_H
#define __PAGE_H

#include "Global.h"
#include "LcdDraw.h"
#include "InputBtn.h"
#include "Stablizer.h"

#define PAGE_LEVEL   	    3  // ����˵�
#define LCD_MENU_LINES  	3	 // ����������,��ʾ��Ŀ��

//**************************************************************************************************
typedef enum{
  PD_TITLE  =	0x01,
  PD_LIST	  =	0x02,
  PD_IDX		= 0x04,
  PD_VALUE	= 0x08,
  PD_ALL		= 0xFF,
}PdDef, PdTypeDef;

typedef enum{
  PV_INIT	  =	0x01,				  // ��ʼ��
  PV_RUN    = 0x02,				  // ����
  PV_END    = 0x04,				  // ����
  PV_REDRAW	= 0x08,				  // �ػ�    
  PV_PARAM	=	0x10,         // ����
}PvInitDef, PvInitTypeDef;

typedef uint8_t (*PageFun)(uint8_t Event);

typedef struct{
	uint8_t     Init;	        // ��ʼ��
	uint8_t     DrawMask,     // ��������  
              Focus,        // ҳ�潹��
              Start,        // ��ʼ����
              Total;        // ��������
	uint8_t     ItemEdit; 		// �༭��־
}MenuStat, MenuStatDef, MenuStatTypeDef;

typedef struct{
	sString			Title;			  // ����
	PageFun			SubItem;		  // �Ӳ˵�
	sString		*	ValueList;		// ѡ���б�	 
	int16_t			Min, Max;		  // �����Сֵ
	int16_t	 	* pValue;			  // ��ֵ
	uint8_t    	Data;			    // ��ֵ
	sString			Text;				  // ��ֵ
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
