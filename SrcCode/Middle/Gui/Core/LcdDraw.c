#include "LcdDraw.h"

//**************************************************************************************************
uint8_t xRam LcdBw = 0;
//**************************************************************************************************
uint8_t xRam LcdDispImg[LCD_PHY_WIDTH * LCD_PHY_PAGES];
uint8_t xRam LcdDispBuf[LCD_PHY_WIDTH];
//**************************************************************************************************
typedef enum{
  DRAW_NWSE = 0,
  DRAW_SWNE = 1,
}DrawDirDef, DrawDirTypeDef;
//--------------------------------------------------------------------------------------------------
uint8_t xRam LcdDir = 0; //static
uint16_t xRam LcdXpos = 0, LcdYpos = 0; //static
uint16_t xRam LcdLeft = 0, LcdRight = 0; //static
//**************************************************************************************************
static void LcdDrawStart(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, DrawDirDef DrawDir) {
  if (DrawDir == DRAW_SWNE) {
    LcdYpos = y1;  // bug fix: must do it this way to draw bmp
    LcdDir = -1;
  } else {
    LcdYpos = y0;
    LcdDir = 1;
  }
  LcdXpos = x0;
  LcdLeft = x0;
  LcdRight = x1;
}
static void LcdDrawPixel(uint16_t Color) {
  uint8_t sRam YColumn = LcdYpos / 0x08;
  uint8_t sRam YByteIdxBit = LcdYpos % 0x08;
  
  if (Color) {
    LcdDispImg[YColumn * LCD_PHY_WIDTH + LcdXpos] |= 1 << YByteIdxBit;
  } else {
    LcdDispImg[YColumn * LCD_PHY_WIDTH + LcdXpos] &= ~(1 << YByteIdxBit);
  }
  LcdDispBuf[LcdXpos] |= 1 << YColumn;

  LcdXpos++;
  if (LcdXpos > LcdRight) {
    LcdXpos = LcdLeft;
    LcdYpos += LcdDir;
  }
}
static void LcdDrawMaskX(uint16_t x, uint16_t y, uint8_t mask, uint8_t n) {
  uint8_t sRam j, c;
  uint16_t sRam  mv = 1 << n;
  // BIT:MSB -> LSB, DIR:Left->Right
  for (j = 0; j < n; j++) {
    mv >>= 1;
    c = mask & mv;
    LcdDrawPixelXY(x + j, y, LcdBw ? !c : c);
  }
}
static void LcdDrawMaskY(uint16_t x, uint16_t y, uint8_t mask, uint8_t n) {
  uint8_t sRam j, c;
  uint16_t sRam mv = 1 << n;
  // BIT:MSB -> LSB, DIR:Up->Down
  for (j = 0; j < n; j++) {
    mv >>= 1;
    c = mask & mv;
    LcdDrawPixelXY(x, y + j, LcdBw ? !c : c);
  }
}
static void LcdDrawHzLine(uint16_t x, uint16_t y, uint16_t mask, uint16_t numble) {
  uint16_t sRam j;
  uint16_t sRam mv = 1;
  for (j = 0; j < numble; j++) {
    LcdDrawPixelXY(x, y + j, mask & mv);
    mv <<= 1;
  }
}

