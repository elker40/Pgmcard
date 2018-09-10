#ifndef __STERRING_H
#define	__STERRING_H

#define IDX_TESTMODE  0x00
#define IDX_LOCATION  0x01
#define IDX_AUTOSTEP	0x02
extern sint16_t xRam SterringParam[3];

extern void SterringDatInit(void);
extern void SterringDetect(void);
extern void SterringProcessHandle(void);

#endif