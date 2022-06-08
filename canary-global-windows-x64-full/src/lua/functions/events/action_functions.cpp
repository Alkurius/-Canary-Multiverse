/**
 * Canary - A free and open-source MMORPG server emulator
 * Copyright (C) 2021 OpenTibiaBR <opentibiabr@outlook.com>
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

#include "otpch.h"

#include "lua/creature/actions.h"
#include "lua/functions/events/action_functions.hpp"
#include "game/game.h"
#include "items/item.h"


int ActionFunctions::luaCreateAction(lua_State* L) {
	// Action()
	Action* action = new Action(getScriptEnv()->getScriptInterface());
	if (action) {
		action->fromLua = true;
		pushUserdata<Action>(L, action);
		setMetatable(L, -1, "Action");
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionOnUse(lua_State* L) {
	// action:onUse(callback)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		if (!action->loadCallback()) {
			pushBoolean(L, false);
			return 1;
		}
		action->scripted = true;
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionRegister(lua_State* L) {
	// action:register()
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		if (!action->isScripted()) {
			pushBoolean(L, false);
			return 1;
		}
		pushBoolean(L, g_actions().registerLuaEvent(action));
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionItemId(lua_State* L) {
	// action:id(ids)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				action->setItemIdsVector(getNumber<uint16_t>(L, 2 + i));
			}
		} else {
			action->setItemIdsVector(getNumber<uint16_t>(L, 2));
		}
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionActionId(lua_State* L) {
	// action:aid(aids)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				action->setActionIdsVector(getNumber<uint16_t>(L, 2 + i));
			}
		} else {
			action->setActionIdsVector(getNumber<uint16_t>(L, 2));
		}
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionUniqueId(lua_State* L) {
	// action:uid(uids)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				action->setUniqueIdsVector(getNumber<uint16_t>(L, 2 + i));
			}
		} else {
			action->setUniqueIdsVector(getNumber<uint16_t>(L, 2));
		}
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionPosition(lua_State* L) {
	/** @brief Create action position
	 * @param positions = position or table of positions to set a action script
	 * @param itemId or @param itemName = if item id or string name is set, the item is created on position (if not exists), this variable is nil by default
	* action:position(positions, itemId or name)
	*/
	Action* action = getUserdata<Action>(L, 1);
	if (!action) {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
		return 1;
	}

	Position position = getPosition(L, 2);
	// The parameter "- 1" because self is a parameter aswell, which we want to skip L 1 (UserData)
	// isNumber(L, 2) is for skip the itemId
	if (int parameters = lua_gettop(L) - 1;
	parameters > 1 && isNumber(L, 2))
	{
		for (int i = 0; i < parameters; ++i) {
			action->setPositionsVector(getPosition(L, 2 + i));
		}
	} else {
		action->setPositionsVector(position);
	}

	uint16_t itemId;
	bool createItem = false;
	if (isNumber(L, 3)) {
		itemId = getNumber<uint16_t>(L, 3);
		createItem = true;
	} else if (isString(L, 3)) {
		itemId = Item::items.getItemIdByName(getString(L, 3));
		if (itemId == 0) {
			reportErrorFunc("Not found item with name: " + getString(L, 3));
			pushBoolean(L, false);
			return 1;
		}

		createItem = true;
	}

	if (createItem) {
		if (!Item::items.hasItemType(itemId)) {
			reportErrorFunc("Not found item with id: " + itemId);
			pushBoolean(L, false);
			return 1;
		}

		// If it is an item that can be removed, then it will be set as non-movable.
		ItemType &itemType = Item::items.getItemType(itemId);
		if (itemType.moveable == true) {
			itemType.moveable = false;
		}

		g_game().setCreateLuaItems(position, itemId);
	}

	pushBoolean(L, true);
	return 1;
}

int ActionFunctions::luaActionAllowFarUse(lua_State* L) {
	// action:allowFarUse(bool)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		action->setAllowFarUse(getBoolean(L, 2));
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionBlockWalls(lua_State* L) {
	// action:blockWalls(bool)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		action->setCheckLineOfSight(getBoolean(L, 2));
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}

int ActionFunctions::luaActionCheckFloor(lua_State* L) {
	// action:checkFloor(bool)
	Action* action = getUserdata<Action>(L, 1);
	if (action) {
		action->setCheckFloor(getBoolean(L, 2));
		pushBoolean(L, true);
	} else {
		reportErrorFunc(getErrorDesc(LUA_ERROR_ACTION_NOT_FOUND));
		pushBoolean(L, false);
	}
	return 1;
}
