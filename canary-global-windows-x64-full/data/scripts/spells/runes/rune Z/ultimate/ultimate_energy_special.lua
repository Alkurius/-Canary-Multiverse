local combat = COMBAT_ENERGYDAMAGE 
local effect1 = CONST_ME_ENERGYAREA
local disteffect = CONST_ANI_ENERGY


local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, combat)
combat1:setParameter(COMBAT_PARAM_EFFECT, effect1)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 5) + (maglevel * 4.605) + 28)*7
	local max = ((level / 5) + (maglevel * 7.395) + 46)*7
	return -min, -max
end
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	return combat1:execute(creature, var)
end

rune:group("attack")
rune:name("special ultimate energy rune")
rune:runeId(40433)
rune:allowFarUse(true)
rune:charges(3)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
