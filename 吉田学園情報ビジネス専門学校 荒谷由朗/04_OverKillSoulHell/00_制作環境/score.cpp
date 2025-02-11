//=============================================================================
//
// スコア処理 [score.cpp]
// Author :	荒谷 由朗
//
//=============================================================================
#include "scene2D.h"
#include "renderer.h"
#include "manager.h"
#include "score.h"
#include "number.h"

//=============================================================================
// 静的メンバ変数
//=============================================================================
D3DXVECTOR3			CScore::m_pos					= {};
CNumber				*CScore::m_apNumber[MAX_NUMBER] = {};
int					CScore::m_nScore				= NULL;


//=============================================================================
// コンストラクタ
//=============================================================================
CScore::CScore() : CScene(1)
{
	m_nScore = NULL;
}

//=============================================================================
// デストラクタ
//=============================================================================
CScore::~CScore()
{
}

//=============================================================================
// 生成処理
//=============================================================================
CScore *CScore::Create(D3DXVECTOR3 pos)
{
	CScore *pScore = NULL;

	// データの代入
	m_pos = pos;

	pScore = new CScore;
	pScore->Init();

	return pScore;
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CScore::Init(void)
{
	for (int nCntScore = 0; nCntScore < MAX_NUMBER; nCntScore++)
	{
		m_apNumber[nCntScore] = new CNumber; // ←ここでCreateされている
		m_apNumber[nCntScore]->Init(D3DXVECTOR3(m_pos.x - (60.0f * nCntScore), m_pos.y, m_pos.z), 30.0f, 30.0f);
		SetObjType(CScene::OBJTYPE_SCORE);
	}
	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CScore::Uninit(void)
{
	for (int nCntScore = 0; nCntScore < MAX_NUMBER; nCntScore++)
	{
		m_apNumber[nCntScore]->Uninit();
		m_apNumber[nCntScore] = NULL;
	}

	Release();
}

//=============================================================================
// 更新処理
//=============================================================================
void CScore::Update(void)
{
}

//=============================================================================
// 描画処理
//=============================================================================
void CScore::Draw(void)
{
	for (int nCntScore = 0; nCntScore < MAX_NUMBER; nCntScore++)
	{
		m_apNumber[nCntScore]->Draw();
	}
}

//=============================================================================
// スコアの加算処理
//=============================================================================
void CScore::SetScore(int nScore)
{
	for (int nCntScore = 0; nCntScore < MAX_NUMBER; nCntScore++)
	{// スコアカウント
		// テクスチャ設定
		m_apNumber[nCntScore]->SetNumber(nScore);
		nScore /= 10;
	}
}

//=============================================================================
// スコアの取得
//=============================================================================
int CScore::GetScore(void)
{
	return m_nScore;
}

//=============================================================================
// スコアの加算
//=============================================================================
void CScore::AddScore(int nValue)
{
	int nTexData;

	m_nScore += nValue;		// スコアを代入
	nTexData = m_nScore;	// スコアを格納

	SetScore(nTexData);
}