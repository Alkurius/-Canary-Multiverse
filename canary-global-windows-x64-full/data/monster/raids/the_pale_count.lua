local mType = Game.createMonsterType("The Pale Count")
local monster = {}

monster.description = "The Pale Count"
monster.experience = 28000
monster.outfit = {
	lookType = 557,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 18953
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 4,
	summons = {
		{name = "Nightfiend", chance = 10, interval = 2000, count = 4}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the hungry kiss of death!", yell = false},
	{text = "The monsters in the mirror will come eat your dreams.", yell = false},
	{text = "Your pitiful life has come to an end!", yell = false},
	{text = "I will squish you like a maggot and suck you dry!", yell = false},
	{text = "Yield to the inevitable!", yell = false},
	{text = "Some day I shall see my beautiful face in a mirror again.", yell = false}
}

monster.loot = {
	{id = 8192, chance = 100000},
	{id = 18927, chance = 100000},
	{id = 18936, chance = 5000},
	{id = 18935, chance = 5000},
	{id = 11449, chance = 50000},
	{id = 9685, chance = 50000},
	{id = 19083, chance = 5000},
	{id = 3031, chance = 1000000, maxCount = 100},
	{id = 3035, chance = 100000, maxCount = 5},
	{id = 237, chance = 50000, maxCount = 3},
	{id = 236, chance = 50000, maxCount = 3},
	{id = 3049, chance = 10000}, -- Stealth ring
	{id = 3098, chance = 10000}, -- Ring of healing
	{id = 5909, chance = 10000},
	{id = 5911, chance = 10000},
	{id = 5912, chance = 10000},
	{id = 7427, chance = 5000},
	{id = 3326, chance = 10000},
	{id = 7419, chance = 5000},
	{id = 8075, chance = 5000},
	{id = 19373, chance = 5000},
	{id = 3434, chance = 5000},
	{id = 19374, chance = 5000},
	{id = 3028, chance = 50000, maxCount = 5},
	{id = 3027, chance = 50000, maxCount = 5},
	{id = 3029, chance = 50000, maxCount = 5},
	{id = 3032, chance = 50000, maxCount = 5},
	{id = 3036, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 120},
	{name ="speed", interval = 1000, chance = 17, speedChange = -600, range = 7, radius = 4, target = true, duration = 1500},
	{name ="combat", interval = 2000, chance = 21, type = COMBAT_ICEDAMAGE, minDamage = -130, maxDamage = -350, range = 6, radius = 2, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_GIANTICE, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -60, maxDamage = -120, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_CARNIPHILA, target = false}
}

monster.defenses = {
	defense = 75,
	armor = 75
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
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
