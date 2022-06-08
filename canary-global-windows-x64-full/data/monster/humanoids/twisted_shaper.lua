local mType = Game.createMonsterType("Twisted Shaper")
local monster = {}

monster.description = "a twisted shaper"
monster.experience = 1750
monster.outfit = {
	lookType = 932,
	lookHead = 68,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1322
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Astral Shaper Dungeon, Old Masonry, small dungeon under the Formorgar Mines."
	}

monster.health = 2500
monster.maxHealth = 2500
monster.race = "blood"
monster.corpse = 25068
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ti Jezz Kur Tar!", yell = false}
}

monster.loot = {
	{id = 3031, chance = 80320, maxCount = 222},
	{id = 3035, chance = 50320, maxCount = 4},
	{id = 3725, chance = 5000, maxCount = 2},
	{id = 3577, chance = 10000, maxCount = 2},
	{id = 24383, chance = 20000, maxCount = 2},
	{id = 5021, chance = 5000, maxCount = 2},
	{id = 3030, chance = 5600, maxCount = 5},
	{id = 22193, chance = 4900},
	{id = 24387, chance = 14580},
	{id = 239, chance = 7300},
	{id = 3051, chance = 7660}, -- Energy ring
	{id = 3073, chance = 3810},
	{id = 3055, chance = 370},
	{id = 24384, chance = 17000},
	{id = 24385, chance = 20000},
	{id = 24390, chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -100, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -100, length = 5, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -100, radius = 7, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 9, speedChange = -440, effect = CONST_ME_GIANTICE, target = true, duration = 7000}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 400, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
