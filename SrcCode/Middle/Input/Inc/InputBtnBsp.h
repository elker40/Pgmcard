#ifndef __INPUTBTNBSP_H
#define __INPUTBTNBSP_H

#include "ReMap.h"

//**************************************************************************************************
#define IDX_BTN_UP          	((uint8_t)(0x01))
#define IDX_BTN_DW          	((uint8_t)(0x02)) 
#define IDX_BTN_ENT          	((uint8_t)(0x04))
#define IDX_BTN_EXT         	((uint8_t)(0x08))
//**************************************************************************************************
extern uint8_t BtnGetState(uint8_t IdxBtn);

#endif