//=============================================================================
//
// プレイヤー処理 [model.h]
// Author :		荒谷由朗
//
//=============================================================================
#ifndef _MODEL_H_
#define _MODEL_H_

#include "main.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//=====================
//  CModel 単独クラス
//=====================
class CModel
{
public://誰でも扱える
	CModel();
	~CModel();

	HRESULT Init		(void);
	void	Uninit		(void);
	void	Update		(void);
	void	Draw		(void);

	void		SetPos		(D3DXVECTOR3 pos)	{ m_Pos = pos; }
	void		Setrot		(D3DXVECTOR3 rot)	{ m_Rot = rot; }
	void		SetParent	(CModel *pModel)	{ m_pParent = pModel; }
	void		BindModel	(LPD3DXMESH mesh, LPD3DXBUFFER buff, DWORD nummat, LPDIRECT3DTEXTURE9 *texture) { m_pMesh = mesh; m_pBuffMat = buff; m_nNumMat = nummat; m_pTexture = texture; }
	D3DXMATRIX	GetMtxWorld	(void)				{ return m_mtxWorld; }
	D3DXVECTOR3 GetPos		(void)				{ return m_Pos; }
	void		SetCol		(D3DXCOLOR col)		{ m_col = col; m_bColChange = true; }

private://個人でのみ使う
	LPD3DXMESH					m_pMesh;						// メッシュ情報へのポインタ
	LPD3DXBUFFER				m_pBuffMat;						// マテリアルの情報へのポインタ
	DWORD						m_nNumMat;						// マテリアルの情報数
	LPDIRECT3DTEXTURE9			*m_pTexture;
	D3DXMATRIX					m_mtxWorld;						// ワールドマトリックス
	D3DXVECTOR3					m_VtxMin, m_VtxMax;				// モデルの最小値・最大値
	D3DXVECTOR3					m_Pos;							// 位置
	D3DXVECTOR3					m_Rot;							// 向き
	CModel						*m_pParent;						// 親モデルへのポインタ
	D3DXCOLOR					m_col;							// 色
	bool						m_bColChange;					// 色の変化フラグ
};
#endif