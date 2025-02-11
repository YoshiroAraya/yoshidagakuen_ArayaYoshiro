//=============================================================================
//
// 数字処理 [number.cpp]
// Author : keisuke komatsu
//
//=============================================================================
#include "number.h"
#include "manager.h"
#include "renderer.h"
#include "scene2D.h"

//=============================================================================
//	静的メンバ変数
//=============================================================================
LPDIRECT3DTEXTURE9	CNumber::m_pTexture = NULL;

//=============================================================================
//	マクロ定義
//=============================================================================
#define NUMBER_TEX			"data/TEXTURE/number000.png"	// 数字テクスチャ
#define NUMBER_SIZE_X		(35.0f)							// 数字の横幅
#define NUMBER_SIZE_Y		(55.0f)							// 数字の縦幅

//=============================================================================
// コンストラクタ
//=============================================================================
CNumber::CNumber()
{
	m_pVtxBuff = NULL;
}

//=============================================================================
// デストラクタ
//=============================================================================
CNumber::~CNumber()
{

}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CNumber::Init(D3DXVECTOR3 pos)
{
	// デバイス取得
	CRenderer *pRenderer = CManager::GetRenderer();
	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();
	
	//ゲームの情報
	CManager::MODE pMode = CManager::GetMode();

	// 頂点バッファ生成
	pDevice->CreateVertexBuffer(
		sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL);

	// 頂点情報へのポインタ
	VERTEX_2D * pVtx;

	// 頂点バッファをロックし、頂点データへのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (pMode == CManager::MODE_GAME)
	{
		pVtx[0].pos = D3DXVECTOR3(pos.x - NUMBER_SIZE_X, pos.y - NUMBER_SIZE_Y, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + NUMBER_SIZE_X, pos.y - NUMBER_SIZE_Y, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(pos.x - NUMBER_SIZE_X, pos.y + NUMBER_SIZE_Y, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + NUMBER_SIZE_X, pos.y + NUMBER_SIZE_Y, 0.0f);
	}
	else if (pMode == CManager::MODE_RANKING)
	{
		pVtx[0].pos = D3DXVECTOR3(pos.x - 15.0f, pos.y - 25.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(pos.x + 15.0f, pos.y - 25.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(pos.x - 15.0f, pos.y + 25.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(pos.x + 15.0f, pos.y + 25.0f, 0.0f);
	}

	for (int nCntrhw = 0; nCntrhw < 4; nCntrhw++)
	{
		pVtx[nCntrhw].rhw = 1.0f;
	}

	for (int nCntCol = 0; nCntCol < 4; nCntCol++)
	{
		pVtx[nCntCol].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	}

	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(0.1f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(0.1f, 1.0f);

	// 頂点バッファをアンロック
	m_pVtxBuff->Unlock();

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CNumber::Uninit(void)
{
	// 頂点バッファ破棄
	if (m_pVtxBuff != NULL)
	{
		m_pVtxBuff->Release();
		m_pVtxBuff = NULL;
	}
}

//=============================================================================
// 更新処理
//=============================================================================
void CNumber::Update(void)
{

}

//=============================================================================
// 描画処理
//=============================================================================
void CNumber::Draw(void)
{
	// デバイス取得
	LPDIRECT3DDEVICE9 	pDevice = CManager::GetRenderer()->GetDevice();

	// 頂点バッファをデータストリームに設定
	pDevice->SetStreamSource(0, m_pVtxBuff, 0, sizeof(VERTEX_2D));

	// 頂点フォーマット設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	// テクスチャ設定
	pDevice->SetTexture(0, m_pTexture);

	// ポリゴン描画
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);
}

//=============================================================================
// ナンバーの設定
//=============================================================================
void CNumber::SetNumber(int nNumber)
{
	VERTEX_2D *pVtx;				//頂点情報へのポインタ

	//頂点バッファをロックし頂点データのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	////テクスチャ座標
	pVtx[0].tex = D3DXVECTOR2((nNumber % 10) * 0.1f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2((nNumber % 10) * 0.1f + 0.1f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2((nNumber % 10) * 0.1f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2((nNumber % 10) * 0.1f + 0.1f, 1.0f);

	//頂点バッファをアンロックする
	m_pVtxBuff->Unlock();
}

//=============================================================================
//	読み込み処理
//=============================================================================
HRESULT CNumber::Load(void)
{
	// デバイス取得
	CRenderer *pRenderer = CManager::GetRenderer();
	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();

	// テクスチャ生成
	D3DXCreateTextureFromFile(pDevice, NUMBER_TEX, &m_pTexture);

	return S_OK;
}

//=============================================================================
//	開放処理
//=============================================================================
void CNumber::Unload(void)
{
	//テクスチャ破棄
	if (m_pTexture != NULL)
	{
		m_pTexture->Release();
		m_pTexture = NULL;
	}
}