#include "LcdBase.h"

#if !defined(SPI_MODE_BYTE)&&!defined(SPI_MODE_SERIES)
	#define SPI_MODE_SERIES
	#message "SPI_MODE Default: SPI_MODE_SERIES."
#elif defined(SPI_MODE_BYTE)&&defined(SPI_MODE_SERIES)
	#error "Unable Define both SPI_MODE_BYTE and SPI_MODE_SERIES at The Same Time."
#endif

//**************************************************************************************************
#define DelayNop() //NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP();
//--------------------------------------------------------------------------------------------------
static void Delay(uint8_t nTim) {
  volatile uint8_t sRam nCnt = nTim;
  while((--nCnt) > 0);
}
static void Spi_Inti(void){
  #if defined(SPI_MODE_BYTE)
    LCD_CS = 1;
  #elif defined(SPI_MODE_SERIES)
    LCD_CS = 0;
  #endif
  LCD_SCK = 0;  
  LCD_SDA = 0;
}
#if defined(SPI_MODE_BYTE)
  static void Spi_WriteByte(uint8_t SpiDat) {
    uint8_t sRam i = 0;
    
    LCD_CS = 0; 
    for(i = 0; i < 8; i++) {
      LCD_SCK = 0; DelayNop();
        LCD_SDA = SpiDat & 0x80;
        SpiDat = SpiDat << 1;
      LCD_SCK = 1; DelayNop(); DelayNop(); 
    }
    LCD_CS = 1;
  }
#elif defined(SPI_MODE_SERIES)
  static void Spi_sWriteByte(uint8_t SpiDat) {
    uint8_t sRam i = 0;
    
    for(i = 0; i < 8; i++) {
      LCD_SCK = 0; DelayNop(); 
        LCD_SDA = SpiDat & 0x80;
        SpiDat = SpiDat << 1;
      LCD_SCK = 1; DelayNop(); DelayNop();
    }
  }
