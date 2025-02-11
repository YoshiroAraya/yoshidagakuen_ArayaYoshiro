﻿//=============================================================================
//
// コントローラー処理 [xinput.cpp]
// Author : 荒谷 由朗
//
//=============================================================================
#include "inputx.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define MAX_CONTROLLERS			(1)		// コントローラーの最大数
#define	NUM_JOYKEY_MAX			(128)	// キーの最大数

//=============================================================================
// グローバル変数
//=============================================================================
LPDIRECTINPUTDEVICE8	g_pDevJoyPad = NULL;	// 入力デバイス(ジョイパッド)へのポインタ
JoyState				g_JoyState;

//=============================================================================
// ジョイパッドの初期化
//=============================================================================
void InitJoyPad(void)
{
	DWORD dwResult;

	g_JoyState.nJoypadState			= INPUT_JOYSTATE_NOTPUSH;
	g_JoyState.bConnectionJoypad	= false;

	for (DWORD dCnt = 0; dCnt < MAX_CONTROLLERS; dCnt++)
	{
		XINPUT_STATE state;
		ZeroMemory(&state, sizeof(XINPUT_STATE));

		dwResult = XInputGetState(dCnt, &state);

		if (dwResult == ERROR_SUCCESS)
		{
			// デッドゾーンの設定
			if ((state.Gamepad.sThumbLX < XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE &&
				state.Gamepad.sThumbLX > -XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE) &&
				(state.Gamepad.sThumbLY < XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE &&
					state.Gamepad.sThumbLY > -XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE))
			{
				state.Gamepad.sThumbLX = 0;
				state.Gamepad.sThumbLY = 0;
			}

			if ((state.Gamepad.sThumbRX < XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE &&
				state.Gamepad.sThumbRX > -XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE) &&
				(state.Gamepad.sThumbRY < XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE &&
					state.Gamepad.sThumbRY > -XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE))
			{
				state.Gamepad.sThumbRX = 0;
				state.Gamepad.sThumbRY = 0;
			}

			g_JoyState.bConnectionJoypad = true;
		}
		else
		{
			g_JoyState.bConnectionJoypad = false;
		}
	}
}

//=============================================================================
// ジョイパッドの終了処理
//=============================================================================
void UninitJoyPad(void)
{
	XInputEnable(false);
}

//=============================================================================
// ジョイパッドの更新処理
//=============================================================================
void UpdateJoyPad(void)
{

}

//=============================================================================
// ジョイパッドの状態取得
//=============================================================================
JoyState GetJoystate(void)
{
	return g_JoyState;
}