//=============================================================================
//
// アニメーションの処理 [motion.cpp]
// Author : 荒谷 由朗
//
//=============================================================================
#include "enemyarchermotion2.h"
#include "enemyarchertext2.h"
#include "enemyarcher2.h"

//------------------------------------------------------------------------
// マクロ定義															  |
//------------------------------------------------------------------------
#define MOVE_PARTS (15)			// アニメーションで動くパーツ数

//------------------------------------------------------------------------
// グローバル変数宣言                                                      |
//------------------------------------------------------------------------
EnemyArcherTex_2 *g_aEnemyArcherTex;					// テキストデータの取得
ENEMYARCHER_2 *pEnemyArcher;				// エネミーデータの取得
EnemyArcherMotion_2 g_EnemyArcherMotion;
int g_CntEnemyArcherMotion_2 = 0;

//------------------------------------------------------------------------
// 初期化処理															  |
//------------------------------------------------------------------------
void InitEnemyArcherMotion_2(void)
{
	int nNumEnemyMotion = 0;

	// ファイルデータの取得
	g_aEnemyArcherTex = GetEnemyArcherTex_2();

	// エネミーの取得
	pEnemyArcher = GetEnemyARCHER_2();

	// 初期設定
	g_EnemyArcherMotion.nNumEnemymotion = 0;
	g_EnemyArcherMotion.nCntFlame = 0;
	g_EnemyArcherMotion.KeyFlame = 0;
	g_EnemyArcherMotion.MAX_FLAME = g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][0].MAX_FLAME;

	for (int nCntParts = 0; nCntParts > MOVE_PARTS; nCntParts++)
	{// アニメーションするパーツの情報を取得
		g_EnemyArcherMotion.aParts[nCntParts].Pos = D3DXVECTOR3(pEnemyArcher->aModel[nCntParts].pos.x, pEnemyArcher->aModel[nCntParts].pos.y, pEnemyArcher->aModel[nCntParts].pos.z);
		g_EnemyArcherMotion.aParts[nCntParts].fPosAngle = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

		g_EnemyArcherMotion.aParts[nCntParts].Rot = D3DXVECTOR3(pEnemyArcher->aModel[nCntParts].rot.x, pEnemyArcher->aModel[nCntParts].rot.y, pEnemyArcher->aModel[nCntParts].rot.z);
		g_EnemyArcherMotion.aParts[nCntParts].fRotAngle = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	}
}

