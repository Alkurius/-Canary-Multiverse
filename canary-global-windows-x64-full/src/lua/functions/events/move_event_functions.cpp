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

#include "creatures/creature.h"
#include "lua/creature/movement.h"
#include "lua/functions/events/move_event_functions.hpp"


int MoveEventFunctions::luaCreateMoveEvent(lua_State* L) {
	// MoveEvent()
	MoveEvent* moveevent = new MoveEvent(getScriptEnv()->getScriptInterface());
	if (moveevent) {
		pushUserdata<MoveEvent>(L, moveevent);
		moveevent->fromLua = true;
		setMetatable(L, -1, "MoveEvent");
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventType(lua_State* L) {
	// moveevent:type(callback)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		std::string typeName = getString(L, 2);
		std::string tmpStr = asLowerCaseString(typeName);
		if (tmpStr == "stepin") {
			moveevent->setEventType(MOVE_EVENT_STEP_IN);
			moveevent->stepFunction = moveevent->StepInField;
		} else if (tmpStr == "stepout") {
			moveevent->setEventType(MOVE_EVENT_STEP_OUT);
			moveevent->stepFunction = moveevent->StepOutField;
		} else if (tmpStr == "equip") {
			moveevent->setEventType(MOVE_EVENT_EQUIP);
			moveevent->equipFunction = moveevent->EquipItem;
		} else if (tmpStr == "deequip") {
			moveevent->setEventType(MOVE_EVENT_DEEQUIP);
			moveevent->equipFunction = moveevent->DeEquipItem;
		} else if (tmpStr == "additem") {
			moveevent->setEventType(MOVE_EVENT_ADD_ITEM_ITEMTILE);
			moveevent->moveFunction = moveevent->AddItemField;
		} else if (tmpStr == "removeitem") {
			moveevent->setEventType(MOVE_EVENT_REMOVE_ITEM);
			moveevent->moveFunction = moveevent->RemoveItemField;
		} else {
			SPDLOG_ERROR("[MoveEventFunctions::luaMoveEventType] - "
                         "No valid event name: {}", typeName);
			pushBoolean(L, false);
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventRegister(lua_State* L) {
	// moveevent:register()
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		if (!moveevent->isScripted()) {
			pushBoolean(L, g_moveEvents().registerLuaFunction(moveevent));
			return 1;
		}
		pushBoolean(L, g_moveEvents().registerLuaEvent(moveevent));
		moveevent->getItemIdRange().clear();
		moveevent->getActionIdRange().clear();
		moveevent->getUniqueIdRange().clear();
		moveevent->getPosList().clear();
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventOnCallback(lua_State* L) {
	// moveevent:onEquip / deEquip / etc. (callback)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		if (!moveevent->loadCallback()) {
			pushBoolean(L, false);
			return 1;
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventSlot(lua_State* L) {
	// moveevent:slot(slot)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (!moveevent) {
		lua_pushnil(L);
		return 1;
	}

	if (moveevent->getEventType() == MOVE_EVENT_EQUIP || moveevent->getEventType() == MOVE_EVENT_DEEQUIP) {
		std::string slotName = asLowerCaseString(getString(L, 2));
		if (slotName == "head") {
			moveevent->setSlot(SLOTP_HEAD);
		} else if (slotName == "necklace") {
			moveevent->setSlot(SLOTP_NECKLACE);
		} else if (slotName == "backpack") {
			moveevent->setSlot(SLOTP_BACKPACK);
		} else if (slotName == "armor" || slotName == "body") {
			moveevent->setSlot(SLOTP_ARMOR);
		} else if (slotName == "right-hand") {
			moveevent->setSlot(SLOTP_RIGHT);
		} else if (slotName == "left-hand") {
			moveevent->setSlot(SLOTP_LEFT);
		} else if (slotName == "hand" || slotName == "shield") {
			moveevent->setSlot(SLOTP_RIGHT | SLOTP_LEFT);
		} else if (slotName == "legs") {
			moveevent->setSlot(SLOTP_LEGS);
		} else if (slotName == "feet") {
			moveevent->setSlot(SLOTP_FEET);
		} else if (slotName == "ring") {
			moveevent->setSlot(SLOTP_RING);
		} else if (slotName == "ammo") {
			moveevent->setSlot(SLOTP_AMMO);
		} else {
			SPDLOG_WARN("[MoveEventFunctions::luaMoveEventSlot] - "
						"Unknown slot type: {}", slotName);
			pushBoolean(L, false);
			return 1;
		}
	}

	pushBoolean(L, true);
	return 1;
}

int MoveEventFunctions::luaMoveEventLevel(lua_State* L) {
	// moveevent:level(lvl)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		moveevent->setRequiredLevel(getNumber<uint32_t>(L, 2));
		moveevent->setWieldInfo(WIELDINFO_LEVEL);
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventMagLevel(lua_State* L) {
	// moveevent:magicLevel(lvl)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		moveevent->setRequiredMagLevel(getNumber<uint32_t>(L, 2));
		moveevent->setWieldInfo(WIELDINFO_MAGLV);
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventPremium(lua_State* L) {
	// moveevent:premium(bool)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		moveevent->setNeedPremium(getBoolean(L, 2));
		moveevent->setWieldInfo(WIELDINFO_PREMIUM);
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventVocation(lua_State* L) {
	// moveevent:vocation(vocName[, showInDescription = false, lastVoc = false])
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		moveevent->addVocEquipMap(getString(L, 2));
		moveevent->setWieldInfo(WIELDINFO_VOCREQ);
		std::string tmp;
		bool showInDescription = false;
		bool lastVoc = false;
		if (getBoolean(L, 3)) {
			showInDescription = getBoolean(L, 3);
		}
		if (getBoolean(L, 4)) {
			lastVoc = getBoolean(L, 4);
		}
		if (showInDescription) {
			if (moveevent->getVocationString().empty()) {
				tmp = asLowerCaseString(getString(L, 2));
				tmp += "s";
				moveevent->setVocationString(tmp);
			} else {
				tmp = moveevent->getVocationString();
				if (lastVoc) {
					tmp += " and ";
				} else {
					tmp += ", ";
				}
				tmp += asLowerCaseString(getString(L, 2));
				tmp += "s";
				moveevent->setVocationString(tmp);
			}
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventItemId(lua_State* L) {
	// moveevent:id(ids)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				moveevent->addItemId(getNumber<uint32_t>(L, 2 + i));
			}
		} else {
			moveevent->addItemId(getNumber<uint32_t>(L, 2));
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventActionId(lua_State* L) {
	// moveevent:aid(ids)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				moveevent->addActionId(getNumber<uint32_t>(L, 2 + i));
			}
		} else {
			moveevent->addActionId(getNumber<uint32_t>(L, 2));
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventUniqueId(lua_State* L) {
	// moveevent:uid(ids)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				moveevent->addUniqueId(getNumber<uint32_t>(L, 2 + i));
			}
		} else {
			moveevent->addUniqueId(getNumber<uint32_t>(L, 2));
		}
	pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}

int MoveEventFunctions::luaMoveEventPosition(lua_State* L) {
	// moveevent:position(positions)
	MoveEvent* moveevent = getUserdata<MoveEvent>(L, 1);
	if (moveevent) {
		int parameters = lua_gettop(L) - 1; // - 1 because self is a parameter aswell, which we want to skip ofc
		if (parameters > 1) {
			for (int i = 0; i < parameters; ++i) {
				moveevent->addPosList(getPosition(L, 2 + i));
			}
		} else {
			moveevent->addPosList(getPosition(L, 2));
		}
		pushBoolean(L, true);
	} else {
		lua_pushnil(L);
	}
	return 1;
}
