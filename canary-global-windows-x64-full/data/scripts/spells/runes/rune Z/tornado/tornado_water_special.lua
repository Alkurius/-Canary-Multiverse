local combat = COMBAT_DROWNDAMAGE  
local effect = CONST_ME_BUBBLES 
local disteffect = CONST_ANI_SMALLEARTH 
local tiempo = 200
local hits = 25
local count = 1
local Range = 2;

local function sendAttack(pos, cid)	
	
	local player = Player(cid)	
	local hit_min = player:getLevel()*0.15 + 5
	local hit_max = player:getLevel()*0.25 + 15		
	local specs = Game.getSpectators(pos,false, false, Range, Range, Range, Range)
			
	for i = 1, #specs do
		if specs[i]:isMonster() == true then
			if isSightClear(player:getPosition(), specs[i]:getPosition(), true) then
				if specs[i]:getMaster() == nil	then
					doTargetCombatHealth(player, Creature(specs[i]), combat, -hit_min, -hit_max, effect)					
				end				
			end	
		end 
	end
end

local function Aura(pos, cid)
	local player = Player(cid)	
	Position(pos.x+2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y-1, pos.z), disteffect)
	Position(pos.x+2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y-2, pos.z), disteffect)
	Position(pos.x+1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y-2, pos.z), disteffect)
	Position(pos.x-1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y-1, pos.z), disteffect)
	Position(pos.x-2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y+1, pos.z), disteffect)
	Position(pos.x-2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y+2, pos.z), disteffect)
	Position(pos.x-1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y+2, pos.z), disteffect)
	Position(pos.x+1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y+1, pos.z), disteffect)
	sendAttack(pos, player.uid)
	
	count = count +1
	
	if(hits >= count) then
		addEvent(Aura, tiempo, pos, player.uid)	
	end	
end

local function Boom(pos)
	pos:sendMagicEffect(effect)
end

local rune = Spell("rune")
function rune.onCastSpell(creature, var, isHotkey)			
	count = 1	
	local player = Player(creature)
	local targetPOS = Position(var.pos.x, var.pos.y, var.pos.z)	
		
	player:getPosition():sendDistanceEffect(targetPOS, disteffect)
	addEvent(Aura, 200, targetPOS, player.uid)	
	addEvent(Boom, 200, targetPOS)	
	return true
end


rune:group("attack")
rune:name("special tornado water rune")
rune:runeId(40428)
rune:allowFarUse(true)
rune:charges(10)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:needTarget(false)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()