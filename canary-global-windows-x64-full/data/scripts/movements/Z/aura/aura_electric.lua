local combat = COMBAT_ENERGYDAMAGE
local effect = CONST_ME_ENERGYAREA
local text_color = TEXTCOLOR_PURPLE 
local disteffect = CONST_ANI_ENERGY
local Range = 2;
local itemCharm = 40337
local mana = 250
local block = 0

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

local function sendAttack(cid)	

	local title = Tile(Position(x, y, z))
	local player = Player(cid)	
	local hit_min = (player:getLevel()/5) + (player:getMagicLevel()*1.2) + 5
	local hit_max = (player:getLevel()/5) + (player:getMagicLevel()*02.8) + 17
	local specs = Game.getSpectators(player:getPosition(),false, false, Range, Range, Range, Range)
			
	for i = 1, #specs do
		if specs[i]:isMonster() == true then
			if isSightClear(player:getPosition(), specs[i]:getPosition(), true) then
				--if specs[i]:getMaster() == nil	then
					doTargetCombatHealth(player, Creature(specs[i]), combat, -hit_min, -hit_max, effect)					
				--end				
			end	
		end 
	end
end

local function Aura(cid)	
	
	local player = Player(cid)
	if player ~= nil then
		if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
			player:moveSlotToBackpack(CONST_SLOT_AMMO)
			return false
		end
		
		--mana
		if player:getMana() >= mana then
			player:addMana(-mana)
			player:addManaSpent(mana)
			local pos = player:getPosition()
			Position(pos.x+2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y-1, pos.z), disteffect)
			Position(pos.x+2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y-2, pos.z), disteffect)
			Position(pos.x+1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y-2, pos.z), disteffect)
			Position(pos.x-1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y-1, pos.z), disteffect)
			Position(pos.x-2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y+1, pos.z), disteffect)
			Position(pos.x-2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y+2, pos.z), disteffect)
			Position(pos.x-1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y+2, pos.z), disteffect)
			Position(pos.x+1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y+1, pos.z), disteffect)		
			sendAttack(player.uid)
				
			if getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid == itemCharm then
				addEvent(Aura, 200, player.uid)
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


local auraElectric = MoveEvent()

function auraElectric.onEquip(player, item, slot)
	
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:moveSlotToBackpack(CONST_SLOT_AMMO)
		return true
	end
	
	contador = 0
	Aura(player)
	
	
	
	return true
end

auraElectric:type("equip")
auraElectric:id(itemCharm)
auraElectric:level(100)
auraElectric:register()
