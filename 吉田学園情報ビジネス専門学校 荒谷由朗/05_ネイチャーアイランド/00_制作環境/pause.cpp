//=============================================================================
//
// ポーズの処理 [pause.cpp]
// Author : 有馬武志
//
//=============================================================================
#include "scene.h"
#include "pause.h"
#include "manager.h"
#include "renderer.h"
#include "input.h"
#include "fade.h"
#include "sound.h"
#include "fade.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************
#define TEXTURE_NAME_0			"data\\TEXTURE\\ポーズ.png"		//読み込むテクスチャファイル
#define TEXTURE_NAME_1			"data\\TEXTURE\\pause000.jpg"	//読み込むテクスチャファイル
#define TEXTURE_NAME_2			"data\\TEXTURE\\pause001.jpg"	//読み込むテクスチャファイル
#define TEXTURE_NAME_3			"data\\TEXTURE\\pause002.jpg"	//読み込むテクスチャファイル
#define MAX_PAUSE				(128)							//ポーズの最大数
#define PAUSE_POS_X				(0)								//ポーズの左上X座標
#define PAUSE_POS_Y				(0)								//ポーズの左上Y座標
#define PAUSE_WIDTH				(SCREEN_WIDTH)					//ポーズの幅
#define PAUSE_HEIGHT			(SCREEN_HEIGHT)					//ポーズの高さ
#define PAUSE_TEXTURE_UV_U		(1.0f)							//テクスチャアニメーションU範囲
#define PAUSE_TEXTURE_UV_V		(1.0f)							//テクスチャアニメーションV範囲
#define PAUSE_SPEED				(0.003f)						//ポーズスピード

//*****************************************************************************
// プロトタイプ宣言
//*****************************************************************************

//*****************************************************************************
// グローバル変数:
//*****************************************************************************

//*****************************************************************************
// 静的メンバ変数
//*****************************************************************************
LPDIRECT3DTEXTURE9 CPause::m_pTexture[MAX_PAUSE_TEXTURE] = {};
bool			   CPause::m_bPause = false;

//===============================================================================
//　デフォルトコンストラクタ
//===============================================================================
CPause::CPause(int nPriority,CScene::OBJTYPE objType) : CScene(nPriority, objType)
{
	m_pVtxBuff = NULL;
	m_pos = D3DXVECTOR3(0.0f,0.0f,0.0f);
	m_col = D3DXCOLOR(0.0f,0.0f,0.0f,0.0f);
	m_SelectColor = 0.0f;
	m_nCntState = 0;
	m_SelectNum = 0;
	m_bUse = false;
	m_nSize = D3DXVECTOR2(0.0f,0.0f);
}
//===============================================================================
//　デストラクタ
//===============================================================================
CPause::~CPause()
{

}
//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CPause::Init(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	m_pos = D3DXVECTOR3((PAUSE_POS_X + PAUSE_WIDTH) / 2, (PAUSE_POS_Y + PAUSE_HEIGHT) / 2, 0.0f);
	m_SelectNum = 0;
	m_SelectColor = 1.0f;

	// 頂点情報を設定
	VERTEX_2D *pVtx;	// 頂点情報へのポインタ

	// 頂点バッファの生成
	pDevice->CreateVertexBuffer
	(
		sizeof(VERTEX_2D) * 4 * MAX_PAUSE_TEXTURE,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL
	);

	//ポーズの座標
	float PosPause = (SCREEN_HEIGHT / 2) - 270;

	//頂点バッファをロック
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	for(int nCount = 0;nCount < MAX_PAUSE_TEXTURE;nCount++)
	{//それ以外の場合すべての初期化

		if (nCount == 0)
		{//カウント０だった場合
			//頂点設定
			pVtx[0].pos = D3DXVECTOR3(PAUSE_POS_X, PAUSE_POS_Y, 0.0f);
			pVtx[1].pos = D3DXVECTOR3(PAUSE_WIDTH, PAUSE_POS_Y, 0.0f);
			pVtx[2].pos = D3DXVECTOR3(PAUSE_POS_X, PAUSE_HEIGHT, 0.0f);
			pVtx[3].pos = D3DXVECTOR3(PAUSE_WIDTH, PAUSE_HEIGHT, 0.0f);
			//頂点カラー設定
			pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
			pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
			pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
			pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		}
		else
		{//それ以外の場合
		 //頂点設定
			pVtx[0].pos = D3DXVECTOR3(PAUSE_WIDTH / 2 - 250, PosPause, 0.0f);			//左上
			pVtx[1].pos = D3DXVECTOR3(PAUSE_WIDTH / 2 + 250, PosPause, 0.0f);			//右上
			pVtx[2].pos = D3DXVECTOR3(PAUSE_WIDTH / 2 - 250, PosPause + 150, 0.0f);		//左下
			pVtx[3].pos = D3DXVECTOR3(PAUSE_WIDTH / 2 + 250, PosPause + 150, 0.0f);		//右下

			if (nCount == 1)
			{
				//頂点カラー設定
				pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
				pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
				pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
				pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
			}
			else
			{
				//頂点カラー設定
				pVtx[0].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
				pVtx[1].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
				pVtx[2].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
				pVtx[3].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
			}
			//選択欄の幅
			PosPause += 200;
		}

		//1.0fで固定
		pVtx[0].rhw = 1.0f;
		pVtx[1].rhw = 1.0f;
		pVtx[2].rhw = 1.0f;
		pVtx[3].rhw = 1.0f;

		//テクスチャ設定
		pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
		pVtx[1].tex = D3DXVECTOR2(PAUSE_TEXTURE_UV_U, 0.0f);
		pVtx[2].tex = D3DXVECTOR2(0.0f, PAUSE_TEXTURE_UV_V);
		pVtx[3].tex = D3DXVECTOR2(PAUSE_TEXTURE_UV_U, PAUSE_TEXTURE_UV_V);

		pVtx += 4;
	}

	//頂点バッファをアンロック
	m_pVtxBuff->Unlock();

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CPause::Uninit(void)
{
	//頂点バッファの破棄
	if (m_pVtxBuff != NULL)
	{
		m_pVtxBuff->Release();
		m_pVtxBuff = NULL;
	}

	//自身の削除
	CScene::Release();
}

