
#include "PageMenu.h"
#include "TypeDef.h"
#include "Page.h"
#include "InputBtn.h"
#include "PageRes.h"


//CSTR xdata PageOptionFlyModeDef[4];
//CSTR xdata PageOptionSwitchDef[4];

////Switch select
//CCHAR code SwitchA[] = {0xbf,0xaa,0xb9,0xd8,0x41,0x00,0};
//CCHAR code SwitchB[] = {0xbf,0xaa,0xb9,0xd8,0x42,0x00,0};
//CCHAR code SwitchD[] = {0xbf,0xaa,0xb9,0xd8,0x44,0x00,0};
//CCHAR code SwitchE[] = {0xbf,0xaa,0xb9,0xd8,0x45,0x00,0};
//CSTR code PageOptionSwitchEn[4] = {"SA","SB","SD","SE"}; 
//CSTR code PageOptionSwitchCn[4] = {SwitchA,SwitchB,SwitchD,SwitchE}; 

////mounting direction
//CCHAR code FaceUp[5] = {0xd5,0xfd,0xcf,0xf2,0}; 
//CCHAR code FaceDw[5] = {0xb7,0xb4,0xcf,0xf2,0} ;
//CCHAR code FaceLf[7] = {0xd7,0xf3,0xb2,0xe0,0xcf,0xf2,0};
//CCHAR code FaceLRi[7] = {0xd3,0xd2,0xb2,0xe0,0xcf,0xf2,0};
//CSTR code PageOptionDirectionCn[4] = {FaceUp,FaceDw,FaceLf,FaceLRi};
//CSTR code PageOptionDirectionEn[] = {"FU","FD","FR","FL"};

//CCHAR code NormalWings[7] = {0xb3,0xa3,0xb9,0xe6,0xd2,0xed,0} ;
//CCHAR code TriangleWings[7] = {0xc8,0xfd,0xbd,0xc7,0xd2,0xed,0};
//CCHAR code VWings[9] = {0x01,0x01,0xd0,0xcd,0xce,0xb2,0xd2,0xed,0};
//CSTR code PageOptionModelTypeCn[] = {NormalWings,TriangleWings,VWings}; 
//CSTR code PageOptionModelTypeEn[] = {"Normal","Delta Wing","V-tail"};

//CCHAR code GyroOff[9] = {0xb9,0xd8,0xb1,0xd5,0xc4,0xa3,0xca,0xbd,0};
//CCHAR code Normal[9] = {0xc6,0xd5,0xcd,0xa8,0xc4,0xa3,0xca,0xbd,0};
//CCHAR code Safe[9] = {0xb0,0xb2,0xc8,0xab,0xc4,0xa3,0xca,0xbd,0};
//CCHAR code Aerobitic[9] = {0xcb,0xf8,0xb6,0xa8,0xc4,0xa3,0xca,0xbd,0};
//CSTR code PageOptionFlyModeCn[4] = {GyroOff,Normal,Safe,Aerobitic};
//CSTR code PageOptionFlyModeEn[] = {"Gyro Off","Normal","safe","Aerobatic"};
//CSTR code PageOptionGainDirCn[] = {FaceUp,FaceDw};
//CSTR code PageOptionGainDirEn[] = {"Normal","Reverse"};

//CSTR xdata PageOptionGainDirDef[2];



////chinese display

//CCHAR code AirZWCn[] = {0xb9,0xcc,0xb6,0xa8,0xd2,0xed,0xd4,0xf6,0xce,0xc8,0xd2,0xc7,0};
//CCHAR code RollGainCn[] = {0xba,0xe1,0xb9,0xf6,0xb8,0xd0,0xb6,0xc8,0};
//CCHAR code PitchGainCn[] = {0xb8,0xa9,0xd1,0xf6,0xb8,0xd0,0xb6,0xc8,0};
//CCHAR code YawGainCn[] = {0xc6,0xab,0xba,0xbd,0xb8,0xd0,0xb6,0xc8,0};
//CCHAR code MountDirCn[] = {0xb0,0xb2,0xd7,0xb0,0xb7,0xbd,0xcf,0xf2,0};
//CCHAR code WingTypeCn[] = {0xd2,0xed,0xd0,0xcd,0xd1,0xa1,0xd4,0xf1,0};
//CCHAR code Position1Cn[] = {0xce,0xbb,0xd6,0xc3,0x30,0x00,0};
//CCHAR code Position2Cn[] = {0xce,0xbb,0xd6,0xc3,0x31,0x00,0};
//CCHAR code Position3Cn[] = {0xce,0xbb,0xd6,0xc3,0x32,0x00,0};

