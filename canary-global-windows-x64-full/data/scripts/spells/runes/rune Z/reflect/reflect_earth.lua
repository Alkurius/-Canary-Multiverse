local combat = COMBAT_EARTHDAMAGE 
local effect = CONST_ME_CARNIPHILA
local disteffect = CONST_ANI_SMALLEARTH
local tiempo = 200
local hits = 3
local count = 1
local Range = 5

local function reflect(cid, target, toPosi)
	local player = Player(cid)
	local spectator = Creature(target)	
	local hit_min = (player:getLevel() / 5) + (player:getMagicLevel()*0.4) +2
	local hit_max = (player:getLevel() / 5) + (player:getMagicLevel()*1.6) +10
	
	if spectator ~= nil then	
		if spectator:isCreature() then
			if spectator:isMonster() then
				if isSightClear(player:getPosition(), spectator:getPosition(), true) then
					doTargetCombatHealth(player, spectator, combat, -hit_min/count, -hit_max/count, effect)
					toPosi:sendDistanceEffect(spectator:getPosition(), disteffect)
					count = count +1				
				end	
			end
		end	
	
		if(hits >= count) then
			local specs = Game.getSpectators(spectator:getPosition(),false, false, Range, Range, Range, Range)
			local aux = 0		
			for i = 1, #specs do
				if specs[i]:isMonster() == true then		
					if aux == 0 then
						addEvent(reflect, 250, player.uid, specs[i].uid, spectator:getPosition())	
						aux = 1
					end				
				end 
			end		
		end
	end	
	
    return true
end




local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	count = 1
	
	local player = Player(creature)
	local target = Creature(var.number)	
		
	reflect(player.uid, target.uid, player:getPosition())
	
	return true
end

rune:group("attack")
rune:name("reflect earth rune")
rune:runeId(40397)
rune:allowFarUse(true)
rune:charges(10)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()