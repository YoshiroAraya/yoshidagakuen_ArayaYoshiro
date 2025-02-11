//=============================================================================
//
// チュートリアル処理 [tutorial.h]
// Author :		荒谷由朗
//
//=============================================================================
#ifndef _TUTORIAL_H_
#define _TUTORIAL_H_

#include "main.h"
#include "manager.h"

#define GAUGE_SIZE (140.0f)		// ゲージのサイズ

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CWall;
class CObject;
class CEnemy;

//=============================================================================
// クラスの定義
//=============================================================================
class CTutorial
{
public:
	CTutorial();
	~CTutorial();

	HRESULT Init	(void);		// 初期化処理
	void	Update	(void);		// 更新処理
	void	Uninit	(void);		// 終了処理
	void	Draw	(void);		// 描画処理

	void	SetTex	(void);		// テクスチャの生成
	void	SetFloor(void);		// 床の生成
	void	SetWall	(void);		// 壁の生成
	void	SetObje	(void);		// オブジェクトの生成

	static CPlayer *GetPlayer	(void) { return m_pPlayer; };
	static CObject *Get3DObject	(void) { return m_pObject; }

	bool GetWarning	(void)			{ return m_bWarning; }
	void SetWarning	(bool Warning)	{ m_bWarning = Warning; }

private:
	static CPlayer		*m_pPlayer;			// プレイヤーのポインタ
	static CWall		*m_pWall;			// 壁のポインタ
	static CObject		*m_pObject;			// オブジェクトのポインタ
	static CEnemy		*m_pEnemy;			// 敵のポインタ
	bool				m_bWarning;			// 警戒
};
#endif