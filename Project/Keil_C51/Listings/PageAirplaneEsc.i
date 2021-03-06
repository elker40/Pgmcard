
#line 1 "..\..\SrcCode\Middle\Gui\Page\PageAirplaneEsc.c" /0
  
#line 1 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
 
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\AppDef.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
 
 
  
#line 1 "..\..\SdkTool\Si8051Base\Stdint.h" /0




 
 
 
 
 
 
 
 typedef unsigned char			uint8_t;
 typedef unsigned short 		uint16_t;
 typedef unsigned long 		uint32_t;
 typedef uint32_t 					uint64_t[2];
 
 typedef signed char 			int8_t;
 typedef short 						int16_t;
 typedef long 							int32_t;
 typedef int32_t 					int64_t[2];
 
 
 
 
#line 4 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\CurWsp\ProgramCard\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0




 
 
 
 
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdint.h" /0




 
 
 
#line 8 "..\..\SdkTool\Si8051Base\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 10 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0
#line 10 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdbool.h" /0




 
 
 
 
 
 
 
 typedef bit bool;
 enum{
 false = 0,
 true = 1,
 };
 
 
 
 
#line 11 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0
 
 





















































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









 
 
 










 
 
 










 
 
 
 













 
 
 



















 
 

 














 
 
 


















 
 
 






































 
 

 
















 
 

 





























 
 
 



























 
 

 






























 
 

 





























 
 
 





























 
 

 
 
 
#line 442 "..\..\SdkTool\Si8051Base\si_toolchain.h" /1
  
  
  
  
 
  
  
 
 
  
  
  
  
  
 
#line 457 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef union SI_UU16
 {
 uint16_t u16;    
 int16_t s16;     
 uint8_t u8[2];   
 int8_t s8[2];    
 } SI_UU16_t;
 
 
 
 
 typedef union SI_UU32
 {
 uint32_t u32;        
 int32_t s32;         
 SI_UU16_t uu16[2];   
 uint16_t u16[2];     
 int16_t s16[2];      
 uint8_t u8[4];       
 int8_t s8[4];        
 } SI_UU32_t;
 
 
 
 
 
 
 
 
 
 
 
 typedef struct
 {
 uint8_t memtype;     
 SI_UU16_t address;   
 } GPTR_t;
 
 
 
 
 typedef union SI_GEN_PTR
 {
 uint8_t u8[3];     
 GPTR_t gptr;       
 } SI_GEN_PTR_t;
 
 
 extern void _nop_(void);
 
 
 
 
 
 
 
 
