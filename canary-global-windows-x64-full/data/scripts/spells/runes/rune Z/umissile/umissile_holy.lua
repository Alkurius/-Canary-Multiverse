local combat = COMBAT_HOLYDAMAGE 
local effect1 = CONST_ME_HOLYDAMAGE
local disteffect = CONST_ANI_HOLY

function onGetFormulaValues1(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 4.605) + 28
	local max = (level / 5) + (magicLevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues2(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1) + 6
	local max = (level / 5) + (magicLevel * 2.6) + 16
	return -min, -max
end


local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, combat)
combat1:setParameter(COMBAT_PARAM_EFFECT, effect1)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues1")

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, combat)
combat2:setParameter(COMBAT_PARAM_EFFECT, effect1)
combat2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)
combat2:setArea(createCombatArea(AREA_CIRCLE3X3))
combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues2")


local function Missile2(creature, variant)	
	combat2:execute(creature, variant)
	local player = Player(creature)		
    return true
end

local function Missile1(creature, variant)	
	combat1:execute(creature, variant)
	local player = Player(creature)
    return true
end


local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)			
	Missile1(creature.uid, var)
	Missile2(creature.uid, var)
	return true
end

rune:group("attack")
rune:name("ultimate missile holy rune")
rune:runeId(40401)
rune:allowFarUse(true)
rune:charges(10)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()