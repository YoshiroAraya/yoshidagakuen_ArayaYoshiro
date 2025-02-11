//=============================================================================
//
// ファイル読み込みの処理 [txt.cpp]
// Author : 荒谷 由朗
//
//=============================================================================
#include "enemytext5.h"
//#include "char_select.h"

//------------------------------------------------------------------------
// マクロ定義															  |
//------------------------------------------------------------------------
#define ARMORTEXNAME "data/MOTION/motion_skelton.txt"				// ロードするファイル名
//------------------------------------------------------------------------
//グローバル変数宣言                                                      |
//------------------------------------------------------------------------
EnemyTex_5 g_EnemyTex_5;
EnemyComments_5 g_EnemyComments_5;

//------------------------------------------------------------------------
// テキストデータのロード処理											  |
//------------------------------------------------------------------------
void LoadEnemyData_5(void)
{
	FILE *pFile = NULL;

	
	pFile = fopen(ARMORTEXNAME, "r");		// ファイルを開く
	

	if (pFile != NULL)
	{   // ファイルが開けたとき
		fscanf_s(pFile, "%d", &g_EnemyTex_5.MAX_PARTS);		// パーツの最大数の読み取り
		for (int nCntFile = 0; nCntFile < g_EnemyTex_5.MAX_PARTS; nCntFile++)
		{// ファイル名の読み取り
			fscanf_s(pFile, "%s", &g_EnemyTex_5.aModelTex[nCntFile].FileName, 256);
		}
		for (int nCntIdx = 0; nCntIdx < g_EnemyTex_5.MAX_PARTS; nCntIdx++)
		{// 親子関係の読み取り
			fscanf_s(pFile, "%f", &g_EnemyTex_5.aModelTex[nCntIdx].Index);
		}
		for (int nCntPos = 0; nCntPos < g_EnemyTex_5.MAX_PARTS; nCntPos++)
		{// パーツの座標の読み取り
			fscanf_s(pFile, "%f , %f , %f", &g_EnemyTex_5.aModelTex[nCntPos].PosX, &g_EnemyTex_5.aModelTex[nCntPos].PosY, &g_EnemyTex_5.aModelTex[nCntPos].PosZ);
		}
		for (int nCntRot = 0; nCntRot < g_EnemyTex_5.MAX_PARTS; nCntRot++)
		{// パーツの回転の読み取り
			fscanf_s(pFile, "%f , %f , %f", &g_EnemyTex_5.aModelTex[nCntRot].RotX, &g_EnemyTex_5.aModelTex[nCntRot].RotY, &g_EnemyTex_5.aModelTex[nCntRot].RotZ);
		}
		fscanf_s(pFile, "%d", &g_EnemyTex_5.MAX_MOTION);		// モーションの最大数の読み取り
		for (int nCntMotionType = 0; nCntMotionType < g_EnemyTex_5.MAX_MOTION; nCntMotionType++)
		{
			fscanf_s(pFile, "%d", &g_EnemyTex_5.MOVEPARTS[nCntMotionType]);									// 動くモデルの数の読み取り
			fscanf_s(pFile, "%d", &g_EnemyTex_5.LOOP[nCntMotionType]);											// ループ番号の読み取り
			fscanf_s(pFile, "%d", &g_EnemyTex_5.KEYFLAME[nCntMotionType]);										// キーフレーム数の読み込み
			for (int nCntKey = 0; nCntKey < g_EnemyTex_5.KEYFLAME[nCntMotionType]; nCntKey++)
			{// パーツの位置情報の読み取り
				fscanf_s(pFile, "%d", &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][0].MAX_FLAME);			// フレーム数の読み取り
				for (int nCntMotionPos = 0; nCntMotionPos < g_EnemyTex_5.MOVEPARTS[nCntMotionType]; nCntMotionPos++)
				{// パーツの位置の読み取り
					fscanf_s(pFile, "%f , %f , %f", &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionPos].MotionPosX, &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionPos].MotionPosY, &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionPos].MotionPosZ);
				}
				for (int nCntMotionRot = 0; nCntMotionRot < g_EnemyTex_5.MOVEPARTS[nCntMotionType]; nCntMotionRot++)
				{// パーツの回転の読み取り
					fscanf_s(pFile, "%f , %f , %f", &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionRot].MotionRotX, &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionRot].MotionRotY, &g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][nCntMotionRot].MotionRotZ);
				}
				g_EnemyTex_5.TOTALFLAME[nCntMotionType] += g_EnemyTex_5.aMotionTex[nCntMotionType][nCntKey][0].MAX_FLAME;
			}
		}
		fclose(pFile);   //ファイルを閉じる
		_getch();
	}
	else
	{   // ファイルを開けなかったとき
		MessageBox(NULL, "エラー", NULL, MB_YESNO);
	}
}

//------------------------------------------------------------------------
// テキストデータの取得													  |
//------------------------------------------------------------------------
EnemyTex_5 *GetEnemyTex_5(void)
{
	return &g_EnemyTex_5;
}