#line 527 "..\..\SdkTool\Si8051Base\si_toolchain.h" /1
 
 
 
  
  
  
  
  
  
  
 
 
 
 
  
  
  
 
 
 
  
  
  
  
  

  

  
  

  

  
  

 
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
#line 604 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0
 
 
 
 
#line 20 "\CurWsp\ProgramCard\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
  sfr ACC = 0xE0;  
  sfr ADC0CF = 0xBC;  
  sfr ADC0CN0 = 0xE8;  
  sfr ADC0GTH = 0xC4;  
  sfr ADC0GTL = 0xC3;  
  sfr ADC0H = 0xBE;  
  sfr ADC0L = 0xBD;  
  sfr ADC0LTH = 0xC6;  
  sfr ADC0LTL = 0xC5;  
  sfr AMX0N = 0xBA;  
  sfr AMX0P = 0xBB;  
  sfr B = 0xF0;  
  sfr CKCON0 = 0x8E;  
  sfr CKCON1 = 0xE4;  
  sfr CLKSEL = 0xA9;  
  sfr CMP0CN0 = 0x9B;  
  sfr CMP0MD = 0x9D;  
  sfr CMP0MX = 0x9F;  
  sfr CMP1CN0 = 0x9A;  
  sfr CMP1MD = 0x9C;  
  sfr CMP1MX = 0x9E;  
  sfr DPH = 0x83;  
  sfr DPL = 0x82;  
  sfr EIE1 = 0xE6;  
  sfr EIE2 = 0xE7;  
  sfr EIP1 = 0xF6;  
  sfr EIP2 = 0xF7;  
  sfr EMI0CF = 0x85;  
  sfr EMI0CN = 0xAA;  
  sfr EMI0TC = 0x84;  
  sfr FLKEY = 0xB7;  
  sfr FLSCL = 0xB6;  
  sfr HFO0CAL = 0xB3;  
  sfr HFO0CN = 0xB2;  
  sfr IE = 0xA8;  
  sfr IP = 0xB8;  
  sfr IT01CF = 0xE4;  
  sfr LFO0CN = 0x86;  
  sfr P0 = 0x80;  
  sfr P0MDIN = 0xF1;  
  sfr P0MDOUT = 0xA4;  
  sfr P0SKIP = 0xD4;  
  sfr P1 = 0x90;  
  sfr P1MDIN = 0xF2;  
  sfr P1MDOUT = 0xA5;  
  sfr P1SKIP = 0xD5;  
  sfr P2 = 0xA0;  
  sfr P2MDIN = 0xF3;  
  sfr P2MDOUT = 0xA6;  
  sfr P2SKIP = 0xD6;  
  sfr P3 = 0xB0;  
  sfr P3MDIN = 0xF4;  
  sfr P3MDOUT = 0xA7;  
  sfr P3SKIP = 0xDF;  
  sfr P4 = 0xC7;  
  sfr P4MDIN = 0xF5;  
  sfr P4MDOUT = 0xAE;  
  sfr PCA0CN0 = 0xD8;  
  sfr PCA0CPH0 = 0xFC;  
  sfr PCA0CPH1 = 0xEA;  
  sfr PCA0CPH2 = 0xEC;  
  sfr PCA0CPH3 = 0xEE;  
  sfr PCA0CPH4 = 0xFE;  
  sfr PCA0CPL0 = 0xFB;  
  sfr PCA0CPL1 = 0xE9;  
  sfr PCA0CPL2 = 0xEB;  
  sfr PCA0CPL3 = 0xED;  
  sfr PCA0CPL4 = 0xFD;  
  sfr PCA0CPM0 = 0xDA;  
  sfr PCA0CPM1 = 0xDB;  
  sfr PCA0CPM2 = 0xDC;  
  sfr PCA0CPM3 = 0xDD;  
  sfr PCA0CPM4 = 0xDE;  
  sfr PCA0H = 0xFA;  
  sfr PCA0L = 0xF9;  
  sfr PCA0MD = 0xD9;  
  sfr PCON0 = 0x87;  
  sfr PFE0CN = 0xAF;  
  sfr PSCTL = 0x8F;  
  sfr PSW = 0xD0;  
  sfr REF0CN = 0xD1;  
  sfr REG01CN = 0xC9;  
  sfr RSTSRC = 0xEF;  
  sfr SBCON1 = 0xAC;  
  sfr SBRLH1 = 0xB5;  
  sfr SBRLL1 = 0xB4;  
  sfr SBUF0 = 0x99;  
  sfr SBUF1 = 0xD3;  
  sfr SCON0 = 0x98;  
  sfr SCON1 = 0xD2;  
  sfr SFRPAGE = 0xBF;  
  sfr SMB0ADM = 0xCE;  
  sfr SMB0ADR = 0xCF;  
  sfr SMB0CF = 0xC1;  
  sfr SMB0CN0 = 0xC0;  
  sfr SMB0DAT = 0xC2;  
  sfr SMB1ADM = 0xCE;  
  sfr SMB1ADR = 0xCF;  
  sfr SMB1CF = 0xC1;  
  sfr SMB1CN0 = 0xC0;  
  sfr SMB1DAT = 0xC2;  
  sfr SMBTC = 0xB9;  
  sfr SMOD1 = 0xE5;  
  sfr SP = 0x81;  
  sfr SPI0CFG = 0xA1;  
  sfr SPI0CKR = 0xA2;  
  sfr SPI0CN0 = 0xF8;  
  sfr SPI0DAT = 0xA3;  
  sfr TCON = 0x88;  
  sfr TH0 = 0x8C;  
  sfr TH1 = 0x8D;  
  sfr TL0 = 0x8A;  
  sfr TL1 = 0x8B;  
  sfr TMOD = 0x89;  
  sfr TMR2CN0 = 0xC8;  
  sfr TMR2H = 0xCD;  
  sfr TMR2L = 0xCC;  
  sfr TMR2RLH = 0xCB;  
  sfr TMR2RLL = 0xCA;  
  sfr TMR3CN0 = 0x91;  
  sfr TMR3H = 0x95;  
  sfr TMR3L = 0x94;  
  sfr TMR3RLH = 0x93;  
  sfr TMR3RLL = 0x92;  
  sfr TMR4CN0 = 0x91;  
  sfr TMR4H = 0x95;  
  sfr TMR4L = 0x94;  
  sfr TMR4RLH = 0x93;  
  sfr TMR4RLL = 0x92;  
  sfr TMR5CN0 = 0xC8;  
  sfr TMR5H = 0xCD;  
  sfr TMR5L = 0xCC;  
  sfr TMR5RLH = 0xCB;  
  sfr TMR5RLL = 0xCA;  
  sfr USB0ADR = 0x96;  
  sfr USB0DAT = 0x97;  
  sfr USB0XCN = 0xD7;  
  sfr VDM0CN = 0xFF;  
  sfr XBR0 = 0xE1;  
  sfr XBR1 = 0xE2;  
  sfr XBR2 = 0xE3;  
  sfr XOSC0CN = 0xB1;  
 
 
 
 
  sfr16 ADC0GT = 0xC3;  
  sfr16 ADC0 = 0xBD;  
  sfr16 ADC0LT = 0xC5;  
  sfr16 DP = 0x82;  
  sfr16 PCA0CP0 = 0xFB;  
  sfr16 PCA0CP1 = 0xE9;  
  sfr16 PCA0CP2 = 0xEB;  
  sfr16 PCA0CP3 = 0xED;  
  sfr16 PCA0CP4 = 0xFD;  
  sfr16 PCA0 = 0xF9;  
  sfr16 SBRL1 = 0xB4;  
  sfr16 TMR2 = 0xCC;  
  sfr16 TMR2RL = 0xCA;  
  sfr16 TMR3 = 0x94;  
  sfr16 TMR3RL = 0x92;  
  sfr16 TMR4 = 0x94;  
  sfr16 TMR4RL = 0x92;  
  sfr16 TMR5 = 0xCC;  
  sfr16 TMR5RL = 0xCA;  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  sbit ACC_ACC0 = 0xE0^0;  
  sbit ACC_ACC1 = 0xE0^1;  
  sbit ACC_ACC2 = 0xE0^2;  
  sbit ACC_ACC3 = 0xE0^3;  
  sbit ACC_ACC4 = 0xE0^4;  
  sbit ACC_ACC5 = 0xE0^5;  
  sbit ACC_ACC6 = 0xE0^6;  
  sbit ACC_ACC7 = 0xE0^7;  
 
 
 
  sbit ADC0CN0_ADCM0 = 0xE8^0;  
  sbit ADC0CN0_ADCM1 = 0xE8^1;  
  sbit ADC0CN0_ADCM2 = 0xE8^2;  
  sbit ADC0CN0_ADWINT = 0xE8^3;  
  sbit ADC0CN0_ADBUSY = 0xE8^4;  
  sbit ADC0CN0_ADINT = 0xE8^5;  
  sbit ADC0CN0_ADTM = 0xE8^6;  
  sbit ADC0CN0_ADEN = 0xE8^7;  
 
 
 
  sbit B_B0 = 0xF0^0;  
  sbit B_B1 = 0xF0^1;  
  sbit B_B2 = 0xF0^2;  
  sbit B_B3 = 0xF0^3;  
  sbit B_B4 = 0xF0^4;  
  sbit B_B5 = 0xF0^5;  
  sbit B_B6 = 0xF0^6;  
  sbit B_B7 = 0xF0^7;  
 
 
 
  sbit IE_EX0 = 0xA8^0;  
  sbit IE_ET0 = 0xA8^1;  
  sbit IE_EX1 = 0xA8^2;  
  sbit IE_ET1 = 0xA8^3;  
  sbit IE_ES0 = 0xA8^4;  
  sbit IE_ET2 = 0xA8^5;  
  sbit IE_ESPI0 = 0xA8^6;  
  sbit IE_EA = 0xA8^7;  
 
 
 
  sbit IP_PX0 = 0xB8^0;  
  sbit IP_PT0 = 0xB8^1;  
  sbit IP_PX1 = 0xB8^2;  
  sbit IP_PT1 = 0xB8^3;  
  sbit IP_PS0 = 0xB8^4;  
  sbit IP_PT2 = 0xB8^5;  
  sbit IP_PSPI0 = 0xB8^6;  
 
 
 
  sbit P0_B0 = 0x80^0;  
  sbit P0_B1 = 0x80^1;  
  sbit P0_B2 = 0x80^2;  
  sbit P0_B3 = 0x80^3;  
  sbit P0_B4 = 0x80^4;  
  sbit P0_B5 = 0x80^5;  
  sbit P0_B6 = 0x80^6;  
  sbit P0_B7 = 0x80^7;  
 
 
 
  sbit P1_B0 = 0x90^0;  
  sbit P1_B1 = 0x90^1;  
  sbit P1_B2 = 0x90^2;  
  sbit P1_B3 = 0x90^3;  
  sbit P1_B4 = 0x90^4;  
  sbit P1_B5 = 0x90^5;  
  sbit P1_B6 = 0x90^6;  
  sbit P1_B7 = 0x90^7;  
 
 
 
  sbit P2_B0 = 0xA0^0;  
  sbit P2_B1 = 0xA0^1;  
  sbit P2_B2 = 0xA0^2;  
  sbit P2_B3 = 0xA0^3;  
  sbit P2_B4 = 0xA0^4;  
  sbit P2_B5 = 0xA0^5;  
  sbit P2_B6 = 0xA0^6;  
  sbit P2_B7 = 0xA0^7;  
 
 
 
  sbit P3_B0 = 0xB0^0;  
  sbit P3_B1 = 0xB0^1;  
  sbit P3_B2 = 0xB0^2;  
  sbit P3_B3 = 0xB0^3;  
  sbit P3_B4 = 0xB0^4;  
  sbit P3_B5 = 0xB0^5;  
  sbit P3_B6 = 0xB0^6;  
  sbit P3_B7 = 0xB0^7;  
 
 
 
  sbit PCA0CN0_CCF0 = 0xD8^0;  
  sbit PCA0CN0_CCF1 = 0xD8^1;  
  sbit PCA0CN0_CCF2 = 0xD8^2;  
  sbit PCA0CN0_CCF3 = 0xD8^3;  
  sbit PCA0CN0_CCF4 = 0xD8^4;  
  sbit PCA0CN0_CR = 0xD8^6;  
  sbit PCA0CN0_CF = 0xD8^7;  
 
 
 
  sbit PSW_PARITY = 0xD0^0;  
  sbit PSW_F1 = 0xD0^1;  
  sbit PSW_OV = 0xD0^2;  
  sbit PSW_RS0 = 0xD0^3;  
  sbit PSW_RS1 = 0xD0^4;  
  sbit PSW_F0 = 0xD0^5;  
  sbit PSW_AC = 0xD0^6;  
  sbit PSW_CY = 0xD0^7;  
 
 
 
  sbit SCON0_RI = 0x98^0;  
  sbit SCON0_TI = 0x98^1;  
  sbit SCON0_RB8 = 0x98^2;  
  sbit SCON0_TB8 = 0x98^3;  
  sbit SCON0_REN = 0x98^4;  
  sbit SCON0_MCE = 0x98^5;  
  sbit SCON0_SMODE = 0x98^7;  
 
 
 
  sbit SMB0CN0_SI = 0xC0^0;  
  sbit SMB0CN0_ACK = 0xC0^1;  
  sbit SMB0CN0_ARBLOST = 0xC0^2;  
  sbit SMB0CN0_ACKRQ = 0xC0^3;  
  sbit SMB0CN0_STO = 0xC0^4;  
  sbit SMB0CN0_STA = 0xC0^5;  
  sbit SMB0CN0_TXMODE = 0xC0^6;  
  sbit SMB0CN0_MASTER = 0xC0^7;  
 
 
 
  sbit SMB1CN0_SI = 0xC0^0;  
  sbit SMB1CN0_ACK = 0xC0^1;  
  sbit SMB1CN0_ARBLOST = 0xC0^2;  
  sbit SMB1CN0_ACKRQ = 0xC0^3;  
  sbit SMB1CN0_STO = 0xC0^4;  
  sbit SMB1CN0_STA = 0xC0^5;  
  sbit SMB1CN0_TXMODE = 0xC0^6;  
  sbit SMB1CN0_MASTER = 0xC0^7;  
 
 
 
  sbit SPI0CN0_SPIEN = 0xF8^0;  
  sbit SPI0CN0_TXBMT = 0xF8^1;  
  sbit SPI0CN0_NSSMD0 = 0xF8^2;  
  sbit SPI0CN0_NSSMD1 = 0xF8^3;  
  sbit SPI0CN0_RXOVRN = 0xF8^4;  
  sbit SPI0CN0_MODF = 0xF8^5;  
  sbit SPI0CN0_WCOL = 0xF8^6;  
  sbit SPI0CN0_SPIF = 0xF8^7;  
 
 
 
  sbit TCON_IT0 = 0x88^0;  
  sbit TCON_IE0 = 0x88^1;  
  sbit TCON_IT1 = 0x88^2;  
  sbit TCON_IE1 = 0x88^3;  
  sbit TCON_TR0 = 0x88^4;  
  sbit TCON_TF0 = 0x88^5;  
  sbit TCON_TR1 = 0x88^6;  
  sbit TCON_TF1 = 0x88^7;  
 
 
 
  sbit TMR2CN0_T2XCLK = 0xC8^0;  
  sbit TMR2CN0_T2CSS = 0xC8^1;  
  sbit TMR2CN0_TR2 = 0xC8^2;  
  sbit TMR2CN0_T2SPLIT = 0xC8^3;  
  sbit TMR2CN0_TF2CEN = 0xC8^4;  
  sbit TMR2CN0_TF2LEN = 0xC8^5;  
  sbit TMR2CN0_TF2L = 0xC8^6;  
  sbit TMR2CN0_TF2H = 0xC8^7;  
 
 
 
  sbit TMR5CN0_T5XCLK = 0xC8^0;  
  sbit TMR5CN0_TR5 = 0xC8^2;  
  sbit TMR5CN0_T5SPLIT = 0xC8^3;  
  sbit TMR5CN0_TF5LEN = 0xC8^5;  
  sbit TMR5CN0_TF5L = 0xC8^6;  
  sbit TMR5CN0_TF5H = 0xC8^7;  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 453 "\CurWsp\ProgramCard\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /1
 
 
 
 