//=============================================================================
// 更新処理
//=============================================================================
void CPause::Update(void)
{
	//入力情報
	CInputKeyBoard *pCInputKeyBoard = CManager::GetInput();
	CInputJoypad *pCInputJoypad = CManager::GetInputJoyPad();
	CInputMouse *pCInputMouse = CManager::GetInputMouse();

	//サウンドの情報
	CSound *pSound = CManager::GetSound();

	//フェードのポイント
	CFade::FADE pFade = CFade::GetFade();

	VERTEX_2D *pVtx;	// 頂点情報へのポインタ

	//頂点バッファをロック
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	if (pCInputKeyBoard->GetKeyboardTrigger(DIK_UP) == true || pCInputKeyBoard->GetKeyboardTrigger(DIK_W) == true || pCInputJoypad->GetTrigger(CInputJoypad::STICK_L_DOWN) == true)
	{//矢印キーの上を押したとき

		 //ポーズの選択肢移動音
		pSound->PlaySound(CSound::SOUND_LABEL_SE_PAUSE_SELECT);

		// 頂点カラー設定
		pVtx[m_SelectNum * 4 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 1 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 2 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 3 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);

		m_SelectNum = (m_SelectNum + 2) % 3;
		m_SelectColor = 1.0f;
	}
	if (pCInputKeyBoard->GetKeyboardTrigger(DIK_DOWN) == true || pCInputKeyBoard->GetKeyboardTrigger(DIK_S) == true || pCInputJoypad->GetTrigger(CInputJoypad::STICK_L_UP) == true)
	{//矢印キーの下を押したとき

		//ポーズの選択し移動音
		pSound->PlaySound(CSound::SOUND_LABEL_SE_PAUSE_SELECT);

		// 頂点カラー設定
		pVtx[m_SelectNum * 4 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 1 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 2 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);
		pVtx[m_SelectNum * 4 + 3 + 4].col = D3DXCOLOR(0.5f, 0.5f, 0.5f, 1.0f);

		m_SelectNum = (m_SelectNum + 1) % 3;
		m_SelectColor = 1.0f;
	}

	//点滅処理
	//選択しているカラーの値を減らしていく
	m_SelectColor -= 0.009f;

	if (m_SelectColor < 0.5f)
	{//信託しているカラーが0.5を切ったらカラーの値が増えてく
		m_SelectColor = 1.0f;
	}

	// 頂点カラー設定
	pVtx[m_SelectNum * 4 + 4].col = D3DXCOLOR(m_SelectColor, m_SelectColor, m_SelectColor, 1.0f);
	pVtx[m_SelectNum * 4 + 1 + 4].col = D3DXCOLOR(m_SelectColor, m_SelectColor, m_SelectColor, 1.0f);
	pVtx[m_SelectNum * 4 + 2 + 4].col = D3DXCOLOR(m_SelectColor, m_SelectColor, m_SelectColor, 1.0f);
	pVtx[m_SelectNum * 4 + 3 + 4].col = D3DXCOLOR(m_SelectColor, m_SelectColor, m_SelectColor, 1.0f);

	//頂点バッファをアンロック
	m_pVtxBuff->Unlock();

	if (pCInputKeyBoard->GetKeyboardTrigger(DIK_RETURN) == true || pCInputMouse->GetMouseTrigger(0) == true || pCInputJoypad->GetTrigger(CInputJoypad::BUTTON_B) == true || pCInputJoypad->GetTrigger(CInputJoypad::BUTTON_A) == true)
	{
		if (m_SelectNum == 0)
		{
			//ポーズを閉じる
			CGame::SetPause(false);
		}
		else if (m_SelectNum == 1)
		{
			//ゲームの最初に戻る
			CFade::Create(CManager::MODE_GAME);
		}
		else if (m_SelectNum == 2)
		{
			//ゲームのタイトルに戻る
			CFade::Create(CManager::MODE_TITLE);
		}

		if (pFade == CFade::FADE_NONE)
		{
			//ポーズの選択の決定音
			pSound->PlaySound(CSound::SOUND_LABEL_SE_PAUSE_SELECT);
		}
	}
}
//=============================================================================
// 描画処理
//=============================================================================
void CPause::Draw(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	//ポリゴンの描画
	for (int nCount = 0; nCount < MAX_PAUSE_TEXTURE; nCount++)
	{//ビルボードをカウント
		// 頂点バッファをデータストリームに設定
		pDevice->SetStreamSource
		(
			0,
			m_pVtxBuff,
			0,
			sizeof(VERTEX_2D)
		);

		//頂点フォーマット
		pDevice->SetFVF(FVF_VERTEX_2D);

		pDevice->SetTexture(0, m_pTexture[nCount]);

		//ポリゴンの描画
		pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, nCount * 4, 2);
	}
}
//===============================================================================
//　クリエイト
//===============================================================================
CPause * CPause::Create()
{
	CPause *pPause = NULL;

	//NULLチェック
	if (pPause == NULL)
	{//メモリの動的確保

		pPause = new CPause;

		if (pPause != NULL)
		{
			//オブジェクトクラスの生成
			pPause->Init();
		}
	}

	return pPause;
}
//===============================================================================
// テクスチャの読み込み
//===============================================================================
HRESULT CPause::Load(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	// テクスチャの生成
	D3DXCreateTextureFromFile
	(
		pDevice,
		TEXTURE_NAME_0,
		&m_pTexture[0]
	);
	// テクスチャの生成
	D3DXCreateTextureFromFile
	(
		pDevice,
		TEXTURE_NAME_1,
		&m_pTexture[1]
	);
	// テクスチャの生成
	D3DXCreateTextureFromFile
	(
		pDevice,
		TEXTURE_NAME_2,
		&m_pTexture[2]
	);
	// テクスチャの生成
	D3DXCreateTextureFromFile
	(
		pDevice,
		TEXTURE_NAME_3,
		&m_pTexture[3]
	);

	return S_OK;
}
//===============================================================================
// テクスチャの破棄
//===============================================================================
void CPause::UnLoad(void)
{
	for (int nCount = 0; nCount < MAX_PAUSE_TEXTURE; nCount++)
	{
		//テクスチャーの破棄
		if (m_pTexture[nCount] != NULL)
		{
			m_pTexture[nCount]->Release();
			m_pTexture[nCount] = NULL;
		}
	}
}