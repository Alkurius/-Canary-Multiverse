local combat = COMBAT_FIREDAMAGE
local effect = CONST_ME_FIREAREA
local disteffect = CONST_ANI_FIRE

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, combat)
combat1:setParameter(COMBAT_PARAM_EFFECT, effect)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)
combat1:setArea(createCombatArea(AREA_CIRCLE1X1))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	return combat1:execute(creature, var)
end

rune:group("attack")
rune:name("arcane fire rune")
rune:runeId(40407)
rune:allowFarUse(true)
rune:charges(4)
rune:level(30)
rune:magicLevel(4)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:register()