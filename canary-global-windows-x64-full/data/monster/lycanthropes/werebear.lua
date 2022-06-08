local mType = Game.createMonsterType("Werebear")
local monster = {}

monster.description = "a werebear"
monster.experience = 2100
monster.outfit = {
	lookType = 720,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1142
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Grimvale underground, were-beasts cave south-west of Edron and in the Last Sanctum east of Cormaya."
	}

monster.health = 2400
monster.maxHealth = 2400
monster.race = "blood"
monster.corpse = 22010
monster.speed = 220
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 275,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "GROOOWL", yell = false},
	{text = "GRRR", yell = false}
}

monster.loot = {
	{id = 3031, chance = 97000, maxCount = 242},
	{id = 3035, chance = 18200, maxCount = 5},
	{id = 239, chance = 1200, maxCount = 2},
	{id = 7643, chance = 2210},
	{id = 238, chance = 1200},
	{id = 5896, chance = 800},
	{id = 3582, chance = 1900, maxCount = 2},
	{id = 5902, chance = 450},
	{id = 22057, chance = 580},
	{id = 7439, chance = 800},
	{id = 22056, chance = 560},
	{id = 3081, chance = 430},
	{id = 7419, chance = 120},
	{id = 22085, chance = 300},
	{id = 7432, chance = 400},
	{id = 22060, chance = 100},
	{id = 7383, chance = 200},
	{id = 7452, chance = 300},
	{id = 3053, chance = 400},
	{id = 22103, chance = 200},
	{id = 22083, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 50, maxDamage = -485},
	{name ="speed", interval = 4000, chance = 20, radius = 7, effect = CONST_ME_POFF, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -65, maxDamage = -335, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
