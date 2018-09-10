#ifndef __PAGERES_H
#define __PAGERES_H

#include "TypeDef.h"

//**************************************************************************************************
#define ASCSUM    127
#define CHSSUM    2
#define MINISUM   50
//**************************************************************************************************
#define LCD_MN_DOT      10
#define LCD_MN_MINUS    11
#define LCD_MN_MW1      12
#define LCD_MN_MW2      13
#define LCD_MN_MW3      14
#define LCD_MN_SP       15
#define LCD_MN_PLUS     16
#define LCD_MN_SPA      17
#define LCD_MN_COL      18
#define LCD_MN_A        23
#define LCD_MN_CHAR(X)  (X-'A'+LCD_MN_A)
//**************************************************************************************************
extern uint8_t sRom AscFontTableMask[ASCSUM*6];
extern uint8_t sRom ChsFontTableMask[CHSSUM*26];
extern uint8_t sRom MinFontTableMask[MINISUM][4];
//**************************************************************************************************
extern uint8_t sRom PageMainBmp[1088];

#endif
