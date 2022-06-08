local monsterName = "(Boo)"
local effect = CONST_ME_FIREAREA
local tiempo = 5 * 60 * 1000

local combat = COMBAT_DEATHDAMAGE
local effect = CONST_ME_MORTAREA
local disteffect = CONST_ANI_SUDDENDEATH

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, combat)
combat1:setParameter(COMBAT_PARAM_EFFECT, effect)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect)

local function RemoveSummon(creature)
	if Creature(creature) ~= nil then
		Creature(creature):getPosition():sendMagicEffect(effect)
		Creature(creature):remove()	
	end
    return true
end

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	combat1:execute(creature, var)
	if table.maxn(getCreatureSummons(creature)) >= 1 then
		doPlayerSendCancel(creature, "You have reached the max amount of summons.")
		return false
	end
	
	local summon = Game.createMonster(monsterName, var:getPosition(), true)
	creature:addSummon(summon)	
	addEvent(RemoveSummon, tiempo, summon.uid)
	
	return true
end

rune:group("attack")
rune:name("summon rune R")
rune:runeId(40359)
rune:allowFarUse(true)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:needTarget(false)
rune:charges(10)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