#endif
//--------------------------------------------------------------------------------------------------
static void Lcd_Rst(uint8_t nTim) { 
	LCD_RST = 0;        
	Delay(nTim);
	LCD_RST = 1;	
  Delay(5*nTim);
}
static void Lcd_Cmd(uint8_t uCmd) {
	LCD_RS = 0;
  #if defined(SPI_MODE_BYTE)
    Spi_WriteByte(uCmd);
  #elif defined(SPI_MODE_SERIES)
    Spi_sWriteByte(uCmd);
  #endif
}
static void Lcd_Dat(uint8_t uDat) {
	LCD_RS = 1;
  #if defined(SPI_MODE_BYTE)
    Spi_WriteByte(uDat);
  #elif defined(SPI_MODE_SERIES)
    Spi_sWriteByte(uDat);
  #endif
}
//**************************************************************************************************
void Lcd_Init(void) { 
  Spi_Inti();
  Lcd_Rst(0xF0);                  // 硬复位
  
	Lcd_Cmd(LCD_CMD_RST);	          // 软复位
	Delay(0xF0);
  
	Lcd_Cmd(LCD_PWR_BOOST_ON);      // 升压步聚1_打开升压电路
	Delay(0xF0);	
	Lcd_Cmd(LCD_PWR_BOOST_ADJ);     // 升压步聚2_打开升压调整电路
	Delay(0xF0);
	Lcd_Cmd(LCD_PWR_BOOST_TRACK);   // 升压步聚3_打开升压追踪电路
	Delay(0xF0);
  
	Lcd_Cmd(LCD_CONTRAST_MAIN);     // 粗调对比度
	Lcd_Cmd(LCD_CONTRAST_KEK);      // 微调钥匙 
	Lcd_Cmd(LCD_CONTRAST_SUB);      // 微调对比度
	Lcd_Cmd(LCD_BIAS_9DIV);         // 液晶驱动偏压
	Lcd_Cmd(LCD_LINE_DEC);          // 行扫描顺序_从上到下
	Lcd_Cmd(LCD_COLUMN_INC);        // 列扫描顺序_从左到右
	Lcd_Cmd(LCD_COLUMN_OFFSET);     // DDRAM与液晶行的便宜量
  Lcd_Cmd(LCD_DISPLAY_NOR);       // 正常显示
  Lcd_Cmd(LCD_REFRESH_ALL);       // 正常刷新
	Lcd_Cmd(LCD_ON);                // 开显示
}
//**************************************************************************************************
void Lcd_SetPage(uint8_t iPage) {
  Lcd_Cmd(0xB0 | iPage);                     //PAGE:0-0x07
}
void Lcd_SetColumn(uint8_t iColumn) {
  Lcd_Cmd(iColumn & 0x0F);                   // LSB_4Bit  
  Lcd_Cmd((iColumn >> 4) + 0x10);            // MSB_4Bit
}
void Lcd_SetPageColumn(uint8_t iPage, uint8_t iColumn) {
  Lcd_Cmd(0xB0 | iPage);                     // PAGE:0-0x07
  Lcd_Cmd(iColumn & 0x0F);                   // LINE:MSB_4BIT|MSB:4Bit
  Lcd_Cmd((iColumn >> 4) + 0x10);           
}
//**************************************************************************************************
void LcdWriteClr(uint8_t mBw) {
  uint8_t sRam iPage = 0, iColumn = 0;
  
  mBw = mBw ? 0xFF : 0x00;
  for (iPage = 0; iPage < LCD_PHY_PAGES; iPage++) {
    Lcd_SetPage(iPage);
    Lcd_SetColumn(0);
    for (iColumn = 0; iColumn < LCD_PHY_WIDTH; iColumn++) {
      Lcd_Dat(mBw);
    }
  }
}
void LcdWriteDatLine(uint8_t mDat) {
  Lcd_Dat(mDat);
}
void LcdWriteClrline(uint8_t nClr, uint8_t mDat) {
  while (nClr--) {
    Lcd_Dat(mDat);
  }
}
//**************************************************************************************************
void LcdWriteAscChar(uint8_t iAsc, uint8_t mBw) {
  uint8_t sRam iAscMask = 0, AskMaskDat = 0;
  uint8_t * sRam pAscMask = AscFontTableMask + (uint16_t) iAsc * 6;

  for (iAscMask = 0; iAscMask < 6; iAscMask++) {
    AskMaskDat = pAscMask[iAscMask];
    if (mBw) {
      AskMaskDat = ~AskMaskDat;
    }
    Lcd_Dat(AskMaskDat);
  }
}
void LcdWriteAscString(uint8_t iPage, uint8_t iColumn, uint8_t mBw, sString pString) {
  Lcd_SetPageColumn(iPage, iColumn);

  while (*pString) {
    LcdWriteAscChar((uint8_t)(*pString), mBw);
    pString++;
  }
}
//**************************************************************************************************
extern uint8_t xRam LcdDispImg[LCD_PHY_WIDTH * LCD_PHY_PAGES];
extern uint8_t xRam LcdDispBuf[LCD_PHY_WIDTH];
//--------------------------------------------------------------------------------------------------
void LcdDrawBufferRefresh(void) {
  uint8_t sRam Idx = 0;
  uint8_t sRam Init = 0;
  uint16_t sRam iPage = 0, iColumn = 0, iColumnCache = 0;

  for (iPage = 0; iPage < LCD_PHY_PAGES; iPage++) {
    for (iColumn = 0; iColumn < LCD_PHY_WIDTH; iColumn++) {
      if (LcdDispBuf[iColumn] & (1 << iPage)) {
        if (!Init) {
          Lcd_SetPageColumn(iPage, iColumn);
        } else if (iColumnCache + 1 != iColumn) {
          Lcd_SetColumn(iColumn);
        }
        Lcd_Dat(LcdDispImg[iPage * LCD_PHY_WIDTH + iColumn]);
        iColumnCache = iColumn;
      }
    }
  }
  
  for(Idx = 0; Idx < LCD_PHY_WIDTH; Idx++){
    LcdDispBuf[Idx] = 0x00;
  }
//  memset(LcdDispBuf, 0, sizeof(LcdDispBuf));
}
