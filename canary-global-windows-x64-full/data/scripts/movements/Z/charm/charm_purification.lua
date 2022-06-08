local effect = CONST_ME_MAGIC_GREEN
local itemCharm = 40422

local conditions = {CONDITION_POISON,
                    CONDITION_FIRE,
					CONDITION_BLEEDING,
                    CONDITION_ENERGY,
                    CONDITION_PARALYZE,
                    CONDITION_DRUNK,
                    CONDITION_DROWN,
                    CONDITION_FREEZING,
                    CONDITION_DAZZLED,
                    CONDITION_CURSED
                }


local charmpurifi = MoveEvent()


local function searchForTarget(cid)		
	
	--Validar
	local player = Player(cid)
	if player ~= nil then
		--Iniciar Rutina
		player:getPosition():sendMagicEffect(effect)
		player:feed(10)
		
		for _, condition in ipairs(conditions) do
			if(player:getCondition(condition)) then
				player:removeCondition(condition)
			end
		end 
		
		
		if getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid == itemCharm then
			local CharmCharges = Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):getAttribute(ITEM_ATTRIBUTE_CHARGES)
			if not CharmCharges or CharmCharges <= 0 then
				Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):remove(1) -- ??
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your charm has disappeared.")			
				return false
			else 
				Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):setAttribute(ITEM_ATTRIBUTE_CHARGES, (CharmCharges - 1))
			end
			addEvent(searchForTarget, 2000, player.uid)
		end
	end
end



function charmpurifi.onEquip(player, item, slot)	
	addEvent(searchForTarget, 2000, player.uid)
	return true
end

charmpurifi:type("equip")
charmpurifi:id(itemCharm)
charmpurifi:level(100)
charmpurifi:register()
