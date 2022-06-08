local effect = CONST_ME_MAGIC_GREEN
local itemCharm = 40354
local duracion = 8*1000
local recoll = 10*1000
local mana = 500
local Range = 8


local function Visible(cid)
	local player = Player(cid)
	player:setGhostMode(false)
	player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are visible again.")	
	player:getPosition():sendMagicEffect(CONST_ME_YALAHARIGHOST)
end

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
	
	local player = Player(cid)
	if player ~= nil then
		if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
			player:moveSlotToBackpack(CONST_SLOT_AMMO)
			player:setGhostMode(false)
			player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are visible again.")	
			player:getPosition():sendMagicEffect(CONST_ME_YALAHARIGHOST)
			return true
		end
		
		--Validar			
		if getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid == itemCharm then
		
			if player:getMana() >= mana then
				local specs = Game.getSpectators(player:getPosition(),false, false, Range, Range, Range, Range)
				player:addMana(-mana)
				player:addManaSpent(mana)
				player:getPosition():sendMagicEffect(effect)	
				player:setGhostMode(true)
				addEvent(Visible, duracion, player.uid)
				player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are now invisible.")
				player:getPosition():sendMagicEffect(CONST_ME_YALAHARIGHOST)
				for i = 1, #specs do
				if specs[i]:isMonster() == true then				
					specs[i]:setTarget(nil)	
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
				addEvent(searchForTarget, recoll, player.uid)	
			end
		else
			player:setGhostMode(false)
			player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are visible again.")	
			player:getPosition():sendMagicEffect(CONST_ME_YALAHARIGHOST)	
		end
	end
end


local charmGhost = MoveEvent()

function charmGhost.onEquip(player, item, slot)
	
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:moveSlotToBackpack(CONST_SLOT_AMMO)
		addEvent(Visible, 0, player)
		return true
	end
	
	addEvent(searchForTarget, 2000, player.uid)	
	
	return true
end

charmGhost:type("equip")
charmGhost:id(itemCharm)
charmGhost:level(100)
charmGhost:register()
