local mType = Game.createMonsterType("(Dinosaur-tek)")
local monster = {}

monster.description = "a dinosaur-tek"
monster.experience = 2000
monster.health = 6250
monster.maxHealth = 6250
monster.race = "blood"
monster.corpse = 41747
monster.speed = 306
monster.manaCost = 0
monster.raceId = 2665

monster.outfit = {
    lookType = 1994,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 4,
    Occurrence = 0,
    Locations = "Carlin? Thais? Probably in all Tibia."
}

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 80,
    health = 10,
    damage = 10
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 5,
    {text = "attack the weakest!", yell = false},
    {text = "It is all you have?", yell = false},
    {text = "I will make you my pet!", yell = false},
    {text = "you will be my breakfast.", yell = false}
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = true,
    rewardBoss = false,
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small ruby", chance = 12110, maxCount = 7},
    {name = "gold coin", chance = 100000, maxCount = 68},
    {name = "platinum coin", chance = 18090, maxCount = 26},
    {name = "lizard leather", chance = 297},
    {name = "lizard scale", chance = 608},
    {name = "strong mana potion", chance = 8478},
    {name = "great mana potion", chance = 6048},
    {name = "complete ruby", chance = 2260},
    {name = "arcane ice rune", chance = 2740},
    {name = "leopard legs", chance = 350},
    {name = "cyclops club", chance = 1120},
    {name = "platinum thief boots", chance = 430},
    {name = "Earth armor", chance = 40}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    	{name ="lizard magistratus curse", interval = 2000, chance = 10, range = 5, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