#line 457 "\CurWsp\ProgramCard\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
#line 21 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 5 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
 
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\Limits.h" /0







 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 8 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
 
 
 typedef       	signed char   sChar;
 typedef       unsigned char   uChar;
 typedef         signed char   sChar_t;
 typedef       unsigned char   uChar_t;
 
 typedef         signed char* 	sString;
 typedef       unsigned char* 	uString;
 typedef         signed char* 	sString_t;
 typedef       unsigned char* 	uString_t;
 
 typedef       	signed char*  STR;
 typedef const   signed char*  CSTR;
 
 typedef         signed char*  AscString;
 typedef const   signed char*  CAscString;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void SysHandleProcess(uint8_t HandleCfg);
 void mSleep(uint8_t mTim);
 
 
#line 4 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\AppDef.h" /0
 
 
 typedef enum{
 LNG_CHS = 0x00,
 LNG_ENG = 0x01,
 }LngDef, LngTypeDef;
 
 typedef struct{   
 int16_t Mark;					                      
 
 int16_t Version;                             
 
 int16_t LightSw;                             
 int16_t LightTim;			                       
 int16_t Contrast;			                       
 
 int16_t Language;			                       
 }TxSysDef, TxSysTypeDef;
 
 
 
#line 4 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
 
 
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Bsp\Inc\TypeDef.h" /0
 