//CCHAR code RollOffetCn[] = {0xba,0xe1,0xb9,0xf6,0xb2,0xb9,0xb3,0xa5,0};
//CCHAR code PitchOffetCn[] = {0xba,0xe1,0xb9,0xf6,0xb2,0xb9,0xb3,0xa5,0};
//CCHAR code AngleCn[] = {0xbd,0xc7,0xb6,0xc8,0};
//CCHAR code AngularVelocityCn[] = {0xbd,0xc7,0xcb,0xd9,0xb6,0xc8,0};
//CCHAR code GainDirCn[] = {0xb7,0xbd,0xcf,0xf2,0};
//CCHAR code Switch[] = {0xbf,0xaa,0xb9,0xd8,0};
//CCHAR code FlyMode[] = {0xb7,0xc9,0xd0,0xd0,0xc4,0xa3,0xca,0xbd,0};

//CCHAR code ChineseCn[] = {0xd6,0xd0,0xce,0xc4,0};
//CCHAR code EnglishCn[] = {0xd3,0xa2,0xce,0xc4,0};
//CCHAR code LanguageCn[] = {0xd3,0xef,0xd1,0xd4,0};

//CSTR code PageOptionLanguageEn[] = {"Chinese","English"};
//CSTR code PageOptionLanguageCn[] = {ChineseCn,EnglishCn};
//CSTR xdata PageOptionLanguageDef[2];

//MENUITEM xdata MenuAirplaneStatility[] = {
//	{AirZWCn,0,0,0,9,0,0,0,"Flight Controller"},
//	{FlyMode,PageMenuFlyMode,0,0,0,0,0,0,"Fly Mode"},
//	{RollGainCn,PageMenuRollGain,0,0,0,0,0,0,"Roll Gain"},
//	{PitchGainCn,PageMenuPitchGain,0,0,0,0,0,0,"Pitch Gain"},
//	{YawGainCn,PageMenuYawGain,0,0,0,0,0,0,"Yaw Gain"},
//	{RollOffetCn,0,0,-20,+20,  &AirParameter[7],0,0,"Roll offet"},
//	{PitchOffetCn,0,0,-20,+20, &AirParameter[8],0,0,"Pitch offet"},
//	{MountDirCn,0,PageOptionDirectionDef,0,3,&AirParameter[0], 0,0,"Mounting"},
//	{WingTypeCn,0,PageOptionModelTypeDef,0,2,&AirParameter[12],0,0,"Wing"},
//	{LanguageCn,PageMenuLanguage,0,0,0,0,0,0,"Language:"},
//};



//MENUITEM xdata MenuRoll[] = {
//	{RollGainCn,0,0,0,3,0,0,0,"Roll Gain"},
//	{GainDirCn,0,PageOptionGainDirDef,0,1,&roll_dir,0,0,"Direction"},
//	{ AngleCn,0,0,0,100,&AirParameter[1],0,0,"Angle Gain"},
//	{ AngularVelocityCn,0,0,0,100,&AirParameter[4],0,0,"Rate Gain"},
//};

//MENUITEM xdata MenuPitch[] = {
//	{PitchGainCn,0,0,0,3,0,0,0,"Pitch Gain"},
//	{GainDirCn,0,PageOptionGainDirDef,0,1,&pitch_dir,0,0,"Direction"},
//	{AngleCn,0,0,0,+100,&AirParameter[2],0,0,"Angle Gain"},
//	{AngularVelocityCn,0,0,0,+100,&AirParameter[5],0,0,"Rate Gain"},
//};

//MENUITEM xdata MenuYaw[] = {
//	{YawGainCn,0,0,0,3,0,0,0,"Pitch Gain"},
//	{GainDirCn,0,PageOptionGainDirDef,0,1,&yaw_dir,0,0,"Direction"},
//	{AngleCn,0,0,0,+100,&AirParameter[3],0,0,"Angle Gain"},
//	{AngularVelocityCn,0,0,0,+100,&AirParameter[6],0,0,"Rate Gain"},
//};



