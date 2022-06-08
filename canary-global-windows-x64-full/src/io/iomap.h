/**
 * The Forgotten Server - a free and open-source MMORPG server emulator
 * Copyright (C) 2019  Mark Samman <mark.samman@gmail.com>
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
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*/

#ifndef SRC_IO_IOMAP_H_
#define SRC_IO_IOMAP_H_

#include <utility>

#include "declarations.hpp"

#include "config/configmanager.h"
#include "map/house/house.h"
#include "items/item.h"
#include "map/map.h"
#include "creatures/monsters/spawns/spawn_monster.h"
#include "creatures/npcs/spawns/spawn_npc.h"


#pragma pack(1)

struct OTBM_root_header {
	uint32_t version;
	uint16_t width;
	uint16_t height;
	uint32_t majorVersionItems;
	uint32_t minorVersionItems;
};

struct OTBM_Destination_coords {
	uint16_t x;
	uint16_t y;
	uint8_t z;
};

struct OTBM_Tile_coords {
	uint8_t x;
	uint8_t y;
};

#pragma pack()

class IOMap
{
	static Tile* createTile(Item*& ground, Item* item, uint16_t x, uint16_t y, uint8_t z);

	public:
		bool loadMap(Map* map, const std::string& identifier);

		/**
		* Load main map monsters
		 * \param map Is the map class
		 * \returns true if the monsters spawn map was loaded successfully
		*/
		static bool loadMonsters(Map* map) {
			if (map->monsterfile.empty()) {
				// OTBM file doesn't tell us about the monsterfile,
				// Lets guess it is mapname-monster.xml.
				map->monsterfile = g_configManager().getString(MAP_NAME);
				map->monsterfile += "-monster.xml";
			}

			return map->spawnsMonster.loadFromXML(map->monsterfile);
		}

		/**
		* Load main map npcs
		 * \param map Is the map class
		 * \returns true if the npcs spawn map was loaded successfully
		*/
		static bool loadNpcs(Map* map) {
			if (map->npcfile.empty()) {
				// OTBM file doesn't tell us about the npcfile,
				// Lets guess it is mapname-npc.xml.
				map->npcfile = g_configManager().getString(MAP_NAME);
				map->npcfile += "-npc.xml";
			}

			return map->spawnsNpc.loadFromXml(map->npcfile);
		}

		/**
		* Load main map houses
		 * \param map Is the map class
		 * \returns true if the main map houses was loaded successfully
		*/
		static bool loadHouses(Map* map) {
			if (map->housefile.empty()) {
				// OTBM file doesn't tell us about the housefile,
				// Lets guess it is mapname-house.xml.
				map->housefile = g_configManager().getString(MAP_NAME);
				map->housefile += "-house.xml";
			}

			return map->houses.loadHousesXML(map->housefile);
		}

		/**
		* Load custom  map monsters
		 * \param map Is the map class
		 * \returns true if the monsters spawn map custom was loaded successfully
		*/
		static bool loadMonstersCustom(Map* map) {
			if (map->monsterfile.empty()) {
				// OTBM file doesn't tell us about the monsterfile,
				// Lets guess it is mapname-monster.xml.
				map->monsterfile = g_configManager().getString(MAP_CUSTOM_NAME);
				map->monsterfile += "-monster.xml";
			}

			return map->spawnsMonsterCustom.loadFromXML(map->monsterfile);
		}

		/**
		* Load custom map npcs
		 * \param map Is the map class
		 * \returns true if the npcs spawn map custom was loaded successfully
		*/
		static bool loadNpcsCustom(Map* map) {
			if (map->npcfile.empty()) {
				// OTBM file doesn't tell us about the npcfile,
				// Lets guess it is mapname-npc.xml.
				map->npcfile = g_configManager().getString(MAP_CUSTOM_NAME);
				map->npcfile += "-npc.xml";
			}

			return map->spawnsNpcCustom.loadFromXml(map->npcfile);
		}

		/**
		* Load custom map houses
		 * \param map Is the map class
		 * \returns true if the map custom houses was loaded successfully
		*/
		static bool loadHousesCustom(Map* map) {
			if (map->housefile.empty()) {
				// OTBM file doesn't tell us about the housefile,
				// Lets guess it is mapname-house.xml.
				map->housefile = g_configManager().getString(MAP_CUSTOM_NAME);
				map->housefile += "-house.xml";
			}

			return map->housesCustom.loadHousesXML(map->housefile);
		}

		const std::string& getLastErrorString() const {
			return errorString;
		}

		void setLastErrorString(std::string error) {
			errorString = std::move(error);
		}

	private:
		bool parseMapDataAttributes(OTB::Loader& loader, const OTB::Node& mapNode, Map& map, const std::string& fileName);
		bool parseWaypoints(OTB::Loader& loader, const OTB::Node& waypointsNode, Map& map);
		bool parseTowns(OTB::Loader& loader, const OTB::Node& townsNode, Map& map);
		bool parseTileArea(OTB::Loader& loader, const OTB::Node& tileAreaNode, Map& map);
		std::string errorString;
};

#endif // SRC_IO_IOMAP_H_
