#ifndef __LCDBASE_H
#define __LCDBASE_H
/**
  **************************************************************************************************
  * File    Name  :
  * Creat   Time  :
  * Revise  Time  :
  * Creat   Author:
  * Revise  Author:
  * Describe      :
**/
#include "ReMap.h"
#include "Global.h"
#include "PageRes.h"

//**************************************************************************************************
#undef SPI_MODE_BYTE
#define SPI_MODE_SERIES
//**************************************************************************************************
#define LCD_IC_H              72    // ST7567_132 Reserve
#define LCD_IC_W              132   // ST7567_72  Reserve

#define LCD_PHY_PAGES         8
#define LCD_PHY_WIDTH         128
//**************************************************************************************************               
#define LCD_STATIC_LOG_ON     0xAD  // 也就是第8页的图形是否显示
#define LCD_STATIC_LOG_OFF    0xAC

#define LCD_BOOST_RATIO       0x00  // 0x00:2,3,4倍, 0x01:5倍, 0x03:6倍

#define LCD_BEGIN_RMW         0xE0  // 开始读改写指令
#define LCD_END_RMW           0xEE  // 关闭读改写指令
//--------------------------------------------------------------------------------------------------
#define LCD_TEST_MASK         0xF0  
#define LCD_ADDR_PAG_MASK     0xB0  // 0xB0->0xB8 >> 0x00->0x08     
#define LCD_ADDR_MSB_LIN_MASK 0x10  // 
#define LCD_ADDR_LSB_LIN_MASK 0x00  // 
//--------------------------------------------------------------------------------------------------
#define LCD_NOP               0xE3  // NOP
#define LCD_CMD_RST           0xE2  // 复位

#define LCD_PWR_BOOST_ON      0x2C  // 打开升压电路
#define LCD_PWR_BOOST_ADJ     0x2E  // 打开升压调整电路
#define LCD_PWR_BOOST_TRACK   0x2F  // 打开升压追踪电路
 
#define LCD_CONTRAST_MAIN     0x24  // 主调对比度:0x20-0x27     
#define LCD_CONTRAST_KEK      0x81  // 微调钥匙 
#define LCD_CONTRAST_SUB      0x1A  // 微调对比度:0x00-0x3F

#define LCD_BIAS_9DIV         0xA2  // 1/9 偏压 
#define LCD_BIAS_7DIV         0XA3  // 1/7 偏压

#define LCD_LINE_INC          0xC0  // 行扫描顺序_从上到下
#define LCD_LINE_DEC          0xC8  // 行扫描顺序_从下到上
#define LCD_COLUMN_INC        0xA0  // 列扫描顺序_从左到右
#define LCD_COLUMN_DEC        0xA1  // 列扫描顺序_从右到左

#define LCD_COLUMN_OFFSET     0x40  // DDRAM与液晶行的便宜量_0x40->0x64 >> 0x00->0x63  

#define LCD_DISPLAY_NOR       0xA6  // 正显
#define LCD_DISPLAY_REV       0xA7  // 负显
#define LCD_REFRESH_ALL       0xA4  // 全部(只能配置为这个)
#define LCD_REFRESH_NOR       0xA5  // 正常

#define LCD_ON                0xAF  // 显示开
#define LCD_OFF               0xAE  // 显示关  
//**************************************************************************************************
extern void Lcd_Init(void);
//**************************************************************************************************
extern void Lcd_SetPage(uint8_t Page);
extern void Lcd_SetColumn(uint8_t Column);
extern void Lcd_SetPageColumn(uint8_t Page, uint8_t Column);
//**************************************************************************************************
extern void LcdWriteClr(uint8_t Bw);
extern void LcdWriteDatLine(uint8_t Dat);
extern void LcdWriteClrline(uint8_t nClr, uint8_t mDat);
//**************************************************************************************************
extern void LcdWriteAscChar(uint8_t iAsc, uint8_t mBw);
extern void LcdWriteAscString(uint8_t iPage, uint8_t iColumn, uint8_t mBw, sString pString);
//**************************************************************************************************
extern void LcdDrawBufferRefresh(void);

#endif
