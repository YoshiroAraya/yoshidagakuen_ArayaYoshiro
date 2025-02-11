//=============================================================================
//
// ライト処理 [light.cpp]
// Author : TEAM_Fascinator
//
//=============================================================================
#include "light.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define MAX_LIGHT	(3)		// 設置するライトの数

//=============================================================================
// グローバル変数
//=============================================================================
D3DLIGHT9 g_alight[MAX_LIGHT];	// ライトの情報

//=============================================================================
// ライトの初期化処理
//=============================================================================
void InitLight(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// デバイスの取得
	D3DXVECTOR3 vecDir[MAX_LIGHT] =
	{
		{ D3DXVECTOR3(0.22f, -0.87f, 0.44f) },
		{ D3DXVECTOR3(-0.18f, 0.88f, -0.44f) },
		{ D3DXVECTOR3(0.89f, -0.11f, 0.44f) },
	};	// 設定用方向ベクトル

	//===========================================================
	// ライトをクリアする
	ZeroMemory(&g_alight, sizeof(D3DLIGHT9));

	for (int nCntLight = 0; nCntLight < MAX_LIGHT; nCntLight++)
	{
		// ライトの種類を設定
		g_alight[nCntLight].Type = D3DLIGHT_DIRECTIONAL;

		// ライトの拡散光を設定
		//g_alight[0].Diffuse = D3DXCOLOR(0.3f, 0.3f, 0.3f, 0.0f);
		//g_alight[1].Diffuse = D3DXCOLOR(0.65f, 0.65f, 0.65f, 0.0f);
		//g_alight[2].Diffuse = D3DXCOLOR(0.15f, 0.15f, 0.15f, 0.0f);

		g_alight[0].Diffuse = D3DXCOLOR(0.6f, 0.6f, 0.6f, 0.0f);
		g_alight[1].Diffuse = D3DXCOLOR(0.8f, 0.8f, 0.8f, 0.0f);
		g_alight[2].Diffuse = D3DXCOLOR(0.4f, 0.4f, 0.4f, 0.0f);

		// ライトの方向の設定
		D3DXVec3Normalize(&vecDir[nCntLight], &vecDir[nCntLight]);		// 正規化する
		g_alight[nCntLight].Direction = vecDir[nCntLight];

		// ライトを設定する
		pDevice->SetLight(nCntLight, &g_alight[nCntLight]);

		// ライトを有効にする
		pDevice->LightEnable(nCntLight, TRUE);

	}
}

//=============================================================================
// ライトの終了処理
//=============================================================================
void UninitLight(void)
{
}

//=============================================================================
// ライトの更新処理
//=============================================================================
void UpdateLight(void)
{
}

