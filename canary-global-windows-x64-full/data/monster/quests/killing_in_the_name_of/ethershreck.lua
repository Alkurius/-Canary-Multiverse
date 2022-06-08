local mType = Game.createMonsterType("Ethershreck")
local monster = {}

monster.description = "Ethershreck"
monster.experience = 5600
monster.outfit = {
	lookType = 351,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9500
monster.maxHealth = 9500
monster.race = "undead"
monster.corpse = 10445
monster.speed = 320
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 366,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "EMBRACE MY GIFTS!", yell = true}
}

monster.loot = {
	{id = 10449, chance = 100000},
	{id = 3031, chance = 100000, maxCount = 230},
	{id = 3035, chance = 100000, maxCount = 15},
	{id = 10450, chance = 100000},
	{id = 6499, chance = 97000},
	{id = 281, chance = 45000},
	{id = 282, chance = 45000},
	{id = 9057, chance = 97000, maxCount = 10},
	{id = 10406, chance = 76000},
	{id = 7643, chance = 60000},
	{id = 10310, chance = 45000},
	{id = 10451, chance = 37000},
	{id = 239, chance = 34000, maxCount = 3},
	{id = 10386, chance = 30000},
	{id = 238, chance = 26000, maxCount = 3},
	{id = 7642, chance = 26000, maxCount = 3},
	{id = 10438, chance = 21000},
	{id = 10387, chance = 15000},
	{id = 10384, chance = 13000},
	{id = 10385, chance = 13000},
	{id = 10389, chance = 10000},
	{id = 10388, chance = 8700},
	{id = 12801, chance = 2170}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 100},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -230, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="ghastly dragon curse", interval = 2000, chance = 10, range = 7, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -920, maxDamage = -1260, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -90, maxDamage = -350, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -70, maxDamage = -180, radius = 4, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 45,
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_HEALING, minDamage = 70, maxDamage = 300, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
