#ifndef __STABLIZER_H
#define __STABLIZER_H

#define READ_COMMAND    0x01
#define WRITE_COMMAND   0x02

extern void StablizerDatInit(void);
extern void StablizerDetect(void);
extern void DetectChargeParameter(int16_t *p_data, uint8_t ArraySize);
extern void StablizerProcessHandle(void);

#endif
