/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Player.h"
#include "BattleGround.h"
#include "BattleGroundMO.h"
#include "Language.h"

BattleGroundMO::BattleGroundMO()
{
    m_StartMessageIds[BG_STARTING_EVENT_FIRST]  = 0;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_BG_MO_START_ONE_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_BG_MO_START_HALF_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_BG_MO_HAS_BEGUN;
}

BattleGroundMO::~BattleGroundMO()
{

}

void BattleGroundMO::Update(uint32 diff)
{
    BattleGround::Update(diff);
}

void BattleGroundMO::StartingEventCloseDoors()
{
}

void BattleGroundMO::StartingEventOpenDoors()
{
}

void BattleGroundMO::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundMOScore* sc = new BattleGroundMOScore;

    m_PlayerScores[plr->GetGUID()] = sc;
}

void BattleGroundMO::RemovePlayer(Player * /*plr*/, uint64 /*guid*/)
{
}

void BattleGroundMO::HandleKillPlayer(Player* player, Player* killer)
{
    BattleGround::HandleKillPlayer(player, killer);
}

void BattleGroundMO::HandleAreaTrigger(Player * /*Source*/, uint32 /*Trigger*/)
{
}

bool BattleGroundDS::SetupBattleGround()
{
    return true;
}
