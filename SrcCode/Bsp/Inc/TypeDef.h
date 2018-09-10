#ifndef __TYPEDEF_H
#define __TYPEDEF_H

#include "Stdint.h"
#include "SI_EFM8UB2_Register_Enums.h"        // SFR declarations

#include <limits.h>

#define ENABLE	 1
#define DISABLE  0

#define SINT8_MAX        	(+127)            	/* Max "signed"    "char" value */
#define SINT8_MIN      		(-128)           		/* Min "signed"    "char" value */

#define SINT16_MAX        (+32767)         	 	/* Max ("signed")   "int" value */
#define SINT16_MIN        (-32767-1)       		/* Min ("signed")   "int" value */

#define SINT32_MAX        (+2147483647)     	/* Max ("signed")  "long" value */
#define SINT32_MIN   			(-2147483647L-1L)   /* Min ("signed")  "long" value */

#define UINT8_MAX        	(0xFF)            	/* Max "unsigned"  "char" value */
#define UINT16_MAX       	(0xFFFF)         		/* Max "unsigned"   "int" value */
#define Uint32_MAX        (0xFFFFFFFF)     		/* Max "unsigned"  "long" value */

#define bool_t	 bit

#define sRom    code
#define sRam		

#define cRam  	data     
#define iRam    
#define bRam    
#define pRam    
#define xRam    

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




#endif