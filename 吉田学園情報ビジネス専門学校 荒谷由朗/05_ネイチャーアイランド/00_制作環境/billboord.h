//=============================================================================
//
// ビルボードの処理 [billboord.h]
// Author : 有馬武志
//
//=============================================================================
#ifndef _BILLBOORD_H_
#define _BILLBOORD_H_

#include "main.h"
#include "scene.h"
#include "scene3D.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//=====================
//  CSceneの派生クラス
//=====================
class CBillBoord : public CScene3D
{
public://誰でも扱える
	CBillBoord();
	~CBillBoord();
	static HRESULT Load(void);
	static void UnLoad(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static CBillBoord *Create(D3DXVECTOR3 pos, D3DXVECTOR2 size,int nTexType);

private://個人でのみ使う
	static LPDIRECT3DTEXTURE9	m_pTexture[MAX_BILLBOORD_TEX];	// テクスチャへのポインタ
	LPDIRECT3DVERTEXBUFFER9		m_pVtxBuff;						// 頂点バッファへのポインタ
	D3DXVECTOR3					m_pos;							// 位置
	D3DXVECTOR2					m_size;							// サイズ
	float						m_bOnOff;
};
#endif