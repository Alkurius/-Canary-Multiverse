local combat1 = COMBAT_DEATHDAMAGE
local effect1 = CONST_ME_MORTAREA
local disteffect1 = CONST_ANI_SUDDENDEATH

local combat2 = COMBAT_FIREDAMAGE 
local effect2 = CONST_ME_FIREAREA
local disteffect2 = CONST_ANI_FIRE

local combat3 = COMBAT_PHYSICALDAMAGE 
local effect3 = CONST_ME_HITAREA
local disteffect3 = CONST_ANI_WHIRLWINDSWORD

local combat4 = COMBAT_ENERGYDAMAGE 
local effect14 = CONST_ME_ENERGYAREA
local disteffect4 = CONST_ANI_ENERGY

local combat5 = COMBAT_EARTHDAMAGE 
local effect15 = CONST_ME_CARNIPHILA
local disteffect5 = CONST_ANI_SMALLEARTH

local combat6 = COMBAT_ICEDAMAGE 
local effect6 = CONST_ME_ICEATTACK
local disteffect6 = CONST_ANI_SMALLICE

local combat7 = COMBAT_HOLYDAMAGE
local effect7 = CONST_ME_HOLYDAMAGE
local disteffect7 = CONST_ANI_HOLY


local creatureGLB
local VARGLB

local stamina = 5 * 60 * 1000

local combat01 = Combat()
combat01:setParameter(COMBAT_PARAM_TYPE, combat1)
combat01:setParameter(COMBAT_PARAM_EFFECT, effect1)
combat01:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect1)

local combat02 = Combat()
combat02:setParameter(COMBAT_PARAM_TYPE, combat2)
combat02:setParameter(COMBAT_PARAM_EFFECT, effect2)
combat02:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect2)

local combat03 = Combat()
combat03:setParameter(COMBAT_PARAM_TYPE, combat3)
combat03:setParameter(COMBAT_PARAM_EFFECT, effect3)
combat03:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect3)

local combat04 = Combat()
combat04:setParameter(COMBAT_PARAM_TYPE, combat4)
combat04:setParameter(COMBAT_PARAM_EFFECT, effect14)
combat04:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect4)

local combat05 = Combat()
combat05:setParameter(COMBAT_PARAM_TYPE, combat5)
combat05:setParameter(COMBAT_PARAM_EFFECT, effect15)
combat05:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect5)

local combat06 = Combat()
combat06:setParameter(COMBAT_PARAM_TYPE, combat6)
combat06:setParameter(COMBAT_PARAM_EFFECT, effect6)
combat06:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect6)

local combat07 = Combat()
combat07:setParameter(COMBAT_PARAM_TYPE, combat7)
combat07:setParameter(COMBAT_PARAM_EFFECT, effect7)
combat07:setParameter(COMBAT_PARAM_DISTANCEEFFECT, disteffect7)


function onGetFormulaValues1(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues2(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues3(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues4(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues5(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues6(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

function onGetFormulaValues7(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.605) + 28
	local max = (level / 5) + (maglevel * 7.395) + 46
	return -min, -max
end

combat01:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues1")
combat02:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues2")
combat03:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues3")
combat04:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues4")
combat05:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues5")
combat06:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues6")
combat07:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues7")

local rune = Spell("rune")

local function hit1()
	combat01:execute(creatureGLB, VARGLB)
end

local function hit2()
	combat02:execute(creatureGLB, VARGLB)
end

local function hit3()
	combat03:execute(creatureGLB, VARGLB)
end

local function hit4()
	combat04:execute(creatureGLB, VARGLB)
end

local function hit5()
	combat05:execute(creatureGLB, VARGLB)
end

local function hit6()
	combat06:execute(creatureGLB, VARGLB)
end

local function hit7()
	combat07:execute(creatureGLB, VARGLB)
end

function rune.onCastSpell(creature, var, isHotkey)
	local player = Player(creature.uid)	
	player:setStamina(player:getStamina() + stamina)
	creatureGLB = creature
	VARGLB = var
	addEvent(hit1, 0)	
	addEvent(hit2, 50)	
	addEvent(hit3, 100)	
	addEvent(hit4, 150)	
	addEvent(hit5, 200)	
	addEvent(hit6, 250)	
	addEvent(hit7, 300)	
	
	return true
end

rune:group("attack")
rune:name("atonement rune")
rune:runeId(40421)
rune:allowFarUse(true)
rune:charges(3)
rune:level(150)
rune:magicLevel(10)
rune:cooldown(2 * 1000)
rune:groupCooldown(8 * 1000)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
