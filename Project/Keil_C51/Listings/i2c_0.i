
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0




 
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0




 
 
 
 
 
 
  
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
 
 
 
 
#line 11 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
  
#line 1 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
#line 459 "\Users\baochen\Desktop\ProgramCard_2\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Defs.h" /0
 
 
#line 21 "..\..\SdkTool\EFM8UB2\Inc\SI_EFM8UB2_Register_Enums.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 12 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
 



























































































































































































 
 
 











 
 











 
 










 
 









 
 



 
 











 
 


















 
 


















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 330 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /1
  
 
#line 332 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
 
 
 
 
#line 337 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /1
 
 
#line 339 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 



 
 


 
 typedef enum
 {
 I2C0_MASTER_START  = 0xE0,    
 I2C0_MASTER_TXDATA = 0xC0,    
 I2C0_MASTER_RXDATA = 0x80,    
 I2C0_SLAVE_ADDRESS = 0x20,    
 I2C0_SLAVE_RX_STOP = 0x10,    
 I2C0_SLAVE_RXDATA  = 0x00,    
 I2C0_SLAVE_TXDATA  = 0x40,    
 I2C0_SLAVE_TX_STOP = 0x50,    
 } I2C0_State_t;
 







 
 bool I2C0_getIntFlag();
 




 
 void I2C0_clearIntFlag();
 








 
 uint8_t I2C0_getStatusFlags() reentrant;
 











 
 void I2C0_setStatusFlag(uint8_t flag, uint8_t state) reentrant;
 









 
 uint8_t I2C0_read();
 









 
 void I2C0_write(uint8_t value);
 








 
 void I2C0_abort();
 









 
 void I2C0_ack(bool ack);
 
 
 






 
 void I2C0_start();
 






 
 void I2C0_stop();
 
 
 
 



 
 




 
 typedef enum
 {
 I2C0_TIMER0      = 0x00,       
 I2C0_TIMER1      = 0x01,       
 I2C0_TIMER2_HIGH = 0x02,  
 I2C0_TIMER2_LOW  = 0x03,   
 } I2C0_Timebase_t;
 






















 
 void I2C0_init(I2C0_Timebase_t  timebase, bool sclLow);
 












 
 void I2C0_initSlaveAddress(uint8_t address, uint8_t mask);
 






 
 void I2C0_reset();
 
 
 
 
 
 
 
#line 570 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /1






 
 
 
#line 579 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
 



 
 
 







 
 




 
 typedef enum
 {
 I2C0_ARBLOST_ERROR  = 0x00,    
 I2C0_NACK_ERROR     = 0x01,    
 I2C0_UNKNOWN_ERROR  = 0x02,    
 I2C0_TXUNDER_ERROR  = 0x03,    
 } I2C0_TransferError_t;
 
 


































 
 void I2C0_transfer(uint8_t address,
  uint8_t xdata * txBuffer,
  uint8_t xdata * rxBuffer,
 uint8_t tx_len,
 uint8_t rx_len);
 






 
 void I2C0_abortTransfer();
 







 
 uint8_t I2C0_txBytesRemaining();
 







 
 uint8_t I2C0_rxBytesRemaining();
 





















 
 void I2C0_initSlave(uint8_t address,
  uint8_t xdata * commandBuffer,
 uint8_t length);
 







 
 uint8_t I2C0_getCommandLength();
 














 
 void I2C0_sendResponse(uint8_t xdata * dataBuffer,
 uint8_t length);
 
 
 
 
 



 
 








 
 
 
#line 754 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /1













 
 
 















 
 
 













 
 
 










 
 
 











 
 
 










 
 
 
#line 844 "..\..\SdkTool\EFM8UB2\Perip\Inc\i2c_0.h" /0
 
 
 








 
 
 









 
 extern void I2C0_transferCompleteCb();
 
















 
 extern void I2C0_errorCb(I2C0_TransferError_t error);
 











 
 extern void I2C0_commandReceivedCb();
 
 
 
 
 
 
#line 7 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 
  
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
 
 
#line 8 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 
 
 
 
 
 
 




 
 



 
 