//MENUITEM  MenuLanguage[3] = { 
//	{"Language",0,0,0,2,0,0,0,"Language"},
//	{"Language",0,0,0,0,0,0,0,"Chinese"},
//	{ "Language",0,0,0,0,0,0,0,"English"},
//};







//uint32_t PageMenuRollGain(uint8_t event)
//{
//	static MENUSTAT ms;
//  
//	if(event==PV_INIT)
//	{
//		LcdDrawClr(0);;
//		if(!ms.Init)
//		{
//			ms.iFocus=ms.iStart=0;
//			ms.Init=1;
//		}
//		ms.Total=MenuRoll[0].Max;
//		ms.DrawMask=PD_ALL;

//		return 1;
//	}

//	detect_value_change(AirParameter, sizeof(AirParameter)/sizeof(AirParameter[0]));

//	PageMenuProc(MenuRoll, &ms);

////	if(KeyTstDown(KEY_EXT))
////	{
////		if(!Ent_flag){
////				PageReturn(PV_INIT);
////		}
////		Ent_flag = 0 ;
////		ms.DrawMask |= PD_VALUE;
////	}

////	if(KeyTstDown(KEY_ENT)){
////		Ent_flag = 1 ;
////		ms.DrawMask |= PD_VALUE ;
////	}


//	return 0;

//}

//uint32_t PageMenuPitchGain(uint8_t event)
//{
//	static MENUSTAT ms;

//	if(event==PV_INIT)
//	{
//		LcdDrawClr(0);
//		if(!ms.Init)
//		{
//			ms.iFocus=ms.iStart=0;
//			ms.Init=1;
//		}
//		ms.Total=MenuPitch[0].Max;
//		ms.DrawMask=PD_ALL;
//		return 1;
//	}


////	detect_value_change(AirParameter, sizeof(AirParameter)/sizeof(AirParameter[0]));

//	PageMenuProc(MenuPitch,&ms);

////	if(KeyTstDown(KEY_EXT))
////	{
////		if(!Ent_flag){
////			PageReturn(PV_INIT);
////		}
////		Ent_flag = 0 ;
////		ms.DrawMask |= PD_VALUE ;
////	}

////	if(KeyTstDown(KEY_ENT)){
////		Ent_flag = 1 ;
////		ms.DrawMask |= PD_VALUE ;
////	}
//	return 0;

//}

//uint32_t PageMenuYawGain(uint8_t event)
//{
//	static MENUSTAT ms;
//  
//	if(event==PV_INIT)
//	{
//		LcdDrawClr(0);
//		if(!ms.Init)
//		{
//			ms.iFocus=ms.iStart=0;
//			ms.Init=1;
//		}
//		ms.Total=MenuYaw[0].Max;
//		ms.DrawMask=PD_ALL;
//		return 1;
//	}

//	detect_value_change(AirParameter, sizeof(AirParameter)/sizeof(AirParameter[0]));

//	PageMenuProc(MenuYaw,&ms);

//	if(BtnTstDown(BTN_EXT)){
////		if(!Ent_flag){
////			PageReturn(PV_INIT);//Exit Page;
////		}
////		Ent_flag = 0 ;// Exit  Edit
////		ms.DrawMask |= PD_VALUE ;
//	}

//	if(BtnTstDown(BTN_ENT)){
////		Ent_flag = 1 ;  //Enter Edit
////		ms.DrawMask |= PD_VALUE;
//	}

//	return 0;

//}


uint32_t PageMenuLanguage(uint8_t event)
{
//  static MENUSTAT ms;

//	if(event == PV_INIT)
//	{
//		LcdDrawClr(0);
//		if(!ms.Init){
//			ms.iFocus=ms.iStart=0;
//			ms.Init=1;
//		}
//		ms.Total=MenuLanguage[0].Max;
//		ms.DrawMask=PD_ALL;
//	}

//	PageMenuProc(MenuLanguage,&ms);

//	if(BtnTstDown(BTN_ENT))
//	{
////		language = ms.iFocus  ;
////		PageReturn(PV_INIT);
//	}

//	if(BtnTstDown(BTN_EXT)){
////		PageReturn(PV_INIT) ;
//	}

  LcdDrawBmpToArray(0, 0, PageMainBmp);
  LcdDrawBufferRefresh();

	return 0 ;
}

