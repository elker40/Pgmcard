#include "Global.h"

#define AdcIntEnable()  ADC0CN0_ADINT = 0x1;        
#define AdcSoftStart()  ADC0CN0_ADBUSY = 0x1;                

int8_t xRam i, IdxChs;
uint32_t xRam AdcValue;
uint16_t xRam AdcVoltage;

uint16_t xRam BatVoltage[9]; 
uint8_t xRam AdcCovOkFlag, AdcCovEnTrigger;

void LipoCellsDatInit(void){
  BatVoltage[0] = 0; BatVoltage[1] = 0; BatVoltage[2] = 0; BatVoltage[3] = 0; 
  BatVoltage[4] = 0; BatVoltage[5] = 0; BatVoltage[6] = 0; BatVoltage[7] = 0; 
  BatVoltage[8] = 0;
  
  IdxChs = 0; 
  AdcCovEnTrigger = 0x1; AdcCovOkFlag = 0x0; 
}

void LipoCellsDetect(void){
  AdcSoftStart();
  while(!AdcCovOkFlag);
  
  if(BatVoltage[0] > 2000&&BatVoltage[0] < 4500){
    SysModuleEnable |= LIPOCELLS_MODULE;
  }
}

void LipoCellsProcessHandle(void){
  if(AdcCovOkFlag == 0x1){
    if(AdcCovEnTrigger != 0x0){ 
      AdcCovEnTrigger = 0; ADC0CN0_ADBUSY = 1;
    } 
  }else{
    // ADC资源过载, ADC处理不过来, 丢掉本次请求
  }
}

void ADC0EOC_ISR(void) interrupt ADC0EOC_IRQn{ 
  ADC0CN0_ADINT = 0;       // Clear ADC0 Conv. Complete Flag
  
  switch(IdxChs){ 
    case 0: AMX0P = AMX0P_AMX0P__ADC0P14; break;  // AD2:GPIO-P27_PIN_3->PIN1  
    case 1: AMX0P = AMX0P_AMX0P__ADC0P13; break;  // AD3:GPIO-P26_PIN_4->PIN1 
    case 2: AMX0P = AMX0P_AMX0P__ADC0P12; break;  // AD4:GPIO-P25_PIN_5->PIN1 
    case 3: AMX0P = AMX0P_AMX0P__ADC0P11; break;  // AD5:GPIO-P24_PIN_6->PIN1 
    case 4: AMX0P = AMX0P_AMX0P__ADC0P10; break;  // AD6:GPIO-P23_PIN_7->PIN1 
    case 5: AMX0P = AMX0P_AMX0P__ADC0P9;  break;  // AD7:GPIO-P22_PIN_8->PIN1
    case 6: AMX0P = AMX0P_AMX0P__ADC0P2;  break;  // AD8:GPIO-P21_PIN_9->PIN1
    case 7: AMX0P = AMX0P_AMX0P__ADC0P15; break;  // AD1:GPIO-P12_PIN_2->PIN1 
  }
  
  AdcValue = ADC0;
  AdcVoltage = (uint16_t)((AdcValue*2500*11)/1024);	

  for(i = IdxChs-1; i >= 0; i--){
    AdcVoltage -= BatVoltage[i];
  }
  if(AdcVoltage > 2000&&AdcVoltage < 4500){			
    BatVoltage[IdxChs] = AdcVoltage;
  }else{ 
    BatVoltage[IdxChs] = 0;
  }      
   
  if(IdxChs < 7){
    IdxChs++;
    ADC0CN0_ADBUSY = 1;
  }else{
    BatVoltage[8] = 0; 
    for(i = 0; i < 8; i++){
      BatVoltage[8] += BatVoltage[i];
    }
    IdxChs = 0;
    AdcCovOkFlag = 0x1;
  }
}