//**************************************************************************************************
void LcdDatInit(void){
  uint16_t i;
  
  for(i = 0; i < (uint16_t)(LCD_PHY_WIDTH*LCD_PHY_PAGES); i++){
    LcdDispImg[i] = 0;
  }
  for(i = 0; i < (uint16_t)(LCD_PHY_WIDTH); i++){
    LcdDispBuf[i] = 0;
  }
  
  LcdBw = 0;
  LcdDir = 0; 
  LcdXpos = 0; LcdYpos = 0;
  LcdLeft = 0; LcdRight = 0;
}
void LcdDrawInit(void) {
  LcdBw = 0;
}
//**************************************************************************************************
void LcdDrawClr(uint8_t Bw) {
  uint16_t Idx = 0;
  
  Bw = Bw ? 0xFF : 0x00;
  for(Idx = 0; Idx < LCD_PHY_WIDTH * LCD_PHY_PAGES; Idx++){
    LcdDispImg[Idx] = Bw;
  }
//memset(LcdDispImg, Bw, sizeof(LcdDispImg));  
  for(Idx = 0; Idx < LCD_PHY_WIDTH; Idx++){
    LcdDispBuf[Idx] = 0xFF;
  }

//memset(LcdDispBuf, 0xFF, sizeof(LcdDispBuf));
}
//**************************************************************************************************
void LcdDrawPixelXY(uint16_t x, uint16_t y, uint16_t color) {
  LcdXpos = x;
  LcdYpos = y;
  LcdDrawPixel(color);
}
void LcdDrawHLine(uint16_t x1, uint16_t x2, uint16_t y, uint16_t color) {
  // DIR:Left->Right
  while (x1 <= x2) {
    LcdDrawPixelXY(x1++, y, color);
  }
}
void LcdDrawVLine(uint16_t x, uint16_t y1, uint16_t y2, uint16_t color) {
  // DIR:Up->Down
  while (y1 <= y2) {
    LcdDrawPixelXY(x, y1++, color);
  }
}
void LcdDrawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color) {
  int16_t sRam t = 0;
  int16_t sRam dx = 0, dy = 0, err = 0, steep = 0, ystep = 0;
  
  #define swap(x, y) t = x; x = y; y = t;

  steep = abs(y1 - y0) > abs(x1 - x0);
  if (steep != 0) {
    swap(x0, y0);
    swap(x1, y1);
  }

  if (x0 > x1) {
    swap(x0, x1);
    swap(y0, y1);
  }

  dx = x1 - x0;
  dy = abs(y1 - y0);
  err = dx / 2;

  if (y0 < y1) {
    ystep = 1;
  } else {
    ystep = -1;
  }

  for (; x0 <= x1; x0++) {
    if (steep) {
      LcdDrawPixelXY(y0, x0, color);
    } else {
      LcdDrawPixelXY(x0, y0, color);
    }

    err -= dy;
    if (err < 0) {
      y0 += ystep;
      err += dx;
    }
  }
}
void LcdDrawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color) {
  uint16_t sRam y = 0;
	while (x0 <= x1) {
    for (y = y0; y <= y1; y++) {
      LcdDrawPixelXY(x0, y, color);
    }
    x0++;
  }
}
//**************************************************************************************************
void LcdDrawBmpToArray(uint16_t x, uint16_t y, uint8_t *pImageDat) {
  // 为了节约资源, 将图片长宽都 限定于0xFFFF内,数据最大64K
  uint8_t sRam iPix = 0, uPixDat = 0;
  uint16_t sRam iWidth = 0, iHeight = 0;
  
  uint16_t sRam iDat = (uint16_t)pImageDat[0x0A];
  uint16_t sRam iImgWidth = ((uint16_t)(*(pImageDat + 0x13)) << 8)|((uint16_t)(*(pImageDat + 0x12)));
  uint16_t sRam iImgHeight = ((uint16_t)(*(pImageDat + 0x17)) << 8)|((uint16_t)(*(pImageDat + 0x16)));
  
  //BIT:MSB -> LSB, DIR:Left->Right
  LcdDrawStart(x, y, x + iImgWidth - 1, y + iImgHeight - 1, DRAW_SWNE);

  if (pImageDat[0x1C] == 1) {
    for (iHeight = 0; iHeight < iImgHeight; iHeight++) {
      for (iWidth = iPix = 0; iWidth < iImgWidth; iWidth++) {
        if (iPix == 0) {
          uPixDat = pImageDat[iDat++];
          iPix = 0x80;
        }
        LcdDrawPixel(uPixDat & iPix);
        iPix >>= 1;
      }

      iWidth = (iWidth + 7) / 8;
      while (iWidth % 4) {
        uPixDat = pImageDat[iDat++];
        iWidth++;
      }
    }
  }

  if (pImageDat[0x1C] == 8) {
    for (iHeight = 0; iHeight < iImgHeight; iHeight++) {
      for (iWidth = 0; iWidth < iImgWidth; iWidth++) {
        LcdDrawPixel(pImageDat[iDat++]);
      }
    }
  }
}
void LcdDrawGeChar(uint16_t x, uint16_t y, uint8_t width, uint8_t yOffset, uint8_t height, uint8_t *pImageDat) {
  uint8_t sRam i = 0;
  uint32_t sRam mDat = 0;

  for (i = 0; i < width; i++) {
    if (height > 8) {
      mDat = (((uint32_t)pImageDat[i + width] << 8) | pImageDat[i]) << yOffset;
    }else {
      mDat = pImageDat[i] << yOffset;
    }
    if (LcdBw) {
      mDat = ~mDat;
    }
    LcdDrawHzLine(x + i, y, mDat, height);
  }
}
//**************************************************************************************************
void LcdDrawAscChar(uint16_t x, uint16_t y, uint8_t iAsc) {
  uint8_t sRam iDatLine = 0;
  uint16_t sRam cDatLine = 0;

  uint8_t * sRam pBmpAscChar = AscFontTableMask + (uint16_t) iAsc * 6;

  for (iDatLine = 0; iDatLine < 6; iDatLine++) {
    cDatLine = pBmpAscChar[iDatLine] << 3;
    if (LcdBw) {
      cDatLine = ~cDatLine;
    }
    LcdDrawHzLine(x + iDatLine, y, cDatLine, 11);
  }
}
void LcdDrawChsChar(uint16_t x, uint16_t y, uint16_t iChs) {
  uint16_t sRam i = 0;
  uint16_t sRam iChsTmp = 0, cDatLine = 0;
  
  uint8_t * sRam pBmpChsChar = NULL;

  for (i = 0; i < CHSSUM; i++) {
    iChsTmp = ((uint16_t) ChsFontTableMask[i * 26 + 1] << 8) + ChsFontTableMask[i * 26];
    if (iChsTmp == iChs)
      break;
  }
  pBmpChsChar = ChsFontTableMask + i * 26 + 2;

  for (i = 0; i < 12; i++) {
    uint16_t cDatLine = ((uint16_t) pBmpChsChar[i + 12] << 8) | pBmpChsChar[i];
    cDatLine = cDatLine << 1;
    if (LcdBw)
      cDatLine = ~cDatLine;
    LcdDrawHzLine(x + i, y, cDatLine, 16);
  }
}
uint16_t LcdDrawTextString(uint16_t x, uint16_t y, uString AscText) {
  while (*AscText) {
    if (*AscText > '~') {
      LcdDrawChsChar(x, y, *(uint16_t*) AscText);
      x += 12;
      AscText += 2;
    } else {
      LcdDrawAscChar(x, y, *AscText);
      x += 6;
      AscText += 1;
    }
  }
  return x;
}
//**************************************************************************************************
//**************************************************************************************************
/////////////////////////////////////////////
// 标准数字显示函数
// x,y   以左上角为基点的坐标，单位是像素
// value 要显示的整数
// n     显示几位，n=0时自动计算位数
// dot   显示小数点后几位数字，为0则不显示小数点
// plus  在value为正数时是否显示+号，不论是否显示，都会预留符号的宽度，要想不要符号宽度，需令plus=0xff   0 不现实正符
// ar    为0时左对齐，为1时右对齐输出
void LcdDrawInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar)
{
  int16_t sRam ValueTmp, mask;
  uint8_t sRam w, i, sz, minus = ' ';

  if(value < 0){
    minus = '-';
    value = -value;
  }else if(value > 0){
   if(plus) minus = '+';
  }

  ValueTmp = value;
  if(n == 0) for(n = 0; ValueTmp; n++, ValueTmp /= 10);
  if(n <= dot) n = dot+1;

  w = n*6;
  if(dot != 0) w += 6;
  if(plus != 0xff)  w += 6;

  mask = 1;
  for(i = 0; i < n-1; i++) mask *= 10;

  if(ar) x -= w;

  if(plus != 0xff){
    LcdDrawAscChar(x, y, minus);
    x += 6;
  }

  sz = 0;
  for(i = 0; i < n; i++){
    ValueTmp = value/mask%10;
    if(i == n-1) sz = 1;
    if(i == (n-1-dot)&&dot){
      sz = 1;
      LcdDrawAscChar(x, y, ValueTmp+'0');  x += 6;
      LcdDrawAscChar(x, y, '.');  x += 6;
    }else{
      if(ValueTmp) sz = 1;
      else if(!sz) ValueTmp = ' '-'0';

      LcdDrawAscChar(x, y, ValueTmp + '0');
      x += 6;
    }
    mask /= 10;
  }
}
//**************************************************************************************************
void LcdDrawMiniBmp(uint16_t x, uint16_t y, uint8_t iTab)
{
  uint8_t sRam i = 0;
  for(i = 0; i < 4; i++){
    LcdDrawMaskY(x+i, y, MinFontTableMask[iTab][i], 5);
  }
}
void LcdDrawMiniAsc(uint16_t x, uint16_t y, uint8_t *pAsc)
{
  while(*pAsc){
    char c = *pAsc;
    if(c >= 'a'&&c <= 'z') c = c-'a'+'A';

    if(c >= 'A'&&c <= 'Z') LcdDrawMiniBmp(x, y, LCD_MN_CHAR(c));
    else if(c >= '0'&&c <= '9') LcdDrawMiniBmp(x, y, c-'0');
    else if(c==' ') LcdDrawMiniBmp(x, y, LCD_MN_SP);
    else LcdDrawMiniBmp(x, y, c);

    pAsc++; x += 4;
  }
}
/////////////////////////////////////////////
// 标准数字显示函数
// x,y   以左上角为基点的坐标，单位是像素
// value 要显示的整数
// n     显示几位，n=0时自动计算位数
// dot   显示小数点后几位数字，为0则不显示小数点
// plus  在value为正数时是否显示+号，不论是否显示，都会预留符号的宽度，要想不要符号宽度，需令plus=0xff   0 不现实正符
// ar    为0时左对齐，为1时右对齐输出
void LcdDrawMiniInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar)
{
  int16_t sRam ValueTmp = 0, mask = 0;
  uint8_t sRam w = 0, sz = 0, i = 0, minus = LCD_MN_SP;

  if(value < 0){
    minus = LCD_MN_MINUS;
    value = -value;
  }else if(value > 0){
    if(plus) minus = LCD_MN_PLUS;
  }

  ValueTmp = value;
  if(n == 0) for(n = 0; ValueTmp; n++, ValueTmp /= 10);
  if(n <= dot) n = dot+1;

  w = n*4;
  if(dot != 0) w += 2;
  if(plus != 0xFF) w += 4;

  mask = 1;
  for(i = 0; i < n-1; i++) mask *= 10;

  if(ar) x -= w;

  if(plus != 0xff){
    LcdDrawMiniBmp(x, y, minus); x += 4;
  }

  for(i = 0; i < n; i++){
    ValueTmp = value/mask%10;
    if(i == n-1){
      sz = 1;
    }
    if(i == (n-1-dot)&&dot){
      sz = 1;
      LcdDrawMiniBmp(x, y, ValueTmp); x += 4;
      LcdDrawMiniBmp(x, y, LCD_MN_DOT); x += 2;
    }else{
      if(ValueTmp){
        sz = 1;
      }else if(!sz){
        ValueTmp = LCD_MN_SP;
      }
      LcdDrawMiniBmp(x, y, ValueTmp);
      x += 4;
    }
    mask /= 10;
  }
}
