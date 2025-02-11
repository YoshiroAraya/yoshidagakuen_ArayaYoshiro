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
#include	<Xinput.h>
#include	"d3dx9.h"

#define		DIRECTINPUT_VERSION (0x0800)	// 警告対処用
#include	"dinput.h"
#include	"xaudio2.h"					// サウンド処理で必要

//=============================================================================
// ライブラリファイル
//=============================================================================
#pragma comment (lib, "d3d9.lib")
#pragma comment (lib, "d3dx9.lib")
#pragma comment (lib, "dxguid.lib")
#pragma comment (lib, "winmm.lib")
#pragma comment (lib, "dinput8.lib")
#pragma comment (lib, "xinput.lib")

//=============================================================================
// マクロ定義
//=============================================================================
#define SCREEN_WIDTH	(1280)	// ウインドウの幅
#define SCREEN_HEIGHT	(720)	// ウインドウの高さ

// 2Ｄポリゴン頂点フォーマット( 頂点座標[3D] / 頂点カラー / テクスチャ座標 )
#define FVF_VERTEX_2D	(D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1)

// 3Ｄポリゴン頂点フォーマット( 頂点座標[3D] / 頂点カラー / テクスチャ座標 )
#define	FVF_VERTEX_3D	(D3DFVF_XYZ | D3DFVF_NORMAL | D3DFVF_DIFFUSE | D3DFVF_TEX1)

// 2Ｄポリゴン頂点フォーマットに合わせた構造体を定義
typedef struct
{
	D3DXVECTOR3 pos;
	float		rhw;
	D3DCOLOR	col;
	D3DXVECTOR2 tex;
}VERTEX_2D;

// 3Ｄポリゴン頂点フォーマットに合わせた構造体を定義
typedef struct
{
	D3DXVECTOR3 pos;	// 頂点座標
	D3DXVECTOR3 nor;	// 法線ベクトル
	D3DCOLOR	col;	// 頂点カラー
	D3DXVECTOR2 tex;	// テクスチャ
} VERTEX_3D;

//画面(モード)の種類
typedef enum
{
	MODE_TITLE = 0,
	MODE_TUTORIARU,
	MODE_GAME,
	MODE_RESULT,
	MODE_SCOER,
	MODE_MAX,
}MODE;

//=============================================================================
// プロトタイプ宣言
//=============================================================================
LPDIRECT3DDEVICE9	GetDevice	(void);
void				SetMode		(MODE mode);
MODE				GetMode		(void);
#endif