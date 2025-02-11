//=============================================================================
//
// メイン処理 [main.h]
// Author : 荒谷 由朗
//
//=============================================================================
#ifndef _MAIN_H_
#define _MAIN_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include	<windows.h>
#include	"d3dx9.h"						// 描画処理に必要

#define		DIRECTINPUT_VERSION	(0x0800)	// ビルド時の警告対処用マクロ
#include	"dinput.h"						// 入力処理に必要
#include	"xaudio2.h"						// サウンド処理で必要

//=============================================================================
// ライブラリのリンク
//=============================================================================
#pragma comment(lib,"d3d9.lib")			// 描画処理に必要
#pragma comment(lib,"d3dx9.lib")		// [d3d9.lib]の拡張ライブラリ
#pragma comment(lib,"dxguid.lib")		// DriectXコンポーネント（部品）使用に必要
#pragma comment(lib,"winmm.lib")		// システム時刻取得
#pragma comment(lib,"dinput8.lib")		// 入力処理に必要

//=============================================================================
// マクロ定義
//=============================================================================
#define SCREEN_WIDTH	(1280)		// ウインドウの幅
#define SCREEN_HEIGHT	(720)		// ウインドウの高さ
#define FVF_VERTEX_2D	(D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1)

//=============================================================================
// 画面(モード)の種類
//=============================================================================
typedef enum
{
	MODE_TITLE = 0,
	MODE_TUTORIARU,
	MODE_GAME,
	MODE_RESULT,
	MODE_MAX,
}MODE;

//=============================================================================
// プロトタイプ宣言
//=============================================================================
LPDIRECT3DDEVICE9	GetDevice	(void);
void				SetMode		(MODE mode);
MODE				GetMode		(void);

//=============================================================================
// 構造体定義
//=============================================================================
typedef struct
{
	D3DXVECTOR3 pos;
	float		rhw;
	D3DCOLOR	col;
	D3DXVECTOR2 tex;
}VERTEX_2D;
#endif