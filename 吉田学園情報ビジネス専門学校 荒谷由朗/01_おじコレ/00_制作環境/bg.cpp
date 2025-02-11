//=============================================================================
//
// 背景処理 [bg.cpp]
// Author : 荒谷 由朗
//
//=============================================================================
#include "main.h"
#include "bg.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define BG_TEXTURENAME	"data/TEXTURE/RunBG.png"		// 背景として表示するファイルの名前
#define BG_POS_X		(0)								// ポリゴンの開始X座標
#define BG_POS_Y		(0)								// ポリゴンの開始Y座標
#define BG_WIDTH		(SCREEN_WIDTH)					// 横幅
#define BG_HEIGHT		(SCREEN_HEIGHT)					// 縦幅
#define TIME_SPEED		(2)								// 背景スクロールのスピード

//=============================================================================
// グローバル変数
//=============================================================================
LPDIRECT3DTEXTURE9		g_pTextureBG	= NULL;			// テクスチャへのポインタ
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffBG	= NULL;			// 頂点バッファへのポインタ
int						g_nCntBG		= 0;
int						nCntBG;

//=============================================================================
// ポリゴン初期化処理
//=============================================================================
void InitBG(void)
{
	LPDIRECT3DDEVICE9 pDevice;
	nCntBG = 0;

	// デバイスの取得
	pDevice = GetDevice();

	// テクスチャの読み込み
	D3DXCreateTextureFromFile(pDevice, BG_TEXTURENAME, &g_pTextureBG);

	// 頂点バッファの生成
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffBG,
		NULL);

	// 頂点バッファへのポインタ
	VERTEX_2D*pVtx;

	// 頂点バッファをロックし、頂点データへのポインタを取得
	g_pVtxBuffBG->Lock(0, 0, (void**)&pVtx, 0);

	// 頂点座標の設定
	pVtx[0].pos = D3DXVECTOR3(BG_POS_X, BG_POS_Y, 0.0f);
	pVtx[1].pos = D3DXVECTOR3(BG_WIDTH, BG_POS_Y, 0.0f);
	pVtx[2].pos = D3DXVECTOR3(BG_POS_X, BG_HEIGHT, 0.0f);
	pVtx[3].pos = D3DXVECTOR3(BG_WIDTH, BG_HEIGHT, 0.0f);

	// rwhwの設定
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	// 頂点カラー
	pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

	// テクスチャ
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

	// 頂点バッファをアンロックする
	g_pVtxBuffBG->Unlock();
}

//=============================================================================
// 終了処理
//=============================================================================
void UninitBG(void)
{
	// テクスチャの破棄
	if (g_pTextureBG != NULL)
	{
		g_pTextureBG->Release();
		g_pTextureBG = NULL;
	}

	// 頂点バッファの破棄
	if (g_pVtxBuffBG != NULL)
	{
		g_pVtxBuffBG->Release();
		g_pVtxBuffBG = NULL;
	}
}

//=============================================================================
// 更新処理
//=============================================================================
void UpdateBG(void)
{
	// 頂点バッファへのポインタ
	VERTEX_2D *pVtx;

	nCntBG++;		// カウンターの加算

	// 頂点バッファをロックし、頂点データへのポインタを取得
	g_pVtxBuffBG->Lock(0, 0, (void**)&pVtx, 0);

	if ((nCntBG % TIME_SPEED) == 0)		// アニメーションの速さを変えられる
	{
	    g_nCntBG++;		// カウンターの加算
		// テクスチャ
		pVtx[0].tex = D3DXVECTOR2(0.002f * g_nCntBG + 0.0f, 0.0f);
		pVtx[1].tex = D3DXVECTOR2(0.002f * g_nCntBG + 1.0f, 0.0f);
		pVtx[2].tex = D3DXVECTOR2(0.002f * g_nCntBG + 0.0f, 1.0f);
		pVtx[3].tex = D3DXVECTOR2(0.002f * g_nCntBG + 1.0f, 1.0f);
	}

	// 頂点バッファをアンロックする
	g_pVtxBuffBG->Unlock();

}

//=============================================================================
// 描画処理
//=============================================================================
void DrawBG(void)
{
	LPDIRECT3DDEVICE9 pDevice;	// デバイスへのポインタ

	// デバイスを取得
	pDevice = GetDevice();

	// 頂点バッファをデバイスのデータストリームに設定
	pDevice->SetStreamSource(0, g_pVtxBuffBG, 0, sizeof(VERTEX_2D));

	// 頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	// テクスチャの設定
	pDevice->SetTexture(0, g_pTextureBG);

	// ポリゴンの描画
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);
}