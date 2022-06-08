local combat = COMBAT_HOLYDAMAGE 
local effect = CONST_ME_HOLYDAMAGE
local disteffect = CONST_ANI_HOLY
local effect2 = CONST_ME_MAGIC_BLUE
local effect3 = CONST_ME_GHOST_SMOKE
local Range = 3

local function manaLeach(cid, pos)
	local player = Player(cid)	
	local hit_min = ((player:getLevel() / 5) + (player:getMagicLevel()*1) +6)/3
	local hit_max = ((player:getLevel() / 5) + (player:getMagicLevel()*2.6) +16)/3	
	local specs = Game.getSpectators(pos,false, false, Range, Range, Range, Range)
	local aux = 0		
	for i = 1, #specs do
		if specs[i]:isMonster() == true then		
			aux = aux + 1
			local spectator = specs[i]
			spectator:getPosition():sendMagicEffect(effect3)				
		end 
	end
	
	if(aux >0) then
		local damage = math.random(hit_min, hit_max) * aux		
		player:getPosition():sendMagicEffect(effect2)								
		player:addMana(damage)
	end
	
    return true
end


local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, combat)
combat1:setParameter(COMBAT_PARAM_EFFECT, effect)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)
combat1:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1) + 6
	local max = (level / 5) + (magicLevel * 2.6) + 16
	return -min, -max
end

combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)		
	local targetPOS = Position(var.pos.x, var.pos.y, var.pos.z)		
	manaLeach(creature.uid, targetPOS)
	return combat1:execute(creature, var)
end

rune:group("attack")
rune:name("mana leach holy rune")
rune:runeId(40405)
rune:allowFarUse(true)
rune:charges(4)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:register()