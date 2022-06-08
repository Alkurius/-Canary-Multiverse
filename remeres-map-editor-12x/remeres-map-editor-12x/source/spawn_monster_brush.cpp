//////////////////////////////////////////////////////////////////////
// This file is part of Remere's Map Editor
//////////////////////////////////////////////////////////////////////
// Remere's Map Editor is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Remere's Map Editor is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////

#include "main.h"

#include "spawn_monster_brush.h"
#include "basemap.h"
#include "spawn_monster.h"

//=============================================================================
// SpawnMonster brush

SpawnMonsterBrush::SpawnMonsterBrush() :
	Brush()
{
	////
}

SpawnMonsterBrush::~SpawnMonsterBrush()
{
	////
}

int SpawnMonsterBrush::getLookID() const
{
	return 0;
}

std::string SpawnMonsterBrush::getName() const
{
	return "SpawnMonster Brush";
}

bool SpawnMonsterBrush::canDraw(BaseMap* map, const Position& position) const
{
	Tile* tile = map->getTile(position);
	if(tile) {
		if(tile->spawnMonster) {
			return false;
		}
	}
	return true;
}

void SpawnMonsterBrush::undraw(BaseMap* map, Tile* tile)
{
	delete tile->spawnMonster;
	tile->spawnMonster = nullptr;
}

void SpawnMonsterBrush::draw(BaseMap* map, Tile* tile, void* parameter)
{
	ASSERT(tile);
	ASSERT(parameter); // Should contain an int which is the size of the newd monster spawn
	if(tile->spawnMonster == nullptr) {
		tile->spawnMonster = newd SpawnMonster(max(1, *(int*)parameter));
	}
}
