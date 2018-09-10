#include "InputBtnBsp.h"

uint8_t BtnGetState(uint8_t IdxBtn){
	switch(IdxBtn){
		case IDX_BTN_UP:
			if(BtnUpGpio == 0) return 0x01;
			return 0x00;
		case IDX_BTN_DW:
			if(BtnDwGpio == 0) return 0x01;
			return 0x00;
		case IDX_BTN_ENT:
			if(BtnEntGpio == 0) return 0x01;
			return 0x00;
		case IDX_BTN_EXT:
			if(BtnExtGpio == 0) return 0x01;
			return 0x00;
	}
  return 0xFF;
}
