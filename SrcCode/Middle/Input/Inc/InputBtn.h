#ifndef __INPUTBTN_H
#define __INPUTBTN_H

#include "Global.h"
#include "InputBtnBsp.h"
//**************************************************************************************************
#define	BTN_UP		            ((uint8_t)(0x01))
#define BTN_DW		            ((uint8_t)(0x02))
#define BTN_ENT		            ((uint8_t)(0x04))
#define BTN_EXT		            ((uint8_t)(0x08))
#define	BTN_MASK	            ((uint8_t)(BTN_ENT|BTN_EXT|BTN_UP|BTN_DW))
//**************************************************************************************************
extern void BtnDatInit(void);
//**************************************************************************************************
extern void BtnScanHandle(void);
//**************************************************************************************************
extern void BtnFlush(void);
extern void BtnStopCnt(void);
extern void BtnClearDown(uint8_t BtnMask);
extern uint8_t BtnTstStat(uint8_t BtnMask);
extern uint8_t BtnTstDown(uint8_t BtnMask);
extern uint8_t BtnTstHold(uint8_t BtnMask);

#endif
