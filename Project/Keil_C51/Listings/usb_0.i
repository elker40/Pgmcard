
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Src\usb_0.c" /0




 
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0




 
 
 
 
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "..\..\SdkTool\Si8051Base\si_toolchain.h" /0




 
 
 
 
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdint.h" /0




 
 
 
 
 
 
 
 typedef unsigned char			uint8_t;
 typedef unsigned short 		uint16_t;
 typedef unsigned long 		uint32_t;
 typedef uint32_t 					uint64_t[2];
 
 typedef signed char 			int8_t;
 typedef short 						int16_t;
 typedef long 							int32_t;
 typedef int32_t 					int64_t[2];
 
 
 
 
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
 
 
 
 
#line 20 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 453 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /1
 
 
 
 
#line 457 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
#line 21 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 10 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdint.h" /0




 
 
 
#line 8 "..\..\SdkTool\Si8051Base\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
#line 11 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdbool.h" /0




 
 
 
#line 8 "..\..\SdkTool\Si8051Base\stdbool.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
#line 20 "..\..\SdkTool\Si8051Base\stdbool.h" /0
 
#line 12 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 
 


















 
 





 
 
 
 
 








 
 
#line 56 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 58 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 









 
 
#line 77 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 79 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 






 
 










 
 
#line 100 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 102 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 







 
 










 
 
#line 124 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 126 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 







 
 



 
 
#line 141 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 143 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 151 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 153 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 162 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 164 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 172 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 174 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 182 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 184 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 193 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 195 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 






 
 
#line 206 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 208 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 






 
 
#line 219 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 221 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 229 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 231 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 239 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 241 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 






 
 
#line 252 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 254 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 






 
 
#line 265 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 267 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 276 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 278 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 287 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 289 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 297 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 299 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 312 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 314 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 327 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 329 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 342 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 344 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 357 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 359 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 372 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 374 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 387 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 389 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 397 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 399 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 407 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 409 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 418 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 420 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 428 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 430 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 




 
 
#line 440 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 442 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 450 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 452 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 460 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 462 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 470 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 472 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 480 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 482 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 490 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 492 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 501 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 503 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 




 
 



 
 
#line 515 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 517 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 





 
 
#line 527 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 529 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 541 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 543 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 552 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 554 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 562 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 564 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 573 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 575 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 583 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 585 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 593 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 595 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 





 
 
#line 605 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 607 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 





 
 
#line 618 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 620 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 





 
 
#line 631 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 633 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 





 
 
#line 644 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 646 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 





 
 
#line 657 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 659 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 668 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 670 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 679 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 681 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 689 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 691 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 







 
 
#line 703 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 705 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 







 
 
#line 717 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 719 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 732 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 734 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 747 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 749 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 762 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 764 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 777 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 779 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 792 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 794 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 807 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 809 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 822 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 824 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 







 
 
#line 837 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 839 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 


 
 








 
 
#line 854 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 856 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 








 
 
#line 870 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 872 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 








 
 
#line 886 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 888 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 900 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 902 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 914 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 916 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 928 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 930 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 942 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 944 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 956 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 958 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 970 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 972 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 984 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 986 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 






 
 
#line 998 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1000 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 




 
 
#line 1010 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1012 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 1025 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1027 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1035 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1037 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1045 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1047 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1055 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1057 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1065 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1067 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1075 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1077 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1085 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1087 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1095 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1097 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1105 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1107 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1115 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1117 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1125 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1127 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1135 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1137 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1145 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1147 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1155 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1157 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1165 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1167 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1175 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1177 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1185 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1187 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1195 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1197 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1205 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1207 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1215 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1217 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1225 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1227 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1235 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1237 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1245 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1247 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1255 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1257 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1265 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1267 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1275 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1277 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1285 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1287 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1295 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1297 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1305 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1307 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1315 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1317 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1325 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1327 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1336 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1338 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1347 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1349 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1357 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1359 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1367 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1369 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1377 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1379 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 1388 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1390 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1399 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1401 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 








 
 



 
 
#line 1417 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1419 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1427 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1429 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1437 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1439 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1448 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1450 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1459 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1461 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1470 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1472 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1481 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1483 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1492 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1494 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1503 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1505 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1514 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1516 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1525 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1527 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1536 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1538 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 1547 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1549 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 








 
 



 
 
#line 1565 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1567 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 








 
 



 
 
