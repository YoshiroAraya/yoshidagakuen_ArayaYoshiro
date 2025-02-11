//=============================================================================
//
// メイン処理 [scene3D.h]
// Author :		荒谷由朗
//
//=============================================================================
#ifndef _SCENE3D_H_
#define _SCENE3D_H_

#include "main.h"
#include "scene.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************
#define MAX_BILLBOORD_TEX		(10)

//=====================
//  CSceneの派生クラス
//=====================
class CScene3D : public CScene
{
public://誰でも扱える
	typedef enum
	{
		TYPE_NONE = 0,
		TYPE_BULLET,
		TYPE_BILLBOORD,
		TYPE_WALL,
		TYPE_GROUND,
		TYPE_EFFECT,
		TYPE_SHADOW,
		TYPE_MAX
	}TYPE;

	CScene3D(int nPriority = 3, CScene::OBJTYPE objType = CScene::OBJTYPE_3DPOLYGON);
	~CScene3D();
	static CScene3D *Create();

	HRESULT Init		(void);
	void	Uninit		(void);
	void	Update		(void);
	void	Draw		(void);
	void	BindTexture	(LPDIRECT3DTEXTURE9 Texture);

	D3DXVECTOR3 GetPosition		(void)				{ return m_pos; }
	D3DXVECTOR3 GetRotation		(void)				{ return m_rot; }
	D3DXVECTOR2 GetSize			(void)				{ return m_size; }
	D3DXVECTOR3 GetMove			(void)				{ return m_Move; }
	D3DXCOLOR   GetColor		(void)				{ return m_color; }
	int			GetTexType		(void)				{ return m_TexType; }
	void		SetTypeNumber	(TYPE Type)			{ m_Type = Type; }
	void		SetTexType		(int Type)			{ m_TexType = Type; }
	void		SetMove			(D3DXVECTOR3 move)	{ m_Move = move; }
	void		SetPosition		(D3DXVECTOR3 pos)	{ m_pos = pos; }
	void		SetWall			(D3DXVECTOR3 pos, D3DXVECTOR3 rot, D3DXVECTOR2 nSize);
	void		SetPosSize		(D3DXVECTOR3 pos,D3DXVECTOR2 size);
	void		SetGroundPosSize(D3DXVECTOR3 pos, D3DXVECTOR2 size);
	void		SetColor		(D3DXCOLOR *Color);
	void		SetNor			(D3DXVECTOR3 Nor);
	void		SetVtxEffect	(float fRadius);
	void		SetRotation		(D3DXVECTOR3 rot)	{ m_rot = rot; }
	void		SetTex			(int nAnimLineNum, int nAnimPattern, D3DXVECTOR2 TexUV, D3DXVECTOR2 TexMoveUV);	// アニメーション情報設定


private://個人でのみ使う
	LPDIRECT3DTEXTURE9		m_pTexture;						// テクスチャへのポインタ
	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff;						// 頂点バッファへのポインタ
	D3DXVECTOR3				m_pos;							// 位置
	D3DXVECTOR3				m_rot;							// 向き
	D3DXVECTOR2				m_size;							// サイズ
	D3DXVECTOR3				m_Move;							// 動き
	D3DXCOLOR				m_color;						// 色
	D3DXMATRIX				m_mtxWorld;						// ワールドマトリックス
	TYPE					m_Type;							// ビルボード：１かエフェクト：２か
	int						m_TexType;						// テクスチャのタイプ
	D3DXVECTOR2				m_TexUV;						// UV
};
#endif