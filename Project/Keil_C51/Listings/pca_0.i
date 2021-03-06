
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Src\pca_0.c" /0




 
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0




 
 
 
 
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
#line 20 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 453 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /1
 
 
 
 
#line 457 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
#line 10 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
#line 459 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
#line 21 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 
 
























































































 
 
 











 
 








 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 typedef enum
 {
 PCA0_CHAN0 = 0x0,          
 PCA0_CHAN1 = 0x1,          
 PCA0_CHAN2 = 0x2,          
 PCA0_CHAN3 = 0x3,          
 PCA0_CHAN4 = 0x4,          
 
 
#line 153 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /1
 
 
#line 155 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 } PCA0_Channel_t;
 



 
 
 
 
 
 
 
 
 
#line 169 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /1
  
  
 
#line 172 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 
 









 
 uint8_t PCA0_getIntFlags();
 








 
 void PCA0_clearIntFlags(uint8_t flag);
 













 
 void PCA0_enableInt(uint8_t flag, bool enable);
 










 
 uint16_t PCA0_readChannel(PCA0_Channel_t channel);
 









 
 void PCA0_writeChannel(PCA0_Channel_t channel, uint16_t value);
 







 
 uint16_t PCA0_readCounter();
 







 
 void PCA0_writeCounter(uint16_t value);
 




 
 void PCA0_run();
 




 
 void PCA0_halt();
 
 
 
 



 
 
 
 typedef enum
 {
 PCA0_SYSCLK_DIV12 = 0x00,  
 PCA0_SYSCLK_DIV4 = 0x02,    
 PCA0_TIMER0      = 0x04,     
 PCA0_ECI         = 0x06,             
 PCA0_SYSCLK      = 0x08,          
 PCA0_EXTOSC_DIV8 = 0x0A,    
 
 
#line 291 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /1
 
 
#line 293 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 } PCA0_Timebase_t;
 
 
 typedef enum
 {
 
 PCA0_CAPTURE_POS_CEX   = 0x00  
 | 0x00
 | 0x20
 | 0x00
 | 0x00
 | 0x00
 | 0x00,
 
 
 PCA0_CAPTURE_NEG_CEX   = 0x00  
 | 0x00
 | 0x00
 | 0x10
 | 0x00
 | 0x00
 | 0x00,
 
 
 PCA0_CAPTUE_TOGGLE_CEX = 0x00  
 | 0x00
 | 0x20
 | 0x10
 | 0x00
 | 0x00
 | 0x00,
 
 
 PCA0_TIMER             = 0x00  
 | 0x40
 | 0x00
 | 0x00
 | 0x08
 | 0x00
 | 0x00,
 
 
 PCA0_HIGH_SPEED_OUT    = 0x00  
 | 0x40
 | 0x00
 | 0x00
 | 0x08
 | 0x04
 | 0x00,
 
 
 PCA0_FREQUENCY_OUT     = 0x00  
 | 0x40
 | 0x00
 | 0x00
 | 0x00
 | 0x04
 | 0x02,
 
 
 PCA0_PWM8              = 0x00  
 | 0x40
 | 0x00
 | 0x00
 | 0x08
 | 0x00
 | 0x02,
 
 
 PCA0_PWM16             = 0x80  
 | 0x40
 | 0x00
 | 0x00
 | 0x08
 | 0x00
 | 0x02,
 
 
#line 371 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /1
 
 
 
 
 
 
 
 
 
#line 380 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 } PCA0_ChannelMode_t;
 
 
 
 typedef enum
 {
 PCA0_NORMAL_POLARITY   = 0x0,  
 
 
#line 389 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /1
 
 
#line 391 "..\..\SdkTool\EFM8UB2\Perip\Inc\pca_0.h" /0
 } PCA0_ChannelOutPolatiry_t;
 
 
 typedef enum
 {
 PCA0_IDLE_RUN     = 0x00,   
 PCA0_IDLE_SUSPEND = 0x80,  
 } PCA0_IdleState_t;
 
 











 
 void PCA0_init(PCA0_Timebase_t  timebase, PCA0_IdleState_t idleState);
 











 
 void PCA0_initChannel(PCA0_Channel_t channel,
 PCA0_ChannelMode_t  mode,
 PCA0_ChannelOutPolatiry_t pol
 );
 





 
 void PCA0_reset();
 








 
 void PCA0_resetChannel(PCA0_Channel_t channel);
 
 
 
 
 
 
 






 
 
 
 



 
 
 








 
 









 
 extern void PCA0_overflowCb();
 










 
 extern void PCA0_channel0EventCb();
 










 
 extern void PCA0_channel1EventCb();
 










 
 extern void PCA0_channel2EventCb();
 










 
 extern void PCA0_channel3EventCb();
 










 
 extern void PCA0_channel4EventCb();
 






 
 






 
 
 
 
 
 
 
#line 7 "..\..\SdkTool\EFM8UB2\Perip\Src\pca_0.c" /0
 
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /0






 
 
 
 
 
 
#line 13 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /1
 
 
#line 15 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /0
 
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdio.h" /0






 
 
 
 
 
 
 
 
 
 
#line 17 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdio.h" /1
  
 
#line 19 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdio.h" /0
 
 
 
 typedef unsigned int size_t;
 
 
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
 
 
 
#line 17 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /0
 
  
#line 1 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0







 
 
 
 
 
 
#line 14 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
  
 
 
#line 17 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 
#line 19 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
  
 
#line 21 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 
 
 typedef char wchar_t;
 
 
 
#line 28 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
 
 
 
 
 
 
 
 
 
  
 
 
#line 40 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 
 
 
 
 
#line 46 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
 
 
 
 
 
 
#line 52 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 #pragma SAVE
 #pragma REGPARMS
 
 extern char   cabs (char  val);
 
 extern int    abs  (int   val);
 
 extern long   labs (long  val);
 
 extern float  atof (const char *s1);
 extern long   atol (const char *s1);
 extern int    atoi (const char *s1);
 extern int    rand (void);
 extern void   srand (unsigned int seed);
 
 
#line 69 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
 
  
 
 
#line 73 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 extern float         strtod  (const char *nptr, char **endptr);
 extern long          strtol  (const char *nptr, char **endptr, unsigned char base);
 extern unsigned long strtoul (const char *nptr, char **endptr, unsigned char base);
 
 
 
 extern void init_mempool          (void xdata *p, size_t size);
 extern void xdata *malloc  (size_t size);
 extern void free                  (void xdata *p);
 extern void xdata *realloc (void xdata *p, size_t size);
 extern void xdata *calloc  (size_t nmemb, size_t size);
 
 
#line 87 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /1
 
 
#line 89 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\stdlib.h" /0
 
 #pragma RESTORE
 
 
#line 18 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /0
 
 
 
 
 
 
 







 
#line 33 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /1
  
 
#line 35 "D:\MyProKits\MucKits\Keil_C51_Rev956\C51\Inc\assert.h" /0
 
 
#line 9 "..\..\SdkTool\EFM8UB2\Perip\Src\pca_0.c" /0
 
 
 uint8_t PCA0_getIntFlags()
 {
 return PCA0CN0 & (0x80
 | 0x01
 | 0x02
 | 0x04
 | 0x08
 | 0x10);
 }
 
 void PCA0_clearIntFlags(uint8_t flag)
 {
 PCA0CN0 &= ~flag;
 }
 
 void PCA0_enableInt(uint8_t flag, bool enable)
 {
 uint8_t en = (uint8_t) enable;
 
 if(flag & 0x01){
 PCA0CPM0 &= ~0x01;
 PCA0CPM0 |= en << 0x00;
 }
 if(flag & 0x02){
 PCA0CPM1 &= ~0x01;
 PCA0CPM1 |= en << 0x00;
 }
 if(flag & 0x04){
 PCA0CPM2 &= ~0x01;
 PCA0CPM2 |= en << 0x00;
 }
 if(flag & 0x08){
 PCA0CPM3 &= ~0x01;
 PCA0CPM3 |= en << 0x00;
 }
 if(flag & 0x10){
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0CPM4 &= ~0x01;
 PCA0CPM4 |= en << 0x00;
 }
 if(flag & 0x80){
 PCA0MD &= ~0x01;
 PCA0MD |= en << 0x00;
 }
 }
 
 uint16_t PCA0_readChannel(PCA0_Channel_t channel)
 {
 switch(channel)
 {
 case 0:
 return PCA0CP0;
 case 1:
 return PCA0CP1;
 case 2:
 return PCA0CP2;
 case 3:
 return PCA0CP3;
 case 4:
 return PCA0CP4;
 }
 return 0x0;
 }
 
 void PCA0_writeChannel(PCA0_Channel_t channel, uint16_t value)
 {
 uint8_t lower = value >> 8;
 switch(channel)
 {
 case 0:
 
 PCA0CPL0 = value;
 PCA0CPH0 = lower;
 break;
 case 1:
 
 PCA0CPL1 = value;
 PCA0CPH1 = lower;
 break;
 case 2:
 
 PCA0CPL2 = value;
 PCA0CPH2 = lower;
 break;
 case 3:
 
 PCA0CPL3 = value;
 PCA0CPH3 = lower;
 break;
 case 4:
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 
 PCA0CPL4 = value;
 PCA0CPH4 = lower;
 break;
 }
 }
 
 uint16_t PCA0_readCounter()
 {
 
 
 
 return PCA0L + (PCA0H << 8);
 }
 
 void PCA0_writeCounter(uint16_t value)
 {
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0 = value;
 }
 
 void PCA0_run()
 {
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0CN0_CR = 1;
 }
 
 void PCA0_halt()
 {
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0CN0_CR = 0;
 }
 
 void PCA0_init(PCA0_Timebase_t  timebase, PCA0_IdleState_t idleState)
 {
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0MD &= ~(0x0E | 0x80);
 PCA0MD |= timebase + idleState;
 }
 
 void PCA0_initChannel(PCA0_Channel_t channel,
 PCA0_ChannelMode_t  mode,
 PCA0_ChannelOutPolatiry_t pol
 )
 {
 






 pol=pol;
 
 
 if(mode)
 {
 PCA0MD &= ~0x40;
 }
 
 switch (channel)
 {
 case 0:
 PCA0CPM0 &= ~(0x80 | 0x40 | 0x20 | 0x10 | 0x08 | 0x04 | 0x02);
 PCA0CPM0 |= mode;
 break;
 
 case 1:
 PCA0CPM1 &= ~(0x80 | 0x40 | 0x20 | 0x10 | 0x08 | 0x04 | 0x02);
 PCA0CPM1 |= mode;
 break;
 
 case 2:
 PCA0CPM2 &= ~(0x80 | 0x40 | 0x20 | 0x10 | 0x08 | 0x04 | 0x02);
 PCA0CPM2 |= mode;
 break;
 
 case 3:
 PCA0CPM3 &= ~(0x80 | 0x40 | 0x20 | 0x10 | 0x08 | 0x04 | 0x02);
 PCA0CPM3 |= mode;
 break;
 
 case 4:
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0CPM4 &= ~(0x80 | 0x40 | 0x20 | 0x10 | 0x08 | 0x04 | 0x02);
 PCA0CPM4 |= mode;
 break;
 }
 
 }
 
 void PCA0_reset()
 {
 
 uint8_t i;
 for (i=0; i<=4; i++)
 {
 PCA0_resetChannel(i);
 }
 
 
 PCA0MD = 0x0;
 PCA0CN0 = 0x0;
 PCA0   = 0x0;
 }
 
 void PCA0_resetChannel(PCA0_Channel_t channel)
 {
 switch (channel)
 {
 case 0:
 PCA0CP0 = 0x00;
 PCA0CPM0 = 0x0;
 return;
 case 1:
 PCA0CP1 = 0x00;
 PCA0CPM1 = 0x0;
 return;
 case 2:
 PCA0CP2 = 0x00;
 PCA0CPM2 = 0x0;
 return;
 case 3:
 PCA0CP3 = 0x00;
 PCA0CPM3 = 0x0;
 return;
 case 4:
 
 SLAB_ASSERT(!(PCA0MD & 0x40));
 PCA0CP4 = 0x00;
 PCA0CPM4 = 0x0;
 return;
 }
 }
 
 
 
 
  void PCA0_ISR (void) interrupt 11
 {
 
 uint8_t flags = PCA0CN0 & (0x80
 | 0x01
 | 0x02
 | 0x04
 | 0x08
 | 0x10);
 PCA0CN0 &= ~flags;
 
 if((flags & 0x80)
 && (PCA0MD & 0x01))
 {
 PCA0_overflowCb();
 }
 if((flags & 0x01)
 && (PCA0CPM0 & 0x01))
 {
 PCA0_channel0EventCb();
 }
 if((flags & 0x02)
 && (PCA0CPM1 & 0x01))
 {
 PCA0_channel1EventCb();
 }
 if((flags & 0x04)
 && (PCA0CPM2 & 0x01))
 {
 PCA0_channel2EventCb();
 }
 if((flags & 0x08)
 && (PCA0CPM3 & 0x01))
 {
 PCA0_channel3EventCb();
 }
 if((flags & 0x10)
 && (PCA0CPM4 & 0x01))
 {
 PCA0_channel4EventCb();
 }
 }
 
 