#line 26 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /1
  
  
  
 
#line 30 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 
 





 
 bool I2C0_getIntFlag()
 {
 bool val;
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 val = SMB0CN0_SI;
  do { SFRPAGE = savedPage; } while(0);
 return val;
 }
 
 void I2C0_clearIntFlag()
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CN0_SI = 0;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 uint8_t I2C0_getStatusFlags() reentrant
 {
 uint8_t val;
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 val = SMB0CN0 & (0x40
 | 0x20
 | 0x10
 | 0x08
 | 0x04
 | 0x02);
  do { SFRPAGE = savedPage; } while(0);
 return val;
 }
 
 void I2C0_setStatusFlag(uint8_t flag, uint8_t state) reentrant
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 if (state)
 {
 SMB0CN0 |= flag;
 }
 else
 {
 SMB0CN0 &= ~flag;
 }
  do { SFRPAGE = savedPage; } while(0);
 }
 
 uint8_t I2C0_read()
 {
 uint8_t val;
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 val = SMB0DAT;
  do { SFRPAGE = savedPage; } while(0);
 return val;
 }
 
 void I2C0_write(uint8_t value)
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0DAT = value;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_abort()
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CF &= ~0x80;
 SMB0CF |= 0x80;
 SMB0CN0 &= ~(0x20
 | 0x10
 | 0x08);
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_ack(bool ack)
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CN0_ACK = ack;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_start()
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CN0_STA = 1;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_stop()
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CN0_STO = 1;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_init(I2C0_Timebase_t timebase, bool sclLow) {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CF &= ~(0x03 | 0x08);
 SMB0CF |= timebase
 | 0x80
 | 0x40
 | 0x04
 | (uint8_t) sclLow << 0x03;
 SMB0ADM |= 0x01;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_initSlaveAddress(uint8_t address, uint8_t mask) {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CF  &= ~0x40;
 SMB0ADR = address;
 SMB0ADM = mask | 0x01;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_reset() {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CF = 0x0;
 SMBTC &= ~0x03;
 SMB0CN0 = 0x0;
 SMB0ADR = 0x0;
 SMB0ADM = 0x0;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 
#line 174 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 243 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 
 
 
  uint8_t xdata mAddress;
  uint8_t xdata mTxCount;
  uint8_t xdata mRxCount;
 
#line 250 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 uint8_t xdata * xdata mTxBuffer;
 
#line 252 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 uint8_t xdata * xdata mRxBuffer;
 
  uint8_t xdata sRxSize;
  uint8_t xdata sRxCount;
  uint8_t xdata sTxCount;
 
#line 258 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 uint8_t xdata * xdata sRxBuffer;
 
#line 260 "..\..\SdkTool\EFM8UB2\Perip\Src\i2c_0.c" /0
 uint8_t xdata * xdata sTxBuffer;
 
  bool idata i2cBusy;
  bool idata i2cReq;
  bool idata i2cReceive;
  uint8_t xdata mRetries;
 
 void I2C0_transfer(uint8_t address,
  uint8_t xdata * txBuffer,
  uint8_t xdata * rxBuffer,
 uint8_t tx_len, uint8_t rx_len) {
 
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 
 mAddress = address;
 mTxBuffer = txBuffer;
 mRxBuffer = rxBuffer;
 mTxCount = tx_len;
 mRxCount = rx_len;
 mRetries = 255;
 
 if (i2cBusy) {
 i2cReq = true;
 } else {
 
 SMB0CN0_STA = 1;
 }
  do { SFRPAGE = savedPage; } while(0);
 }
 
 void I2C0_abortTransfer(){
 mTxCount = 0;
 mRxCount = 0;
 sTxCount = 0;
 
 i2cBusy = false;
 i2cReq = false;
 }
 
 uint8_t I2C0_txBytesRemaining() {
 return mTxCount;
 }
 
 uint8_t I2C0_rxBytesRemaining() {
 return mRxCount;
 }
 
 void I2C0_initSlave(uint8_t address,
  uint8_t xdata * commandBuffer, uint8_t length) {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 SMB0CF  &= ~0x40;
 SMB0ADR = address;
 SMB0ADM = 0xFF | 0x01;
 sRxBuffer = commandBuffer;
 sRxSize = length;
 sRxCount = 0;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 uint8_t I2C0_getCommandLength() {
 return sRxCount;
 }
 
 void I2C0_sendResponse(
  uint8_t xdata * dataBuffer,
 uint8_t length) {
 sTxBuffer = dataBuffer;
 sTxCount = length;
 }
 
  void I2C0_ISR (void);
 
  void I2C0_ISR (void) interrupt 7
 {
  uint8_t savedPage;
  do { savedPage = SFRPAGE; SFRPAGE = (0x0); } while(0);
 
 
 switch (SMB0CN0 & 0xF0)
 {
 
 case I2C0_MASTER_START:
 
 SMB0DAT = mAddress;
 if (!mTxCount)
 {
 SMB0DAT |= 0x01;
 }
 i2cReceive = SMB0DAT & 0x01;
 
 
 
 SMB0CN0_STA = 0;
 i2cBusy = true;
 break;
 
 
 case I2C0_MASTER_TXDATA:
 if (SMB0CN0_ACK)
 {
 if (i2cReceive)
 {
 
 if(!--mRxCount)
 {
 SMB0CN0_ACK = 0;  
 }
 
 }
 else
 {
 
 if (mTxCount)
 {
 
 SMB0DAT = *mTxBuffer++;
 mTxCount--;
 }
 else
 {
 
 if (mRxCount)
 {
 
 SMB0CN0_STA = 1;
 }
 else
 {
 
 
 I2C0_transferCompleteCb();
 SMB0CN0_STO = 1;
 SMB0CN0_STA = i2cReq;
 i2cReq = false;
 i2cBusy = false;
 }  
 }    
 }      
 }        
 else
 {
 
 I2C0_errorCb(I2C0_NACK_ERROR);
 
 
 SMB0CN0_STO = 1;
 SMB0CN0_STA = i2cReq;  
 i2cReq = false;  
 i2cBusy = false;
 }
 break;
 
 
 case I2C0_MASTER_RXDATA:
 
 *mRxBuffer++ = SMB0DAT;
 
 
 if (mRxCount)
 {
 
 if (!--mRxCount)
 {
 SMB0CN0_ACK = 0;
 }
 
 }
 else
 {
 SMB0CN0_ACK = 0;
 
 
 
 I2C0_transferCompleteCb();
 SMB0CN0_STO = 1;
 SMB0CN0_STA = i2cReq;
 i2cReq = false;
 i2cBusy = false;
 }
 break;
 
 
 case I2C0_SLAVE_TXDATA:
 if(SMB0CN0_ACK)
 {
 if(--sTxCount)
 {
 SMB0DAT = *sTxBuffer++;
 }
 else
 {
 I2C0_errorCb(I2C0_TXUNDER_ERROR);
 }
 }
 break;
 
 
 case I2C0_SLAVE_ADDRESS:
 if(SMB0CN0_ARBLOST)
 {
 if(mRetries--)
 {
 i2cReq = true;
 }
 else
 {
 I2C0_errorCb(I2C0_ARBLOST_ERROR);
 }
 }
 
 i2cReceive = !(SMB0DAT & 0x01);
 
 
 
 
 
 if(i2cReceive | !i2cBusy)
 {
 sRxCount = 0;
 }
 
 
 
 if (!i2cReceive) {
 if(sRxCount || !i2cBusy){
 
 
 I2C0_commandReceivedCb();
 }
 
 SMB0DAT = *sTxBuffer++;
 
 }
 
 
 SMB0CN0_STA = 0;
 i2cBusy = true;
 break;
 
 
 case I2C0_SLAVE_RXDATA:
 
 sRxBuffer[sRxCount++] = SMB0DAT;
 
 
 if (sRxCount == sRxSize)
 {
 I2C0_commandReceivedCb();
 sRxCount = 0;
 }
 
 
 break;
 
 
 case I2C0_SLAVE_RX_STOP:
 case I2C0_SLAVE_TX_STOP:
 if (i2cReceive && sRxCount)
 {
 I2C0_commandReceivedCb();
 }
 
 
 SMB0CN0_STO = 0;
 
 
 
 SMB0CN0_STA = i2cReq;
 i2cReq = false;
 i2cBusy = false;
 break;
 
 default:
 
 I2C0_errorCb(I2C0_UNKNOWN_ERROR);
 
 }  
 
 
 SMB0CN0_SI = 0;
  do { SFRPAGE = savedPage; } while(0);
 }
 
 
