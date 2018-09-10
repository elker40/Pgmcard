#ifndef __DEBUG_H
#define __DEBUG_H

#include "TypeDef.h"

#ifdef  USE_DEBUG_ASSERT

/**
  * @brief  The assert_param macro is used for function's parameters check.
  * @param  expr: If expr is false, it calls DebugAssertFailed function which reports 
  *         the name of the source file and the source line number of the call 
  *         that failed. If expr is true, it returns no value.
  * @retval None
  */
  #define DebugAssertParam(expr, msg) ((expr) ? (void)0 : DebugAssertFailed((uint8_t *)msg, (uint8_t *)__FILE__, (uint32_t)__LINE__))
/* Exported functions ------------------------------------------------------- */
  void DebugAssertFailed(uint8_t *msg, uint8_t *file, uint32_t line);
#else
  #define DebugAssertParam(expr, msg) ((void)0)
#endif /* USE_DEBUG_ASSERT */

#endif