//------------------------------------------------------------------------
// 更新処理																  |
//------------------------------------------------------------------------
void UpdateEnemyArcherMotion_2(void)
{
	g_CntEnemyArcherMotion_2++;

	if (g_CntEnemyArcherMotion_2 % 1 == 0)
	{
		// エネミーの状態を取得
		ENEMYARCHERSTATUS_2 *pEnemyArcherState;
		pEnemyArcherState = GetEnemyARCHERStatus_2();

		// ファイルデータの取得
		g_aEnemyArcherTex = GetEnemyArcherTex_2();

		// エネミーの取得
		pEnemyArcher = GetEnemyARCHER_2();

		for (int nCntMotion = 0; nCntMotion < MOVE_PARTS; nCntMotion++)
		{// 回転の差分をだして移動する
		 // テキストデータから回転情報を取得する
			g_EnemyArcherMotion.aParts[nCntMotion].RotDest = D3DXVECTOR3(g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionRotX,
				g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionRotY,
				g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionRotZ);
			// 差分を計算する
			g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle = g_EnemyArcherMotion.aParts[nCntMotion].RotDest - g_EnemyArcherMotion.aParts[nCntMotion].Rot;		// 差分 = 目的 - 現在

			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.x > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.x -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.x < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.x += D3DX_PI * 2;
			}

			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.y > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.y -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.y < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.y += D3DX_PI * 2;
			}

			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.z > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.z -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.z < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle.z += D3DX_PI * 2;
			}

			pEnemyArcher->aModel[nCntMotion].rot += g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);

			// 更新
			if (pEnemyArcher->aModel[nCntMotion].rot >= g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle)
			{
				pEnemyArcher->aModel[nCntMotion].rot += g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);
			}
			if (pEnemyArcher->aModel[nCntMotion].rot <= g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle)
			{
				pEnemyArcher->aModel[nCntMotion].rot += g_EnemyArcherMotion.aParts[nCntMotion].fRotAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);
			}

			g_EnemyArcherMotion.aParts[nCntMotion].Rot = pEnemyArcher->aModel[nCntMotion].rot;		// 現在の更新
		}

		for (int nCntMotion = 0; nCntMotion < MOVE_PARTS; nCntMotion++)
		{// 座標の差分をだして移動する
		 // テキストデータから座標情報を取得する
			g_EnemyArcherMotion.aParts[nCntMotion].PosDest = D3DXVECTOR3(g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionPosX,
				g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionPosY,
				g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][nCntMotion].MotionPosZ);
			// 差分を計算する
			g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.x = g_EnemyArcherMotion.aParts[nCntMotion].PosDest.x - g_EnemyArcherMotion.aParts[nCntMotion].Pos.x + g_aEnemyArcherTex->aModelTex[nCntMotion].PosX;		// 差分 = 目的 - 現在
			g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.y = g_EnemyArcherMotion.aParts[nCntMotion].PosDest.y - g_EnemyArcherMotion.aParts[nCntMotion].Pos.y + g_aEnemyArcherTex->aModelTex[nCntMotion].PosY;
			g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.z = g_EnemyArcherMotion.aParts[nCntMotion].PosDest.z - g_EnemyArcherMotion.aParts[nCntMotion].Pos.z + g_aEnemyArcherTex->aModelTex[nCntMotion].PosZ;

			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.x > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.x -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.x < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.x += D3DX_PI * 2;
			}

			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.y > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.y -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.y < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.y += D3DX_PI * 2;
			}

			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.z > D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.z -= D3DX_PI * 2;
			}
			if (g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.z < -D3DX_PI)
			{
				g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle.z += D3DX_PI * 2;
			}

			pEnemyArcher->aModel[nCntMotion].pos += g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);

			// 更新
			if (pEnemyArcher->aModel[nCntMotion].pos >= g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle)
			{
				pEnemyArcher->aModel[nCntMotion].pos += g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);
			}
			if (pEnemyArcher->aModel[nCntMotion].pos <= g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle)
			{
				pEnemyArcher->aModel[nCntMotion].pos += g_EnemyArcherMotion.aParts[nCntMotion].fPosAngle / (g_EnemyArcherMotion.MAX_FLAME * 1.0f);
			}

			g_EnemyArcherMotion.aParts[nCntMotion].Pos = pEnemyArcher->aModel[nCntMotion].pos;		// 現在の更新
		}

		// キーフレームの更新
		if (g_EnemyArcherMotion.MAX_FLAME > 0)
		{// !!!	↑これ消したらエラーで落ちます	!!!
			if (g_EnemyArcherMotion.nCntFlame % g_EnemyArcherMotion.MAX_FLAME == 0)
			{// フレームが指定した分、進んだらキーフレームを次に進める
				if (g_EnemyArcherMotion.KeyFlame == g_aEnemyArcherTex->KEYFLAME[g_EnemyArcherMotion.nNumEnemymotion] - 1)
				{// 最後のキーになったら0に戻す
					g_EnemyArcherMotion.KeyFlame = 0;
				}
				else
				{// キーを次に進めてテキストデータから次のフレームを取得する
					g_EnemyArcherMotion.KeyFlame++;
					g_EnemyArcherMotion.MAX_FLAME = g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][g_EnemyArcherMotion.KeyFlame][0].MAX_FLAME;
				}
			}
		}

		// フレームの加算
		g_EnemyArcherMotion.nCntFlame++;
	}
}

//=============================================================================
// モーションの設定															   |
//=============================================================================
void SetEnemyArcherMotion_2(int nNumEnemymotion)
{
	// モーションの番号
	g_EnemyArcherMotion.nNumEnemymotion = nNumEnemymotion;

	// テキストデータから次のフレームを取得する
	g_EnemyArcherMotion.MAX_FLAME = g_aEnemyArcherTex->aMotionTex[g_EnemyArcherMotion.nNumEnemymotion][0][0].MAX_FLAME;

	if (nNumEnemymotion > 0)
	{// 0以外だったらキーフレームを初期化する
		g_EnemyArcherMotion.KeyFlame = 0;
	}
}

//=============================================================================
// モーションの情報の取得													   |
//=============================================================================
EnemyArcherMotion_2 *GetEnemyArcherMotion_2(void)
{
	return &g_EnemyArcherMotion;
}