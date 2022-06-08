local mType = Game.createMonsterType("True Frost Flower Asura")
local monster = {}

monster.description = "a true frost flower asura"
monster.experience = 7069
monster.outfit = {
	lookType = 1068,
	lookHead = 105,
	lookBody = 0,
	lookLegs = 105,
	lookFeet = 8,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1622
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace's secret basement."
	}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 28668
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	targetDistance = 3,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 3031, chance = 97000, maxCount = 242},
	{id = 3035, chance = 18200, maxCount = 6},
	{id = 6558, chance = 2000},
	{id = 238, chance = 2000},
	{id = 3033, chance = 210, maxCount = 3},
	{id = 3028, chance = 300, maxCount = 3},
	{id = 3032, chance = 300, maxCount = 3},
	{id = 3030, chance = 350, maxCount = 3},
	{id = 9057, chance = 280, maxCount = 3},
	{id = 3041, chance = 400},
	{id = 6299, chance = 460},
	{id = 6499, chance = 430},
	{id = 8043, chance = 520},
	{id = 21974, chance = 800},
	{id = 826, chance = 400},
	{id = 3078, chance = 400},
	{id = 3574, chance = 400},
	{id = 21981, chance = 400},
	{id = 21975, chance = 600},
	{id = 5911, chance = 300},
	{id = 3016, chance = 400},
	{id = 3017, chance = 900},
	{id = 5944, chance = 400},
	{id = 8074, chance = 400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 100, maxDamage = 400, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 100, maxDamage = 300, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
