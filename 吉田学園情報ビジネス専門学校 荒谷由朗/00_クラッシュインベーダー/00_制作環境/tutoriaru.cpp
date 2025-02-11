//=============================================================================
//
// チュートリアル処理 [tutoriaru.cpp]
// Author : 荒谷 由朗
//
//=============================================================================
#include "main.h"
#include "title.h"
#include "input.h"
#include "fade.h"
#include "sound.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define BG_TEXTURENAME		"data/TEXTURE/tutorial.jpg"		// 読み込むテクスチャ
#define BG_POS_X			(0)								// 頂点座標（X座標）
#define BG_POS_Y			(0)								// 頂点座標（Y座標）
#define BG_POS_WIDTH		(SCREEN_WIDTH)					// DirectXの幅
#define BG_POS_HEIGHT		(SCREEN_HEIGHT)					// DirectXの高さ

//=============================================================================
// グローバル変数
//=============================================================================
LPDIRECT3DTEXTURE9		g_pTextureTutoriaru = NULL;		// テクスチャへのポインタ
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffTutoriaru = NULL;		// 頂点バッファへのポインタ

//=============================================================================
// タイトル画面の初期化処理
//=============================================================================
void InitTutoriaru(void)
{
	LPDIRECT3DDEVICE9 pDevice;		// デバイスへのポインタ

	// デバイスの取得
	pDevice = GetDevice();

	// テクスチャの読み込み
	D3DXCreateTextureFromFile(pDevice, BG_TEXTURENAME, &g_pTextureTutoriaru);

	// 頂点バッファの生成
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffTutoriaru,
		NULL);

	VERTEX_2D *pVtx;			// 頂点情報へのポインタ

	// 頂点バッファをロックし、頂点データへのポインタを取得
	g_pVtxBuffTutoriaru->Lock(0, 0, (void**)&pVtx, 0);

	// 頂点情報の設定
	pVtx[0].pos = D3DXVECTOR3(BG_POS_X, BG_POS_Y, 0.0f);			// 頂点座標(X座標,Y座標)
	pVtx[1].pos = D3DXVECTOR3(BG_POS_WIDTH, BG_POS_Y, 0.0f);		// 頂点座標(X座標,Y座標)
	pVtx[2].pos = D3DXVECTOR3(BG_POS_X, BG_POS_HEIGHT, 0.0f);		// 頂点座標(X座標,Y座標)
	pVtx[3].pos = D3DXVECTOR3(BG_POS_WIDTH, BG_POS_HEIGHT, 0.0f);	// 頂点座標(X座標,Y座標)

	// rhwの設定
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	// 頂点カラーの設定
	pVtx[0].col = D3DCOLOR_RGBA(255, 255, 255, 200);	// 色の指定（０〜２５５）&透明度（０〜２５５）
	pVtx[1].col = D3DCOLOR_RGBA(255, 255, 255, 200);	// 色の指定（０〜２５５）&透明度（０〜２５５）
	pVtx[2].col = D3DCOLOR_RGBA(255, 255, 255, 200);	// 色の指定（０〜２５５）&透明度（０〜２５５)
	pVtx[3].col = D3DCOLOR_RGBA(255, 255, 255, 200);	// 色の指定（０〜２５５）&透明度（０〜２５５)

	// テクスチャ座標の設定
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);		// Uが幅、Vが高さ　(0.0f〜1.0f）
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);		// Uが幅、Vが高さ　(0.0f〜1.0f）
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);		// Uが幅、Vが高さ　(0.0f〜1.0f）
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);		// Uが幅、Vが高さ　(0.0f〜1.0f）

	// 頂点バッファのアンロック
	g_pVtxBuffTutoriaru->Unlock();
}

//=============================================================================
// 終了処理
//=============================================================================
void UninitTutoriaru(void)
{
	// テクスチャの破棄
	if (g_pTextureTutoriaru != NULL)
	{
		g_pTextureTutoriaru->Release();
		g_pTextureTutoriaru = NULL;
	}

	// 頂点バッファの破棄
	if (g_pVtxBuffTutoriaru != NULL)
	{
		g_pVtxBuffTutoriaru->Release();
		g_pVtxBuffTutoriaru = NULL;
	}
}

//=============================================================================
// 更新処理
//=============================================================================
void UpdateTutoriaru(void)
{
	FADE fade;

	fade = GetFade();
	// 決定キーが押されたか
	if (GetKeyboardTrigger(DIK_RETURN) == true)
	{
		if (fade != FADE_OUT)
		{
			PlaySound(SOUND_LABEL_SE_DECIDE);
			// モード設定
			SetFade(MODE_GAME);
		}
	}
}

//=============================================================================
// 描画処理
//=============================================================================
void DrawTutoriaru(void)
{
	LPDIRECT3DDEVICE9 pDevice;			// デバイスのポインタ

	// デバイスを取得する
	pDevice = GetDevice();

	// 頂点バッファをデバイスのデータストリームに設定
	pDevice->SetStreamSource(0, g_pVtxBuffTutoriaru, 0, sizeof(VERTEX_2D));

	// 頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	// テクスチャの設定
	pDevice->SetTexture(0, g_pTextureTutoriaru);

	// ポリゴンの描画
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);
}