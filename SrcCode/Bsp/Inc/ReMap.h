#ifndef __BSPREMAP_H
#define __BSPREMAP_H

#include "TypeDef.h"

// LCD_PIN
SI_SBIT (LCD_RS,      SFR_P0, 2);
SI_SBIT (LCD_RST,     SFR_P1, 3);

SI_SBIT (LCD_CS,      SFR_P0, 6);
SI_SBIT (LCD_SCK,     SFR_P0, 3);
SI_SBIT (LCD_SDA,     SFR_P0, 5);

// BTN_PIN
SI_SBIT (BtnEntGpio, 	SFR_P0, 0);
SI_SBIT (BtnExtGpio, 	SFR_P0, 1);

SI_SBIT (BtnUpGpio, 	SFR_P1, 4);
SI_SBIT (BtnDwGpio, 	SFR_P1, 5);

SI_SBIT (RC_OUT,      SFR_P0, 4);         // 电调编程接口

#endif

