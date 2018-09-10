#ifndef __APPDEF_H
#define __APPDEF_H

#include "TypeDef.h"

typedef enum{
  LNG_CHS = 0x00,
  LNG_ENG = 0x01,
}LngDef, LngTypeDef;

typedef struct{   
	int16_t Mark;					                      
  
  int16_t Version;                            // 
                     
  int16_t LightSw;                            // 
  int16_t LightTim;			                      // 
	int16_t Contrast;			                      // 
 
  int16_t Language;			                      // 
}TxSysDef, TxSysTypeDef;


#endif
