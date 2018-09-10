#include "Global.h"

uint8_t bRam PgmStatus;
int16_t xRam EscParam[ESC_PARAM_SIZE];
int16_t xRam EscTxParam[ESC_PARAM_SIZE];

uint8_t xRam TxInitPulse;                   // 1:发送初始化脉冲标志
uint8_t xRam RxDataEnable;                  // 1:编程卡从ESC读取数据   0:发送初始化脉冲
uint8_t xRam TxNextDelayCnt;

uint8_t xRam InPulseIdx, OutPulseIdx;
uint16_t cRam InitPulseCnt, DataPulseCnt;

uint8_t cRam PwmOnRef;                  
int16_t cRam PwmOutCnt, PwmOutNum;

#define SetPacGpioPushPull()    TCON_IE0 = 0; IE_EX0 = 0;                               \ 
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                RC_OUT = 0;                                             \
                                P0MDOUT = (P0MDOUT&(~P0MDOUT_B4__BMASK))|P0MDOUT_B4__PUSH_PULL;  \
                                P0MDIN = (P0MDIN&(~P0MDIN_B4__BMASK))|P0MDIN_B4__DIGITAL;  \
																
#define SetPacGpioPeripheral()  P0MDOUT = (P0MDOUT&(~P0MDOUT_B4__BMASK))|P0MDOUT_B4__OPEN_DRAIN;  \
                                P0MDIN = (P0MDIN&(~P0MDIN_B4__BMASK))|P0MDIN_B4__DIGITAL;  \
                                RC_OUT = 1;                                             \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); NOP(); \
                                TCON_IE0 = 0; IE_EX0 = 1; 
//****************************************************************************
void EscDatInit(void){
  uint8_t i;

  PgmStatus = 0x00; 
  for(i = 0; i < ESC_PARAM_SIZE; i++){
    EscParam[i] = 0x0000;
  }
  
  TxInitPulse = 0x1; RxDataEnable = 0x0;
  TxNextDelayCnt = 0x00;
  
  InPulseIdx = 0x01; OutPulseIdx = 0x01;  
  InitPulseCnt = 0x0000; DataPulseCnt = 0x0000;

  PwmOnRef = 0x0; 
  PwmOutCnt = 0x0000; PwmOutNum = 0x0000;
}
//****************************************************************************
void EscDetect(void){	
  uint8_t i;  
  
  // 1.初始化脉冲
  SetPacGpioPushPull();  
  TxInitPulse = 1;
  RxDataEnable = 0; 
           
  //DelayMs(150); 
  TCON_TF0 = 1;
  while(InitPulseCnt < 2); TCON_TR0 = 0;   // T2发出使电调进入编程模式的初始化脉冲，共两组，每组五个脉冲，之后跳出初始化模式。
                    
  // 2.接收电调内部存储参数
  SetPacGpioPeripheral();  
  TxInitPulse = 0;
  RxDataEnable = 1;   
  DelayMs(1200);                          // 等待电调发出编程脉冲		
  
  // 3.进行编程模式
  SetPacGpioPushPull();    
  TxInitPulse = 0;
  RxDataEnable = 0;                       // 超时强制退出接收模式 读数据初始化失败 

	#if 0
		for(i = 1; i < 24; i++){							// 调试数据 
			EscParam[i] = 1;
			EscParam[23] = 3;
		}		
	#endif
  for(i = 1; i < 16; i++){								// 判定外设是不是电调
    if(EscParam[i] != 0) SysModuleEnable |= ESC_MODULE;; 
  }
}                      

