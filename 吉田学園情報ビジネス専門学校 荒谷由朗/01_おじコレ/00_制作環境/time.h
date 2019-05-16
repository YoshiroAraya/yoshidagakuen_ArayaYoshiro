//=============================================================================
//
// タイム処理 [time.h]
// Author : 荒谷由朗
//
//=============================================================================
#ifndef _TIME_H_
#define _TIME_H_

#include "main.h"

//*****************************************************************************
// プロトタイプ宣言
//*****************************************************************************
void InitTime(void);
void UninitTime(void);
void UpdateTime(void);
void DrawTime(void);

void AddTime(int nValue);

#endif