#line 2 "\CurWsp\ProgramCard\SrcCode\Bsp\Inc\TypeDef.h" /1
  
 
  
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
  
  
 
  
  
 
  
  
  
  
  
 
  
  
 
 
 
 
 
#line 5 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
#line 5 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
 
 
  sbit LCD_RS = 0x80^2;
  sbit LCD_RST = 0x90^3;
 
  sbit LCD_CS = 0x80^6;
  sbit LCD_SCK = 0x80^3;
  sbit LCD_SDA = 0x80^5;
 
 
  sbit BtnEntGpio = 0x80^0;
  sbit BtnExtGpio = 0x80^1;
 
  sbit BtnUpGpio = 0x90^4;
  sbit BtnDwGpio = 0x90^5;
 
  sbit BebugPin0 = 0x90^6;           
  sbit BebugPin1 = 0xA0^0;           
 
 
  sbit RC_OUT = 0x80^4;           
 
 
 
 
#line 5 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Debug.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
#line 2 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /1
  
 
  
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
  
  
 
  
  
 
  
  
  
  
  
 
  
  
 
 
 
 
 
#line 4 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Debug.h" /0
#line 4 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Debug.h" /0
 
 
 extern void DebugMessage(uString StrText);
 
 extern void DebugTxByte(uint8_t u8Byte);
 extern void DebugTxDate(uint8_t *pTxBuffer, uint8_t TxSize);
 
 
#line 12 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Debug.h" /1
 






 
  
 
 
 
#line 24 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Debug.h" /0
 
 
 
 
#line 6 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Esc.h" /0
 
 
 
 
 
 extern void EscDetect(void);
 
 
 
#line 8 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Stablizer.h" /0
 
 
 
 
 
 
 extern void StablizerProcessHandle(void);
 extern void StablizerDatInit(void);
 extern void StablizerDetect(void);
 
 
#line 9 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Logic\Inc\Battery.h" /0
 
 
 
 extern void LipoCellsProcessHandle(void);
 extern void LipoCellsDatInit(void);
 extern void LipoCellsDetect(void);
 
 
