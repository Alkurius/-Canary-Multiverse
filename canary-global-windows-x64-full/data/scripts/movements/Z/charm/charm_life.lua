local effect = CONST_ME_MAGIC_GREEN
local itemCharm = 40353
local charmSoul = MoveEvent()
local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, 2500)


local function searchForTarget(cid)		
	--Validar
	local player = Player(cid)
	if player ~= nil then
	
		local amount = math.random(250, 350)
		
		local foundCondition = player:getCondition(CONDITION_EXHAUST_HEAL)
		if foundCondition and foundCondition:getEndTime() > os.time() then
		   player:sendTextMessage(MESSAGE_STATUS_SMALL, 'exhausted')
		   addEvent(searchForTarget, 3000, player.uid)			  
		end

		
	
	
	
		--Aumentar velocidad	
		player:addHealth(amount)	
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
			addEvent(searchForTarget, 3000, player.uid)	
		end
	end
end




    



function charmSoul.onEquip(player, item, slot)		
	player:addCondition(exhaust)
	addEvent(searchForTarget, 3000, player.uid)	
	return true
end

charmSoul:type("equip")
charmSoul:id(itemCharm)
charmSoul:level(100)
charmSoul:register()
