#ifndef __GLOBAL_H
#define __GLOBAL_H

#include "TypeDef.h"
#include "SI_EFM8UB2_Register_Enums.h"

#include "ReMap.h"
#include "AppDef.h"
#include "InitDevice.h"

#include "InputBtn.h"
#include "Page.h"

#include "Esc.h"
#include "Battery.h"
#include "Stablizer.h"
#include "Sterring.h"
// �����Ӧ����Bug,��������û�д��ڵı�Ҫ,����ֱ��ȥ��,���ڵ���������ǵ�ʱ���Ŷ�·��
#define TickTimeInt(x)						TCON_IT1 = x

#define BTN_CNT_TRIG         			100
#define BTN_CNT_FREQ         			10

#define ESC_1TH_HANDLE_MSAK       0x02
#define ESC_2TH_HANDLE_MSAK      0x04
#define ESC_3TH_HANDLE_MSAK       0x20
#define LIPOCELLS_HANDLE_MSAK     0x08
#define STABLIZER_HANDLE_MSAK     0x10
#define STERRING_HANDLE_MSAK      0x20

#define ESC_MODULE            		0x04
#define LIPOCELLS_MODULE      		0x02
#define STABLIZER_MODULE      		0x01
#define STERRING_MODULE      			0x08

#define TX_CMD				      0x8D	// �����ݰ�
#define TX_ACK_CMD          0xFF  // ��������  
#define TX_CMD_SIZE         0x01  // ָ��ߴ�
      
#define RX_CMD				      0xD8	// �����ݰ� 
#define RX_ACK_CMD		      0xCC	// Ӧ��ָ��
#define RX_CMD_SIZE         0x01  // ָ��ߴ�

#define TX_DATA_SIZE				0x0A
#define RX_DATA_SIZE				0x0A
#define TX_BUFFER_SIZE			(TX_DATA_SIZE + 0x03)
#define RX_BUFFER_SIZE			(RX_DATA_SIZE + 0x03)

#define STABLIZER_SIZE			18

#define IDX_BUILD						17		// ���� ��־[��Ч]

#define	IDX_SW              13		// ����	ͨ��[����]	
#define IDX_SW_P1           9			// ����	0 λ[��Ч]
#define IDX_SW_P2           10		// ����	1 λ[��Ч]
#define	IDX_SW_P3           11		// ����	2 λ[��Ч]	

#define	IDX_YAW_DIR		      14		// ƫ�� ����[��Ч]	
#define IDX_YAW_ANGLE	      3			// ƫ�� �Ƕ�[��Ч]
#define IDX_YAW_RATE	      6			// ƫ�� �ٶ�[��Ч]

#define	IDX_ROLL_DIR	      15		// ��� ����[��Ч]
#define IDX_ROLL_ANGLE 	    1			// ��� �Ƕ�[��Ч]
#define IDX_ROLL_RATE	      4   	// ��� �ٶ�[��Ч]

#define	IDX_PITCH_DIR	      16		// ���� ����[��Ч]
#define IDX_PITCH_RATE      5			// ���� �ٶ�[��Ч]
#define IDX_PITCH_ANGLE	    2			// ����	�Ƕ�[��Ч]

#define IDX_ROLL_OFFSET     7			// ���� ƫ��[��Ч]
#define IDX_PITCH_OFFSET    8		  // ���� ƫ��[��Ч]

#define	IDX_MOUNT_DIR		    0			// ��װ	����[��Ч]
#define	IDX_WING_TYPE       12		// ����	����[��Ч]	
 
#define ESC_PARAM_SIZE      24  	

extern uint16_t cRam TickCnt1ms;
extern uint16_t bRam SysTaskHandle;
extern uint16_t bRam SysModuleEnable;

extern TxSysDef xRam TxSys;

extern uint8_t AdcCovOkFlag;
extern uint8_t AdcCovEnTrigger;
extern uint16_t xRam BatVoltage[9];          // ����﮵�ص�о��ѹ��������ʾ��	[9] ����ܵ�ѹ

extern uint8_t bRam PgmStatus;
extern int16_t xRam EscParam[ESC_PARAM_SIZE];
extern int16_t xRam EscTxParam[ESC_PARAM_SIZE];

extern uint8_t xRam RxTxStatue;
extern int16_t xRam StabilizerParam[STABLIZER_SIZE];

extern void EscDatInit(void);
extern uint8_t EscDatCharge(int16_t *pDat, uint8_t DatSize);

extern void SysDatInit(void);
extern void DelayMs(uint16_t mTim);	

#endif
