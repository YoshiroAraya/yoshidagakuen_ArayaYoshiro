//=============================================================================
//
// 入力処理 [input.h]
// Author :	荒谷 由朗
//
//=============================================================================
#ifndef _INPUT_H_
#define _INPUT_H_

#include "main.h"

//=============================================================================
// プロトタイプ宣言
//=============================================================================
HRESULT InitKeyboard		(HINSTANCE hInstance, HWND hWnd);
void	UninitKeyboard		(void);
void	UpdateKeyboard		(void);
bool	GetKeyboardPress	(int nKey);
bool	GetKeyboardTrigger	(int nKey);
#endif