#line 1583 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1585 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 



 
 
#line 1593 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1595 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1604 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1606 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1615 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1617 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1626 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1628 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 



 
 
#line 1637 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1639 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 

 
 





 
 
#line 1650 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1652 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 







 
 





 
 
#line 1669 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1671 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 





 
 
#line 1681 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1683 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 










 
 
#line 1703 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1705 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 






 
 





 
 
#line 1721 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1723 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 





 
 
#line 1738 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1740 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 





 
 
#line 1750 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1752 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 





 
 



 
 
#line 1765 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1767 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 




 
 
#line 1776 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
#line 1778 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
 
 
 
 




 
 void USB_SetIndex(uint8_t epsel);
 



 
 uint8_t USB_GetCommonInts(void);
 



 
 uint8_t USB_GetInInts(void);
 



 
 uint8_t USB_GetOutInts(void);
 



 
 uint8_t USB_GetIndex(void);
 



 
 bool USB_IsSuspended(void);
 




 
 bool USB_GetSetupEnd(void);
 



 
 bool USB_Ep0SentStall(void);
 



 
 bool USB_Ep0InPacketReady(void);
 



 
 bool USB_Ep0OutPacketReady(void);
 



 
 uint8_t USB_Ep0GetCount(void);
 



 
 bool USB_EpnInGetSentStall(void);
 



 
 bool USB_EpnGetInPacketReady(void);
 



 
 bool USB_EpnOutGetSentStall(void);
 



 
 bool USB_EpnGetOutPacketReady(void);
 





 
 uint16_t USB_EpOutGetCount(void);
 



 
 uint16_t USB_GetSofNumber(void);
 




 
 void USB_AbortInEp(uint8_t fifoNum);
 




 
 void USB_AbortOutEp(uint8_t fifoNum);
 












 
 void USB_ActivateEp(uint8_t ep,
 uint16_t packetSize,
 bool inDir,
 bool splitMode,
 bool isoMode);
 
 
 
 
 
 
 
 
 
 
 
 
#line 1934 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
#line 1944 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 1946 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
#line 1956 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 1958 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
#line 1968 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 1970 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
#line 1980 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 1982 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 2000 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 2002 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 2020 "..\..\SdkTool\EFM8UB2\Perip\Inc\usb_0.h" /0
 
 
#line 7 "..\..\SdkTool\EFM8UB2\Perip\Src\usb_0.c" /0
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdbool.h" /0




 
 
 
#line 8 "..\..\SdkTool\Si8051Base\stdbool.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
#line 20 "..\..\SdkTool\Si8051Base\stdbool.h" /0
 
