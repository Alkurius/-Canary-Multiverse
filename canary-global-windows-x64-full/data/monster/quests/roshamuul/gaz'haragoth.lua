local mType = Game.createMonsterType("Gaz'Haragoth")
local monster = {}

monster.description = "Gaz'Haragoth"
monster.experience = 1000000
monster.outfit = {
	lookType = 591,
	lookHead = 0,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 20228
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.events = {
	"GazHaragothHeal"
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 3,
	summons = {
		{name = "Minion of Gaz'haragoth", chance = 33, interval = 4000, count = 3}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NO ONE WILL ESCAPE ME!", yell = true},
	{text = "I'LL KEEP THE ORDER UP!", yell = true},
	{text = "I've beaten tougher demons then you even know!", yell = true},
	{text = "You puny humans will be my snacks!", yell = true}
}

monster.loot = {
	{id = 3043, chance = 10000, maxCount = 6},
	{id = 16124, chance = 10000, maxCount = 15},
	{id = 7368, chance = 10000, maxCount = 100},
	{id = 20264, chance = 7000, maxCount = 3},
	{id = 6499, chance = 1000, maxCount = 2},
	{id = 7643, chance = 10000, maxCount = 100},
	{id = 238, chance = 10000, maxCount = 100},
	{id = 7642, chance = 10000, maxCount = 100},
	{id = 20063, chance = 2000, maxCount = 3},
	{id = 20062, chance = 2000, maxCount = 14},
	{id = 3041, chance = 10000, maxCount = 2},
	{id = 16122, chance = 10000, maxCount = 10},
	{id = 16120, chance = 10000, maxCount = 15},
	{id = 6528, chance = 6000},
	{id = 20278, chance = 6000},
	{id = 5914, chance = 6000},
	{id = 5911, chance = 6000},
	{id = 20276, chance = 1100},
	{id = 281, chance = 6000},
	{id = 5954, chance = 6000},
	{id = 20274, chance = 6000, unique = true},
	{id = 3052, chance = 6000}, -- Life ring
	{id = 20280, chance = 6000},
	{id = 20279, chance = 6000},
	{id = 20277, chance = 6000},
	{id = 20064, chance = 800},
	{id = 20067, chance = 1000},
	{id = 20070, chance = 1000},
	{id = 20073, chance = 1000},
	{id = 20079, chance = 1000},
	{id = 20076, chance = 500},
	{id = 20082, chance = 1000},
	{id = 20085, chance = 400},
	{id = 20088, chance = 700},
	{id = 20065, chance = 100},
	{id = 20068, chance = 200},
	{id = 20071, chance = 1000},
	{id = 20074, chance = 500},
	{id = 20080, chance = 1000},
	{id = 20077, chance = 500},
	{id = 20083, chance = 250},
	{id = 20086, chance = 400},
	{id = 20089, chance = 200},
	{id = 20066, chance = 300},
	{id = 20069, chance = 700},
	{id = 20072, chance = 500},
	{id = 20075, chance = 300},
	{id = 20081, chance = 250},
	{id = 20078, chance = 300},
	{id = 20084, chance = 1300},
	{id = 20087, chance = 1000},
	{id = 20090, chance = 140},
	{id = 10345, chance = 6000},
	{id = 10344, chance = 6000},
	{id = 10343, chance = 6000},
	{id = 10342, chance = 6000},
	{id = 10341, chance = 6000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5000},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -800, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -4000, maxDamage = -6000, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -3400, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="gaz'haragoth iceball", interval = 2000, chance = 24, minDamage = -1000, maxDamage = -1000, target = false},
	{name ="gaz'haragoth death", interval = 4000, chance = 6, target = false},
	{name ="gaz'haragoth paralyze", interval = 2000, chance = 12, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3500, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