//High byte Interrupt (happens every 32.768ms)
void TIMER0_ISR(void) interrupt TIMER0_IRQn{
  TCON_TR0 = 0;   // Disable T0    
	TCON_TF0 = 0;   // Clear T0 Interrupt flag

  if(RxDataEnable){
    EscParam[InPulseIdx] = DataPulseCnt-0x01; 
    if(InPulseIdx == 23){
      RxDataEnable = 0; InPulseIdx = 0;
    }	
    
    InPulseIdx ++;
    DataPulseCnt = 0;
  }else{ // 若为编程阶段，发送编程脉冲
    if(!TxInitPulse){    //若非初始化阶段
      if(OutPulseIdx > 15){
        TxNextDelayCnt++;
        if(TxNextDelayCnt < 20){
          TH0 = ((0xFFFF+1)-50000)/(0xFF+1);    // Timer0 32.768ms中断周期 //128
          TL0 = ((0xFFFF+1)-50000)%(0xFF+1);
          TCON_TR0 = 1;
        }else{
          PwmOutNum = 0x0000; OutPulseIdx = 0x01;
          TxNextDelayCnt = 0x00;
          PgmStatus &= (uint8_t)(~PGM_WRITE_ING);
        }
      }else{
        PwmOutNum = EscTxParam[OutPulseIdx]+0x01;
        OutPulseIdx ++;
        
        TH0 = ((0xFFFF+1)-32768)/(0xFF+1);    // Timer0 32.768ms中断周期 //128
        TL0 = ((0xFFFF+1)-32768)%(0xFF+1);
        TCON_TR0 = 1;
        
        TMR2CN0_TF2H = 0; TMR2CN0_TR2 = 1;    // 启动T2，在其中断中发送脉冲
      }
    }else{
      PwmOutNum = 5;                         // 初始化阶段，脉冲数为5，输出两组，用于与电调建立连接
       
      TH0 = ((0xFFFF+1)-32768)/(0xFF+1);    // Timer0 32.768ms中断周期 //128
      TL0 = ((0xFFFF+1)-32768)%(0xFF+1);
      TCON_TR0 = 1;                         // Enable T0   
      
      TMR2CN0_TF2H = 0; TMR2CN0_TR2 = 1;    // 启动T2，在其中断中发送脉冲
    }
  }
}
// Tim:20us
// 实测25us
void TIMER2_ISR(void) interrupt TIMER2_IRQn {
  TMR2CN0_TF2H = 0;    // Clear T2 Interrupt flag

  if(PwmOutCnt < PwmOutNum){
    if(!PwmOnRef){
      RC_OUT = 1;
      PwmOnRef = 1; 
    }else{     
      RC_OUT = 0;
      PwmOnRef = 0;
      
      PwmOutCnt++;
    }
  }else{
    if(TxInitPulse){    // 若为正常编程阶段，输出对应编程项数目的脉冲序列后，停止T2，等待下一次T0中断启动T2
      InitPulseCnt++;             // 初始化脉冲序列计数加1  
    }
    TMR2CN0_TR2 = 0;
    PwmOutCnt = 0; PwmOutNum = 0;  // 脉冲计数 初始化
  }
}

void INT0_ISR(void) interrupt INT0_IRQn{
  if(RC_OUT == 0x1){
    NOP(); NOP(); NOP(); NOP(); 
    NOP(); NOP(); NOP(); NOP(); NOP();
    if(RC_OUT == 0x1){
      if(TCON_TR0 == 0x0&&RxDataEnable){
        TH0 = ((0xFFFF+1)-20000)/(0xFF+1); 
        TL0 = ((0xFFFF+1)-20000)%(0xFF+1); 
        TCON_TR0 = 0x1;              
      }
      DataPulseCnt++;
    }
  }
}
// Private *****************************************************************************************
int16_t xRam EscDatSum, EscDatSumPre; //static NoInit
uint8_t EscDatCharge(int16_t *pDat, uint8_t DatSize){
  uint8_t i;
  
  EscDatSum = 0;
	for(i = 0; i < DatSize; i++){
		EscDatSum += pDat[i];
	}

	if(EscDatSum != EscDatSumPre){
		EscDatSumPre = EscDatSum;
    return 1;
	}
  return 0;
}
