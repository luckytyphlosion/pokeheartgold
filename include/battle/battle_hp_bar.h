#ifndef POKEHEARTGOLD_BATTLE_HP_BAR_H
#define POKEHEARTGOLD_BATTLE_HP_BAR_H

#include "battle.h"

void BattleHpBar_LoadResources(BattleHpBar *hpBar);
void ov12_02264F28(BattleHpBar *hpBar, BOOL a1);
u8 ov12_02265B64(u8 a0, u32 battleType);

#endif
