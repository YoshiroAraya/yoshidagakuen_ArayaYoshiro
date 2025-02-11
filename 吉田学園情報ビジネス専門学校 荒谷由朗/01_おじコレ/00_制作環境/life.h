//=============================================================================
//
// ライフ処理 [life.h]
// Author : 荒谷 由朗
//
//=============================================================================
#ifndef _LIFE_H_
#define _LIFE_H_

#include "main.h"

//=============================================================================
// プロトタイプ宣言
//=============================================================================
void InitLife	(void);
void UninitLife	(void);
void UpdateLife	(void);
void DrawLife	(void);
void HitLife	(int nLife);
bool GetLife	(void);
#endif