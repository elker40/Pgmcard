/**************************************************************************//**
 * Copyright (c) 2015 by Silicon Laboratories Inc. All rights reserved.
 *
 * http://developer.silabs.com/legal/version/v11/Silicon_Labs_Software_License_Agreement.txt
 *****************************************************************************/

#ifndef STDINT_H
#define STDINT_H

#if defined __C51__

typedef bit bool;
typedef enum{ false = 0, true = !false }BoolDef, BoolTypeDef;

typedef unsigned char			uint8_t;
typedef unsigned short 		uint16_t;
typedef unsigned long 		uint32_t;
typedef uint32_t 					uint64_t[2];

typedef signed char 			sint8_t;
typedef short 						sint16_t;
typedef long 							sint32_t;
typedef long 							sint64_t[2];

typedef signed char 			int8_t;
typedef short 						int16_t;
typedef long 							int32_t;
typedef long 					    int64_t[2];

#endif

#endif
