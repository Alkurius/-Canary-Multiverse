local effect = CONST_ME_MAGIC_GREEN
local itemCharm = 40327
local stamina = 5 * 60 * 1000


local charmSoul = MoveEvent()


local function searchForTarget(cid)		
	
	--Validar
	local player = Player(cid)
	if player ~= nil then
		--Aumentar velocidad	
		player:setStamina(player:getStamina() + stamina)
		player:getPosition():sendMagicEffect(effect)	
		
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



function charmSoul.onEquip(player, item, slot)	
	addEvent(searchForTarget, 2000, player.uid)	
	return true
end

charmSoul:type("equip")
charmSoul:id(itemCharm)
charmSoul:level(100)
charmSoul:register()
