//=============================================================================
//
// ゲーム処理 [game.h]
// Author :	荒谷 由朗
//
//=============================================================================
#ifndef _GAME_H_
#define _GAME_H_

#include "main.h"

//=============================================================================
// クラスの定義
//=============================================================================
class CGame
{
public:
	CGame();
	~CGame();

	HRESULT			Init		(void);
	void			Update		(void);
	void			Uninit		(void);

	static CPlayer	*GetPlayer	(void);
	bool			GetPause	(void) { return m_bPause; }
	void			SetPause	(bool bPause);

private:
	static CPlayer		*m_pPlayer;
	int					m_nCounter;
	bool				m_bPause;
};
#endif