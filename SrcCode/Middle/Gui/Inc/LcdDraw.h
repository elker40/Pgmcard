#ifndef __LCDDRAW_H
#define __LCDDRAW_H

#include "LcdBase.h"
#include <math.h>
#include <stdio.h>
#include <string.h>
//**************************************************************************************************
#define LCD_H          64
#define LCD_W          128
//**************************************************************************************************
extern uint8_t xRam LcdBw;   
//**************************************************************************************************
extern void LcdDrawClr(uint8_t Bw);
//**************************************************************************************************
extern void LcdDrawPixelXY(uint16_t x, uint16_t y, uint16_t color);
extern void LcdDrawHLine(uint16_t x1, uint16_t x2, uint16_t y, uint16_t color);
extern void LcdDrawVLine(uint16_t x, uint16_t y1, uint16_t y2, uint16_t color);
extern void LcdDrawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
extern void LcdDrawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
//**************************************************************************************************
extern void LcdDrawBmpToArray(uint16_t x, uint16_t y, uint8_t *pImageDat);
extern void LcdDrawGeChar(uint16_t x, uint16_t y, uint8_t width, uint8_t yOffset, uint8_t height, uint8_t *pImageDat);
//**************************************************************************************************
extern void LcdDrawChsChar(uint16_t x, uint16_t y, uint16_t iChs);
extern void LcdDrawAscChar(uint16_t x, uint16_t y, uint8_t iAsc);
extern uint16_t LcdDrawTextString(uint16_t x, uint16_t y, uint8_t *pText);
//**************************************************************************************************
extern void LcdDrawInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar);
//**************************************************************************************************
extern void LcdDrawMiniBmp(uint16_t x, uint16_t y, uint8_t iTab);
extern void LcdDrawMiniAsc(uint16_t x, uint16_t y, uint8_t *pAsc);
extern void LcdDrawMiniInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar);
//**************************************************************************************************
extern void LcdDatInit(void);
extern void LcdDrawInit(void);

#endif
