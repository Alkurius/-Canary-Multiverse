local combat = COMBAT_EARTHDAMAGE
local effect = CONST_ME_CARNIPHILA
local disteffect = CONST_ANI_SMALLEARTH
local text_color = TEXTCOLOR_LIGHTGREEN  
local itemShot = 40331
local mana = 20


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
	
	if player == nil then
		return false
	end
	
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:moveSlotToBackpack(CONST_SLOT_AMMO)
		return false
	end
	
	
	local hit_min = player:getLevel()*0.8 + 50
	local hit_max = player:getLevel()*1.5 + 50
	
	
	
	--Iniciar Rutina
	local spectator = player:getTarget()
	if not spectator then
    -- no target
	
    else
		if spectator:isCreature() then		
			if spectator:isMonster() then
				if isSightClear(player:getPosition(), spectator:getPosition(), true) then
					if player:getMana() >= mana then
						player:addMana(-mana)
						player:addManaSpent(mana)														
						doTargetCombatHealth(player, Creature(spectator), combat, -hit_min, -hit_max, effect)
						player:getPosition():sendDistanceEffect(spectator:getPosition(), disteffect)	
					if getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid == itemShot then
							local CharmCharges = Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):getAttribute(ITEM_ATTRIBUTE_CHARGES)
							if not CharmCharges or CharmCharges <= 0 then
								Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):remove(1) -- ??
								player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your charm has disappeared.")			
								return false
							else 
								Item(getPlayerSlotItem(cid, CONST_SLOT_AMMO).uid):setAttribute(ITEM_ATTRIBUTE_CHARGES, (CharmCharges - 1))
							end
						end
						
					else
						player:getPosition():sendMagicEffect(CONST_ME_POFF)
					end		
				end	
			end
		end
	end 
	
	
	if getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid == itemShot then		
		addEvent(searchForTarget, 2000, player.uid)
	end
	
end



local shotElectric = MoveEvent()

function shotElectric.onEquip(player, item, slot)
	
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:moveSlotToBackpack(CONST_SLOT_AMMO)
		return true
	end
	
	searchForTarget(player)	
	
	
	return true
end

shotElectric:type("equip")
shotElectric:id(itemShot)
shotElectric:level(100)
shotElectric:register()
