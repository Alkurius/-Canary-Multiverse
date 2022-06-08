local mType = Game.createMonsterType("Cult Enforcer")
local monster = {}

monster.description = "a cult enforcer"
monster.experience = 1000
monster.outfit = {
	lookType = 134,
	lookHead = 114,
	lookBody = 19,
	lookLegs = 76,
	lookFeet = 76,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1513
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Forbidden Temple (Carlin)."
	}

monster.health = 1150
monster.maxHealth = 1150
monster.race = "blood"
monster.corpse = 22017
monster.speed = 260
monster.manaCost = 390

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "No one will stop us!", yell = false}
}

monster.loot = {
	{id = 3446, chance = 90450, maxCount = 10},
	{id = 3031, chance = 75410, maxCount = 30},
	{id = 3592, chance = 15400},
	{id = 239, chance = 12340, maxCount = 2},
	{id = 3577, chance = 5000},
	{id = 3349, chance = 830},
	{id = 3563, chance = 760},
	{id = 3048, chance = 700, maxCount = 2},
	{id = 3003, chance = 1000},
	{id = 3572, chance = 1000},
	{id = 2815, chance = 830},
	{id = 3028, chance = 830},
	{id = 3279, chance = 130},
	{id = 3269, chance = 830},
	{id = 3415, chance = 330},
	{id = 3371, chance = 230},
	{id = 3369, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 10, maxDamage = -360}
}

monster.defenses = {
	defense = 50,
	armor = 35,
	{name ="combat", interval = 4000, chance = 25, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