#line 10 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern TxSysDef  TxSys;
 
 extern uint8_t  Tick500msFlag;
 
 extern uint16_t  SysTaskHandle;
 extern uint16_t  TickCnt1ms;
 
 extern uint8_t AdcCovOkFlag;
 extern uint8_t AdcCovEnTrigger;
 
 extern uint16_t  SysModuleEnable;
 
 
 extern void SysDatInit(void);
 
 extern void DelayMs(uint16_t mTim);	
 
 extern uint8_t  RxTxStatue;
 extern int16_t  AutoFlyParam[17];
 extern int16_t  EscParam[24];
 extern int16_t  EscTxParam[24];
 
 extern uint16_t  BatVoltage[9];           
 
 
 extern void EscDatInit(void);
 
 extern void EscDebug(void);
 
 
 
 
 
 
 
 
 
 
 
 
 extern uint8_t  PgmStatus;
 
 extern int16_t  EscDatSum, EscDatSumPre; 
 extern uint8_t EscDatCharge(int16_t *pDat, uint8_t DatSize);
 
 
#line 4 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdDraw.h" /0
 
 
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
 








 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\String.h" /0






 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 
#line 18 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\String.h" /1
  
 
#line 20 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\String.h" /0
 
 #pragma SAVE
 #pragma REGPARMS
 extern char *strcat (char *s1, char *s2);
 extern char *strncat (char *s1, char *s2, int n);
 
 extern char strcmp (char *s1, char *s2);
 extern char strncmp (char *s1, char *s2, int n);
 
 extern char *strcpy (char *s1, char *s2);
 extern char *strncpy (char *s1, char *s2, int n);
 
 extern int strlen (char *);
 
 extern char *strchr (const char *s, char c);
 extern int strpos (const char *s, char c);
 extern char *strrchr (const char *s, char c);
 extern int strrpos (const char *s, char c);
 
 extern int strspn (char *s, char *set);
 extern int strcspn (char *s, char *set);
 extern char *strpbrk (char *s, char *set);
 extern char *strrpbrk (char *s, char *set);
 extern char *strstr  (char *s, char *sub);
 extern char *strtok  (char *str, const char *set);
 
 extern char memcmp (void *s1, void *s2, int n);
 extern void *memcpy (void *s1, void *s2, int n);
 extern void *memchr (void *s, char val, int n);
 extern void *memccpy (void *s1, void *s2, char val, int n);
 extern void *memmove (void *s1, void *s2, int n);
 extern void *memset  (void *s, char val, int n);
 #pragma RESTORE
 
 
#line 12 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
#line 2 "..\..\SrcCode\Bsp\Inc\ReMap.h" /1
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 30 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
#line 13 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
  
#line 1 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
#line 2 "..\..\SrcCode\Logic\Inc\Global.h" /1
  
 
  
  
  
 
  
  
  
 
 
  
  
  
  
  
 
 
  
  
  
 
  
  
 
 
  
  
 
  
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
  
 
 
 
 
 
 
 
 
 
#line 14 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
#line 14 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\PageRes.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /0
 
#line 2 "..\..\SrcCode\Bsp\Inc\TypeDef.h" /1
  
 
  
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
  
  
 
  
  
 
  
  
  
  
  
 
  
  
 
 
 
 
 
#line 4 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\PageRes.h" /0
#line 4 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\PageRes.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern uint8_t code AscFontTableMask[127*6];
 extern uint8_t code ChsFontTableMask[56*26];
 extern uint8_t code MinFontTableMask[50][4];
 
 extern uint8_t code PageMainBmp[1088];
 
 
#line 15 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdDraw.h" /0
 
#line 2 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdDraw.h" /1
  
 
  
  
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 16 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
#line 16 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdBase.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern void Lcd_Init(void);
 
 extern void Lcd_SetPage(uint8_t Page);
 extern void Lcd_SetColumn(uint8_t Column);
 extern void Lcd_SetPageColumn(uint8_t Page, uint8_t Column);
 
 extern void LcdWriteClr(uint8_t Bw);
 extern void LcdWriteDatLine(uint8_t Dat);
 extern void LcdWriteClrline(uint8_t nClr, uint8_t mDat);
 
 extern void LcdWriteAscChar(uint8_t iAsc, uint8_t mBw);
 extern void LcdWriteAscString(uint8_t iPage, uint8_t iColumn, uint8_t mBw, sString pString);
 
 extern void LcdDrawBufferRefresh(void);
 
 
#line 4 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdDraw.h" /0
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\Math.h" /0






 
 
 
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char  cabs  (char  val);
 extern int    abs  (int   val);
 extern long  labs  (long  val);
 extern float fabs  (float val);
 extern float sqrt  (float val);
 extern float exp   (float val);
 extern float log   (float val);
 extern float log10 (float val);
 extern float sin   (float val);
 extern float cos   (float val);
 extern float tan   (float val);
 extern float asin  (float val);
 extern float acos  (float val);
 extern float atan  (float val);
 extern float sinh  (float val);
 extern float cosh  (float val);
 extern float tanh  (float val);
 extern float atan2 (float y, float x);
 
 extern float ceil  (float val);
 extern float floor (float val);
 extern float modf  (float val, float *n);
 extern float fmod  (float x, float y);
 extern float pow   (float x, float y);
 
 #pragma RESTORE
 
 
#line 5 "\CurWsp\ProgramCard\SrcCode\Middle\Gui\Inc\LcdDraw.h" /0
 
 
 
 
 
 extern uint8_t  LcdBw;   
 
 extern void LcdDrawClr(uint8_t Bw);
 
 extern void LcdDrawPixelXY(uint16_t x, uint16_t y, uint16_t color);
 extern void LcdDrawHLine(uint16_t x1, uint16_t x2, uint16_t y, uint16_t color);
 extern void LcdDrawVLine(uint16_t x, uint16_t y1, uint16_t y2, uint16_t color);
 extern void LcdDrawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
 extern void LcdDrawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
 
 extern void LcdDrawBmpToArray(uint16_t x, uint16_t y, uint8_t *pImageDat);
 extern void LcdDrawGeChar(uint16_t x, uint16_t y, uint8_t width, uint8_t yOffset, uint8_t height, uint8_t *pImageDat);
 
 extern void LcdDrawChsChar(uint16_t x, uint16_t y, uint16_t iChs);
 extern void LcdDrawAscChar(uint16_t x, uint16_t y, uint8_t iAsc);
 extern uint16_t LcdDrawTextString(uint16_t x, uint16_t y, uint8_t *pText);
 
 extern void LcdDrawInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar);
 
 extern void LcdDrawMiniBmp(uint16_t x, uint16_t y, uint8_t iTab);
 extern void LcdDrawMiniAsc(uint16_t x, uint16_t y, uint8_t *pAsc);
 extern void LcdDrawMiniInt(uint16_t x, uint16_t y, int16_t value, uint8_t n, uint8_t dot, uint8_t plus, uint8_t ar);
 
 extern void LcdDatInit(void);
 extern void LcdDrawInit(void);
 
 
