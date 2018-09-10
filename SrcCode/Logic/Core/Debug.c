#include "Debug.h"

#ifdef  USE_FULL_ASSERT

void DebugTxByte(uint8_t u8Byte){
  SBUF1 = u8Byte;
	while(!(SCON1&SCON1_TI__BMASK));
	SCON1 &= (uint8_t)(~SCON1_TI__BMASK);
}

void DebugTxDate(uint8_t *pTxBuffer, uint8_t TxSize){
	uint8_t i = 0;
	for(i = 0; i < TxSize; i++) {
		SBUF1 = pTxBuffer[i];
		while(!(SCON1&SCON1_TI__BMASK));
		SCON1 &= (uint8_t)(~SCON1_TI__BMASK);
	}
}

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the DebugAssertFailed error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void DebugAssertFailed(uint8_t *msg, uint8_t *file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1){
  }
}

#endif