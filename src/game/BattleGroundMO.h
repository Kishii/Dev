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
 
#ifndef __BATTLEGROUNDMO_H
#define __BATTLEGROUNDMO_H

#include "BattleGround.h"

#define BG_MO_MAX_TEAM_SCORE      3
#define BG_MO_FLAG_RESPAWN_TIME   (23*IN_MILLISECONDS)
#define BG_MO_FLAG_DROP_TIME      (10*IN_MILLISECONDS)
#define BG_MO_TIME_LIMIT          (25*MINUTE*IN_MILLISECONDS)

enum BG_MO_Sound
{
    BG_MO_SOUND_FLAG_CAPTURED_ALLIANCE  = 8173,
    BG_MO_SOUND_FLAG_CAPTURED_HORDE     = 8213,
    BG_MO_SOUND_FLAG_PLACED             = 8232,
    BG_MO_SOUND_FLAG_RETURNED           = 8192,
    BG_MO_SOUND_HORDE_FLAG_PICKED_UP    = 8212,
    BG_MO_SOUND_ALLIANCE_FLAG_PICKED_UP = 8174,
    BG_MO_SOUND_FLAGS_RESPAWNED         = 8232
};

enum BG_MO_FlagState
{
    BG_MO_FLAG_STATE_ON_BASE      = 0,
    BG_MO_FLAG_STATE_WAIT_RESPAWN = 1,
    BG_MO_FLAG_STATE_ON_PLAYER    = 2,
    BG_MO_FLAG_STATE_ON_GROUND    = 3
};