#line 5 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
 
  
#line 1 "..\..\SrcCode\Middle\Input\Inc\InputBtn.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Logic\Inc\Global.h" /0
 
#line 2 "..\..\SrcCode\Logic\Inc\Global.h" /1
  
 
  
  
  
 
  
  
  
 
 
  
  
  
  
  
 
 
  
  
  
 
  
  
 
 
  
  
 
  
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
  
 
 
 
 
 
 
 
 
 
#line 4 "..\..\SrcCode\Middle\Input\Inc\InputBtn.h" /0
#line 4 "..\..\SrcCode\Middle\Input\Inc\InputBtn.h" /0
 
  
#line 1 "\CurWsp\ProgramCard\SrcCode\Middle\Input\Inc\InputBtnBsp.h" /0
 
 
 
  
#line 1 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
#line 2 "..\..\SrcCode\Bsp\Inc\ReMap.h" /1
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 30 "..\..\SrcCode\Bsp\Inc\ReMap.h" /0
 
#line 4 "\CurWsp\ProgramCard\SrcCode\Middle\Input\Inc\InputBtnBsp.h" /0
 
 
 
 
 
 
 
 
 extern uint8_t BtnGetState(uint8_t IdxBtn);
 
 
#line 5 "..\..\SrcCode\Middle\Input\Inc\InputBtn.h" /0
 
 
 
 
 
 
 
 
 extern void BtnDatInit(void);
 
 extern void BtnScanHandle(void);
 
 extern void BtnFlush(void);
 extern void BtnStopCnt(void);
 extern void BtnClearDown(uint8_t BtnMask);
 extern uint8_t BtnTstStat(uint8_t BtnMask);
 extern uint8_t BtnTstDown(uint8_t BtnMask);
 extern uint8_t BtnTstHold(uint8_t BtnMask);
 
 
#line 6 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
 
  
#line 1 "..\..\SrcCode\Logic\Inc\Stablizer.h" /0
 
#line 2 "..\..\SrcCode\Logic\Inc\Stablizer.h" /1
  
 
  
  
 
 
 
 
 
 
#line 7 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
#line 7 "..\..\SrcCode\Middle\Gui\Inc\Page.h" /0
 
 
 
 
 
 
 typedef enum{
 PD_TITLE  =	0x01,
 PD_LIST	  =	0x02,
 PD_IDX		= 0x04,
 PD_VALUE	= 0x08,
 PD_ALL		= 0xFF,
 }PdDef, PdTypeDef;
 
 typedef enum{
 PV_INIT	  =	0x01,				     
 
 PV_RUN    = 0x02,				     
 PV_END    = 0x04,				     
 PV_REDRAW	= 0x08,				     
 PV_PARAM	=	0x10,            
 }PvInitDef, PvInitTypeDef;
 
 typedef uint8_t (*PageFun)(uint8_t Event);
 
 typedef struct{
 uint8_t     Init;	           
 uint8_t     DrawMask,        
 Focus,          
 Start,          
 Total;           
 uint8_t     ItemEdit; 			 
 }MenuStat, MenuStatDef, MenuStatTypeDef;
 
 typedef struct{
 sString			Title;			   
 PageFun			SubItem;		   
 sString		*	ValueList;		 
 int16_t			Min, Max;		   
 int16_t	 	* pValue;			   
 uint8_t    	Data;			     
 sString			Text;				   
 sString   	ETitle;			   
 }MenuItem, MenuItemDef, MenuItemTypeDef;
 
 
 
 
 
 extern uint8_t  PageStackIdx;
 extern PageFun  PageStack[3];
 
 extern void PageInit(PageFun Page, uint8_t Msg);
 extern void PageGoto(PageFun Page, uint8_t Msg);
 extern void PageEnter(PageFun Page, uint8_t Msg);
 extern void PageReturn(uint8_t Msg);
 
 extern void PageMenuStatDatInit(void);
 
 extern void PageAlertModel(sString Text, uint8_t Delay);
 extern void PageAlert(sString Text, uint8_t Delay, uint8_t Msg);
 
 extern void PageMenuProc(MenuItem *pmi, MenuStat *pms);
 
 extern uint8_t PageMain(uint8_t event);
 
 extern uint8_t PageAutoMobileEsc(uint8_t event);
 extern uint8_t PageAircraftEsc(uint8_t event);
 
 extern uint8_t PageSystem(uint8_t event);
 
 extern uint8_t PageAutoFly(uint8_t event);
 
 extern uint8_t PageAutoFlyMode(uint8_t event);
 extern uint8_t PageAutoFlyYawGain(uint8_t event);
 extern uint8_t PageAutoFlyRollGain(uint8_t event);
 extern uint8_t PageAutoFlyPitchGain(uint8_t event);
 
 extern MenuStat  MainMs;
 
 extern MenuStat  AutoMobileEscMs;
 extern MenuStat  AircraftEscMs;
 
 extern MenuStat  LipoCellsEscMs;
 
 extern MenuStat  AutoFlyMs;
 extern MenuStat  AutoFlyModeMs;
 extern MenuStat  AutoFlyYawGainMs;
 extern MenuStat  AutoFlyRollGainMs;
 extern MenuStat  AutoFlyPitchGainMs;
 
 extern uint8_t PageBatVolt(uint8_t event);
 
 extern MenuStat  SystemMs;
 
 extern void DetectChargeParameter(int16_t *p_data, uint8_t ArraySize);
 
 extern uint8_t PageSkyLordRst(uint8_t event);
 extern uint8_t PageEscError(uint8_t event);
 
 
 
