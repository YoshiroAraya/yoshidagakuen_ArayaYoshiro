//=============================================================================
//
// メイン処理 [main.h]
// Author :		荒谷由朗
//
//=============================================================================
#ifndef _MAIN_H_
#define _MAIN_H_

//=============================================================================
// ヘッダファイルのインクルード
//=============================================================================
#include <windows.h>
#include <time.h>
#include <Xinput.h>
#include <xaudio2.h>
#include "d3dx9.h"						// 描画処理に必要

#include "dinput.h"						// 入力処理に必要

//=============================================================================
// ライブラリファイルのリンク
//=============================================================================
#pragma comment(lib,"d3d9.lib")			// 描画処理に必要
#pragma comment(lib,"d3dx9.lib")		// [d3d9.lib]の拡張ライブラリ
#pragma comment(lib,"dxguid.lib")		// DirectXコンポーネント(部品)使用に必要
#pragma comment(lib,"winmm.lib")		// システム時刻取得
#pragma comment(lib,"dinput8.lib")		// 入力処理に必要
#pragma comment(lib, "xinput.lib")		// コントローラーの処理

//=============================================================================
// マクロ定義
//=============================================================================
#define SCREEN_WIDTH	(1280)			// ウィンドウの幅
#define SCREEN_HEIGHT	(720)			// ウィンドウの高さ
#define FVF_VERTEX_2D	(D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1)

//=============================================================================
// 前方宣言
//=============================================================================
class CRenderer;
class CFade;
class CTitle;
class CTutorial;
class CGame;
class CResult;
class CScene;
class CInput;
class CPause;
class CPlayer;
class CGauge;
class CSound;
//=============================================================================
// プロトタイプ宣言
//=============================================================================
int	GetFPS(void);

#endif