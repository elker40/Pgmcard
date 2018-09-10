// OSCCLK:48Mhz
// DIVCLK:OSCCLK/1 = 48Mhz
// SYSCLK:DIVCLK/12 = 12Mhz
// TIM0CLK:SYSCLK/12 = 1Mhz   16Bit
// TIM1CLK:SYSCLK/12 = 1Mhz   16Bit 
// TIM2CLK:SYSCLK/12 = 1Mhz   16Bit

void SendByte(uint8_t Byte){
	SBUF1 = Byte;
	while(!(SCON1&SCON1_TI__BMASK)) ;
	SCON1 &= (uint8_t)(~SCON1_TI__BMASK);
}

资源分析
TIM0: 门限时钟
7.936ms    发送数据门限
32.768ms   接收数据门限
TIM1: TickTime
TIM2: 20us

//0 NC
//1
//2
//3
//4
//5
//6
//7
//8
//9
//10
//11
//12
//13
//14
//15

//16 17 ADC_VALUE
//18 19 ADC_VALUE
//20 21 ADC_VALUE

//22 版本号
//23 电调类型

0:NC
1-15:Param
16-17 Min Volt
18-19 Max Tem
20-21 Max Cur
22:Fwwesion
23:Esc Mode

a16=(float)pgmcard_line_num[16];		
a17=(float)pgmcard_line_num[17];
a18=(float)pgmcard_line_num[18];
a19=(float)pgmcard_line_num[19];
a20=(float)pgmcard_line_num[20];
a21=(float)pgmcard_line_num[21];			

a16=(a17*256+a16)/1024*3.3*11;     
a18=((a19*256+a18)*3.3/1024-0.776)*1000/2.86; 
a20=(a21*256+a20)*3.3/1024/10/0.0005/2;  	//发现该值除2后十分接近实际电流值		
sprintf(s,"Min Volt:%02.2fV",a16);
display_string(1,1,s);
sprintf(s,"Max Tem:%02.1fC",a18);
display_string(3,1,s);	
sprintf(s,"Max Cur:%02.2fA",a20);
display_string(5,1,s);

//#include <Ctype.h>
#include "Limits.h"
//#include "intrins.h" 

2016年11月22日11:11:23
1. 修订一个潜在的数据溢出导致的不稳定问题.TickCnt