#line 8 "..\..\SdkTool\EFM8UB2\Perip\Src\usb_0.c" /0
 
  
#line 1 "..\..\SdkTool\Si8051Base\stdint.h" /0




 
 
 
#line 8 "..\..\SdkTool\Si8051Base\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 9 "..\..\SdkTool\EFM8UB2\Perip\Src\usb_0.c" /0
#line 9 "..\..\SdkTool\EFM8UB2\Perip\Src\usb_0.c" /0
 
 
 
 
 
 
 
 
 
 





 
 static uint16_t USB_GetShortRegister(uint8_t regAddr)
 {
 uint16_t retVal;
 
  do { USB0ADR = (0x80 | (regAddr)); while (USB0ADR & 0x80) {} } while (0);
 retVal = (USB0DAT << 8);
  do { USB0ADR = (0x80 | ((regAddr - 1))); while (USB0ADR & 0x80) {} } while (0);
 retVal |= USB0DAT;
 
 return retVal;
 }
 
 
 
 
 void USB_SetIndex(uint8_t epsel)
 {
  do { USB0ADR = (0x0E); USB0DAT = (epsel); while (USB0ADR & 0x80) {} } while (0);
 }
 
 uint8_t USB_GetCommonInts(void)
 {
  do { USB0ADR = (0x80 | (0x06)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT;
 }
 
 uint8_t USB_GetInInts(void)
 {
  do { USB0ADR = (0x80 | (0x02)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT;
 }
 
 uint8_t USB_GetOutInts(void)
 {
  do { USB0ADR = (0x80 | (0x04)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT;
 }
 
 uint8_t USB_GetIndex(void)
 {
  do { USB0ADR = (0x80 | (0x0E)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT;
 }
 
 bool USB_IsSuspended(void)
 {
  do { USB0ADR = (0x80 | (0x01)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT & 0x02;
 }
 
 bool USB_GetSetupEnd(void)
 {
  do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT & 0x10;
 }
 
 bool USB_Ep0SentStall(void)
 {
  do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT & 0x04;
 }
 
 bool USB_Ep0OutPacketReady(void)
 {
  do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT & 0x01;
 }
 
 bool USB_Ep0InPacketReady(void)
 {
  do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT & 0x02;
 }
 
 uint8_t USB_Ep0GetCount(void)
 {
  do { USB0ADR = (0x80 | (0x16)); while (USB0ADR & 0x80) {} } while (0);
 return USB0DAT;
 }
 
 bool USB_EpnInGetSentStall(void)
 {
  do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0);
 return (bool)(USB0DAT & 0x20);
 }
 
 void USB_AbortInEp(uint8_t fifoNum)
 {
 USB_SetIndex(fifoNum);
  do { do { USB0ADR = (0x11); USB0DAT = (0x08); while (USB0ADR & 0x80) {} } while (0); do { do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0); } while (USB0DAT & 0x08); } while (0);;
  do { do { USB0ADR = (0x11); USB0DAT = (0x08); while (USB0ADR & 0x80) {} } while (0); do { do { USB0ADR = (0x80 | (0x11)); while (USB0ADR & 0x80) {} } while (0); } while (USB0DAT & 0x08); } while (0);;
 }
 
 bool USB_EpnOutGetSentStall(void)
 {
  do { USB0ADR = (0x80 | (0x14)); while (USB0ADR & 0x80) {} } while (0);
 return (bool)(USB0DAT & 0x40);
 }
 
 bool USB_EpnGetOutPacketReady(void)
 {
  do { USB0ADR = (0x80 | (0x14)); while (USB0ADR & 0x80) {} } while (0);
 return (bool)(USB0DAT & 0x01);
 }
 
 uint16_t USB_EpOutGetCount(void)
 {
 return USB_GetShortRegister(0x17);
 }
 
 void USB_AbortOutEp(uint8_t fifoNum)
 {
 USB_SetIndex(fifoNum);
  do { do { USB0ADR = (0x14); USB0DAT = (0x10); while (USB0ADR & 0x80) {} } while (0); do { do { USB0ADR = (0x80 | (0x14)); while (USB0ADR & 0x80) {} } while (0); } while (USB0DAT & 0x10); } while (0);;
  do { do { USB0ADR = (0x14); USB0DAT = (0x10); while (USB0ADR & 0x80) {} } while (0); do { do { USB0ADR = (0x80 | (0x14)); while (USB0ADR & 0x80) {} } while (0); } while (USB0DAT & 0x10); } while (0);;
 }
 
 void USB_ActivateEp(uint8_t ep,
 uint16_t packetSize,
 bool inDir,
 bool splitMode,
 bool isoMode)
 {
 uint8_t CSRH_mask = 0;
 uint16_t fifoSize;
 
 USB_SetIndex(ep);
 
 
 
 fifoSize = (splitMode == true) ? (16 << ep) : (32 << ep);
 
 if (packetSize <= fifoSize)
 {
 CSRH_mask |= 0x80;
 }
 
 if (isoMode == true)
 {
 CSRH_mask |= 0x40;
 }
 
 if (inDir == true)
 {
 CSRH_mask |= 0x20;
 
 if (splitMode == true)
 {
 CSRH_mask |= 0x04;
 }
  do { USB0ADR = (0x11); USB0DAT = (0x40); while (USB0ADR & 0x80) {} } while (0);
  do { USB0ADR = (0x12); USB0DAT = (CSRH_mask); while (USB0ADR & 0x80) {} } while (0);
 }
 else  
 {
  do { USB0ADR = (0x14); USB0DAT = (0x80); while (USB0ADR & 0x80) {} } while (0);
  do { USB0ADR = (0x15); USB0DAT = (CSRH_mask); while (USB0ADR & 0x80) {} } while (0);
 
 if (splitMode == false)
 {
  do { USB0ADR = (0x12); USB0DAT = (0); while (USB0ADR & 0x80) {} } while (0);
 }
 }
 }
 
 uint16_t USB_GetSofNumber(void)
 {
 return USB_GetShortRegister(0x0D);
 }
 
 