#line 1 "..\..\SrcCode\Middle\Gui\Page\PageAirplaneEsc.c" /0
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\stdio.h" /0






 
 
 
 
 
 
 
 
 
 
#line 17 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\stdio.h" /1
  
 
#line 19 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\stdio.h" /0
 
 
#line 21 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\stdio.h" /1
  
 
 
#line 24 "D:\MyProKits\MucKits\Keil_C51_Rev952\C51\Inc\stdio.h" /0
 
 #pragma SAVE
 #pragma REGPARMS
 extern char _getkey (void);
 extern char getchar (void);
 extern char ungetchar (char);
 extern char putchar (char);
 extern int printf   (const char *, ...);
 extern int sprintf  (char *, const char *, ...);
 extern int vprintf  (const char *, char *);
 extern int vsprintf (char *, const char *, char *);
 extern char *gets (char *, int n);
 extern int scanf (const char *, ...);
 extern int sscanf (char *, const char *, ...);
 extern int puts (const char *);
 
 #pragma RESTORE
 
 
 
#line 2 "..\..\SrcCode\Middle\Gui\Page\PageAirplaneEsc.c" /0
 
 
 
 void SkylordEscDatProccess(void);
 
 MenuStat  AircraftEscMs;
 
 sChar  ShowTextFlightMode[20];
 sChar  ShowTextAirLipoCells[20];
 sChar  ShowTextCutType[20];
 sChar  ShowTextAirCutVoltage[20];
 sChar  ShowTextAirBecVoltage[20];
 sChar  ShowTextStartUpTime[20];
 sChar  ShowTextGovParamP[20];
 sChar  ShowTextGovParamI[20];
 sChar  ShowTextArTime[20];
 sChar  ShowTextArReStartTime[20];
 sChar  ShowTextBrakeType[20];
 sChar  ShowTextBrakeForce[20];
 sChar  ShowTextTiming[20];
 sChar  ShowTextRotateDirection[20];
 sChar  ShowTextActiveFw[20];
 
 MenuItem code MenuItemAircraftEsc[] = { 
 {"Esc",            0,0,0,16,  0,0,0,                                    "Esc"},
 
 {"Mode:",   			 0,0,1,4,   &EscParam[1], 0,ShowTextFlightMode,       "Flight Mode:"},      
 {"Lipo Cells:",    0,0,1,6,   &EscParam[2], 0,ShowTextAirLipoCells,     "Lipo Cells:"},       
 {"CutOff Type:",   0,0,1,2,   &EscParam[3], 0,ShowTextCutType,          "CutOff Type:"},      
 {"CutOff Volt:",   0,0,1,12,  &EscParam[4], 0,ShowTextAirCutVoltage,    "CutOff Voltage:"},   
 {"Bec Volt:",      0,0,1,31,  &EscParam[5], 0,ShowTextAirBecVoltage,    "Bec Voltage:"},      
 {"StartUp Time:",  0,0,1,22,  &EscParam[6], 0,ShowTextStartUpTime,      "StartUp Time:"},     
 {"Gov Param P:",   0,0,1,9,   &EscParam[7], 0,ShowTextGovParamP,        "Gov Param P:"},      
 {"Gov Param I:",   0,0,1,9,   &EscParam[8], 0,ShowTextGovParamI,        "Gov Param I:"},      
 {"Ar Time:",       0,0,1,90,  &EscParam[9], 0,ShowTextArTime,           "Ar Time:"},          
 {"Ar ReStart:",    0,0,1,5,   &EscParam[10],0,ShowTextArReStartTime,    "Ar ReStart:"},       
 {"Brake Type:",    0,0,1,4,   &EscParam[11],0,ShowTextBrakeType,        "Brake Type:"},       
 {"Brake Force:",   0,0,1,100, &EscParam[12],0,ShowTextBrakeForce,       "Brake Force:"},      
 {"Timing:",        0,0,1,5,   &EscParam[13],0,ShowTextTiming,           "Timing:"},           
 {"Rotate Dir:",    0,0,1,2,   &EscParam[14],0,ShowTextRotateDirection,  "Rotate:"},           
 {"Active Fw:",     0,0,1,2,   &EscParam[15],0,ShowTextActiveFw,         "Active Fw:"},        
 
 {"Load Default",   PageSkyLordRst, 0,0,0,   0,0,0,                         "Load Default"},
 };
 
 uint8_t PageAircraftEsc(uint8_t event)
 {
 if(event == PV_INIT){
 LcdDrawClr(0);
 if(!AircraftEscMs.Init){      
 AircraftEscMs.ItemEdit = AircraftEscMs.Focus = AircraftEscMs.Start = 0;
 AircraftEscMs.Init = 1;
 }
 AircraftEscMs.Total = MenuItemAircraftEsc[0].Max;
 AircraftEscMs.DrawMask = PD_ALL;
 return 1;
 }
 
 SkylordEscDatProccess();
 PageMenuProc(MenuItemAircraftEsc, &AircraftEscMs);
 
 if(BtnTstDown(((uint8_t)(0x04)))){
 if(MenuItemAircraftEsc[AircraftEscMs.Focus+1].SubItem){
 PageEnter((PageFun)MenuItemAircraftEsc[AircraftEscMs.Focus+1].SubItem, PV_INIT);
 }else{
 AircraftEscMs.ItemEdit = 1;
 AircraftEscMs.DrawMask |= PD_VALUE;
 }
 }
 if(BtnTstDown(((uint8_t)(0x08)))){
 if(AircraftEscMs.ItemEdit == 1){
 AircraftEscMs.ItemEdit = 0;
 AircraftEscMs.DrawMask |= PD_VALUE;
 }else{
 PageReturn(PV_INIT);
 }
 }
 return 0;
 }
 
 void SkylordEscDatProccess(void)
 {
 uint8_t i;
 
 if(EscDatCharge(EscParam, 24)||(PgmStatus&0x40)){
 if((PgmStatus&0x20) == 0x20){
 PgmStatus |= 0x40;
 }else{
 PgmStatus &= (uint8_t)(~0x40);
 PgmStatus |= (uint8_t)( 0x20);
 
 for(i = 0; i < 24; i++){
 EscTxParam[i] = EscParam[i];
 }      
 
 TH0 = ((0xFFFF+1)-32768)/(0xFF+1);   
 TL0 = ((0xFFFF+1)-32768)%(0xFF+1);
 TCON_TR0 = 1; 
 }
 }  
 
 if(EscParam[1] == 1){
 sprintf(ShowTextFlightMode, "Wing");
 }else if(EscParam[1] == 2){
 sprintf(ShowTextFlightMode, "LineTH");
 }else if(EscParam[1] == 3){
 sprintf(ShowTextFlightMode, "*ElfGov");
 }else if(EscParam[1] == 4){
 sprintf(ShowTextFlightMode, "StoGov");
 }
 
 if(EscParam[2] == 1){ 
 sprintf(ShowTextAirLipoCells, "*Auto");
 }else{  
 sprintf(ShowTextAirLipoCells, "%dS", EscParam[2]);
 }
 
 if(EscParam[3] == 1){ 
 sprintf(ShowTextCutType, "*Soft");
 }else if(EscParam[3] == 2){  
 sprintf(ShowTextCutType, "Hard");
 }
 
 if(EscParam[4] == 1){
 sprintf(ShowTextAirCutVoltage, "Dis");
 }else{		
 if(EscParam[4] == 4){
 sprintf(ShowTextAirCutVoltage,"*%02.1fV", (float)((26+EscParam[4])/10.0));	
 }else{	
 sprintf(ShowTextAirCutVoltage,"%02.1fV", (float)((26+EscParam[4])/10.0));							
 }
 }
 
 if(EscParam[5] == 11){
 sprintf(ShowTextAirBecVoltage,"*%02.1fV", (float)((49+EscParam[5])/10.0));	
 }else{      
 sprintf(ShowTextAirBecVoltage, "%02.1fV", (float)((49+EscParam[5])/10.0));
 }
 
 if(EscParam[6] == 12){
 sprintf(ShowTextStartUpTime, "*%ds", 3+EscParam[6]);	
 }else{      
 sprintf(ShowTextStartUpTime, "%ds", 3+EscParam[6]);						
 }
 
 if(EscParam[7] == 4){
 sprintf(ShowTextGovParamP,"*%d", EscParam[7]);	
 }else{  
 sprintf(ShowTextGovParamP,"%d", EscParam[7]);
 }
 
 if(EscParam[8] == 4){
 sprintf(ShowTextGovParamI,"*%d", EscParam[8]);	
 }else{		
 sprintf(ShowTextGovParamI,"%d", EscParam[8]);
 }
 
 if(EscParam[9] == 26){	
 sprintf(ShowTextArTime,"*%ds", EscParam[9]-1);	
 }else{	  
 sprintf(ShowTextArTime,"%ds", EscParam[9]-1);					
 }				
 
 if(EscParam[10] == 2){   
 sprintf(ShowTextArReStartTime,"*%02.1fs", (float)(EscParam[10]/2.0+0.5));
 }else{
 sprintf(ShowTextArReStartTime,"%02.1fs", (float)(EscParam[10]/2.0+0.5));											
 }
 
 if(EscParam[11] == 1){
 sprintf(ShowTextBrakeType, "Dis");
 }else if(EscParam[11] == 2){
 sprintf(ShowTextBrakeType, "*Nor");
 }else if(EscParam[11] == 3){
 sprintf(ShowTextBrakeType, "Scale ");
 }else	if(EscParam[11] == 4){
 sprintf(ShowTextBrakeType, "Rev");
 }
 
 if(EscParam[12] == 90){   
 sprintf(ShowTextBrakeForce, "*%d%%", EscParam[12]);	
 }else{
 sprintf(ShowTextBrakeForce, "%d%%", EscParam[12]);
 }
 
 if(EscParam[13] == 1){
 sprintf(ShowTextTiming, "0Deg");
 }else if(EscParam[13] == 2){
 sprintf(ShowTextTiming, "7.5Deg");
 }else	if(EscParam[13] == 3){
 sprintf(ShowTextTiming, "*15Deg");
 }else if(EscParam[13] == 4){
 sprintf(ShowTextTiming, "22.5Deg");
 }else	if(EscParam[13] == 5){
 sprintf(ShowTextTiming, "30Deg");
 }
 
 if(EscParam[14] == 1){
 sprintf(ShowTextRotateDirection, "*CW");
 }else	if(EscParam[14] == 2){
 sprintf(ShowTextRotateDirection, "CCW");
 }
 
 if(EscParam[15] == 1){
 sprintf(ShowTextActiveFw, "En");
 }else	if(EscParam[15] == 2){
 sprintf(ShowTextActiveFw, "*Dis");
 } 
 }
