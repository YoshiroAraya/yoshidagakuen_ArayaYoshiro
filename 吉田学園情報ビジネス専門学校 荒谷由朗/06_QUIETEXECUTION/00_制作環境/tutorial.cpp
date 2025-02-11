//=============================================================================
//
// チュートリアル処理 [tutorial.cpp]
// Author :		荒谷由朗
//
//=============================================================================
#include "tutorial.h"
#include "manager.h"
#include "fade.h"
#include "input.h"
#include "sound.h"
#include "MeshField.h"
#include "player.h"
#include "enemy.h"
#include "bullet.h"
#include "texture.h"
#include "wall.h"
#include "object.h"
#include "particle.h"

//*****************************************************************************
// 静的メンバ変数
//*****************************************************************************
CPlayer			*CTutorial::m_pPlayer	= NULL;
CWall			*CTutorial::m_pWall		= NULL;
CObject			*CTutorial::m_pObject	= NULL;
CEnemy			*CTutorial::m_pEnemy	= NULL;

//=============================================================================
//　コンストラクタ
//=============================================================================
CTutorial::CTutorial()
{
	m_pPlayer	= NULL;
	m_bWarning	= false;
}

//=============================================================================
//　デストラクタ
//=============================================================================
CTutorial::~CTutorial()
{
}

//=============================================================================
//　初期化処理
//=============================================================================
HRESULT CTutorial::Init(void)
{
	//===================================
	// ロード
	//===================================
	// テクスチャの読み込み
	CTexture::Load();

	// パーティクルのテクスチャの読み込み
	CParticle::Load();

	//壁のテクスチャの読み込み
	m_pWall->Load();

	//オブジェクトのテクスチャの読み込み
	m_pObject->Load();

	//===================================
	// 生成
	//===================================
	SetTex();		  // UI
	SetFloor();		  // 床
	SetWall();		  // 壁
	SetObje();		  // オブジェクト

	if (m_pPlayer == NULL)
	{// プレイヤーの生成
		m_pPlayer->Create(D3DXVECTOR3(0.0f, PLAYER_DOWN_HEIGHT, 0.0f));
	}

	// サウンドの生成
	CSound *pSound = CManager::GetSound();
	pSound->PlaySound(CSound::SOUND_LABEL_BGM_TUTORIAL);

	return S_OK;
}

//=============================================================================
//　終了処理
//=============================================================================
void CTutorial::Uninit(void)
{
	CTexture::UnLoad();			// テクスチャ
	CParticle::Unload();		// パーティクル

	// フェード以外削除
	CScene::NotFadeReleseAll();

	// サウンドの削除
	CSound *pSound = CManager::GetSound();
	if (pSound != NULL)
	{
		pSound->AllStopSound();
	}
}

//=============================================================================
//　更新処理
//=============================================================================
void CTutorial::Update(void)
{
	CFade::FADE		fade	= CFade::GetFade();					// フェードの取得
	CInputKeyBoard	*pKey	= CManager::GetInputKeyboard();		// 入力情報の取得

	if (fade == CFade::FADE_IN)
	{
		if (pKey->GetKeyboardTrigger(DIK_P) == true)
		{// ポーズ
			m_bWarning = m_bWarning ? false : true;
			CSound *pSound = CManager::GetSound();
			pSound->PlaySound(CSound::SOUND_LABEL_SE_PAUSE_OPENCLOSE);
		}
	}
}

//=============================================================================
//　描画処理
//=============================================================================
void CTutorial::Draw(void)
{
}

//=============================================================================
//　テクスチャの生成
//=============================================================================
void CTutorial::SetTex(void)
{// CTexture::Create(座標, サイズ, テクスチャの種類);
 // HPゲージ
	CTexture::Create(D3DXVECTOR3(180.0f, 30.0f, 0.0f), D3DXVECTOR2(170.0f, 20.0f), 4);				// ゲージ(枠)
	CTexture::Create(D3DXVECTOR3(33.0f, 30.0f, 0.0f), D3DXVECTOR2(10.0f, 10.0f), 5);				// HPアイコン
	CTexture::Create(D3DXVECTOR3(60.0f, 30.0f, 0.0f), D3DXVECTOR2(GAUGE_SIZE, 5.0f), 6);			// HPゲージ

	// 危険度
	CTexture::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, 50.0f, 0.0f), D3DXVECTOR2(40.0f, 40.0f), 7);		// 危険度(背景)
	CTexture::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, 50.0f, 0.0f), D3DXVECTOR2(35.0f, 35.0f), 8);		// 危険度(マーク)

	// レティクル
	CTexture::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f), D3DXVECTOR2(30.0f, 30.0f), 12);

	// 操作画面
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(250.0f, 100.0f), 13);			// 表示背景
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 14);			// カメラ操作
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 15);			// 移動操作
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 16);			// ジャンプ操作
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 17);			// 攻撃操作
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 18);			// ライフ説明
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 19);			// 危険度説明
	CTexture::Create(D3DXVECTOR3(1040.0f, 100.0f, 0.0f), D3DXVECTOR2(240.0f, 100.0f), 20);			// 終了説明

}

//=============================================================================
//　床の生成
//=============================================================================
void CTutorial::SetFloor(void)
{// メッシュフィールドの生成
 // Create(座標、サイズ、分割数)
	CMeshField::Create(D3DXVECTOR3(-2500.0f, 0.0f, 1000.0f), 5000.0f, 9000.0f, 10, 8);		// ステージ
}

//=============================================================================
//　壁の生成
//=============================================================================
void CTutorial::SetWall(void)
{
	CWall::Create(D3DXVECTOR3(2500.0f, 0.0f, -3500.0f), D3DXVECTOR2(4500.0f, MAX_WALL_HEIGHT), D3DXVECTOR3(0.0f, 0.5f, 0.0f), 0);	// ステージ
	CWall::Create(D3DXVECTOR3(-2500.0f, 0.0f, -3500.0f), D3DXVECTOR2(4500.0f, MAX_WALL_HEIGHT), D3DXVECTOR3(0.0f, 0.5f, 0.0f), 0);
	CWall::Create(D3DXVECTOR3(0.0f, 0.0f, 1000.0f), D3DXVECTOR2(2500.0f, MAX_WALL_HEIGHT), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 0);
	CWall::Create(D3DXVECTOR3(0.0f, 0.0f, -8000.0f), D3DXVECTOR2(2500.0f, MAX_WALL_HEIGHT), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 0);
}

//=============================================================================
//　オブジェクトの生成
//=============================================================================
void CTutorial::SetObje(void)
{// CObject::Create( 座標 , 移動量 , 使用する画像の番号 , 生成するオブジェクトの番号 , オブジェクトのタイプ , 当たり判定の有無 );
	// クリスタル
	CObject::Create(D3DXVECTOR3(0.0f, 0.0f, -7000.0f), 0.0f, 2, 2, CObject::MOVETYPE_NOT, 2);
}