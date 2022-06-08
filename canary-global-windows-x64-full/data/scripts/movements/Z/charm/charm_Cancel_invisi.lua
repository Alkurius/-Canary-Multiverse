local effect = CONST_ME_MAGIC_GREEN
local itemCharm = 40352
local Range = 3
local mana = 8

function Player.moveSlotToBackpack(self, slot)
    if slot == CONST_SLOT_BACKPACK then
        return false
    end
    local item = self:getSlotItem(slot)
    if item then
        local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
        if backpack then
            return item:moveTo(backpack)
        end
    end
    return false
end


local function searchForTarget(cid)		
	
	--Validar
	local player = Player(cid)
	if player ~= nil then	
		if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
			player:moveSlotToBackpack(CONST_SLOT_AMMO)
			return false
		end
		
		
		--Buscar
		local specs = Game.getSpectators(player:getPosition(),false, false, Range, Range, Range, Range)
		
		if player:getMana() >= mana then		
			for i = 1, #specs do
				if specs[i]:isMonster() == true then
					player:addMana(-mana)
					player:addManaSpent(mana)
					specs[i]:removeCondition(CONDITION_INVISIBLE)
					specs[i]:getPosition():sendMagicEffect(effect)	
				end 
			end
			
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)	
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
			addEvent(searchForTarget, 1000, player.uid)	
		end
	end
end


local charmINVISI = MoveEvent()

function charmINVISI.onEquip(player, item, slot)
	
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:moveSlotToBackpack(CONST_SLOT_AMMO)
		return true
	end
	
	
	contador = 0
	addEvent(searchForTarget, 1000, player.uid)	
	
	
	
	return true
end

charmINVISI:type("equip")
charmINVISI:id(itemCharm)
charmINVISI:level(100)
charmINVISI:register()
