local mType = Game.createMonsterType("(Plague skeleton)")
local monster = {}

monster.description = "a plague skeleton"
monster.experience = 276
monster.health = 460
monster.maxHealth = 460
monster.race = "undead"
monster.corpse = 41741
monster.speed = 230
monster.manaCost = 0
monster.raceId = 2207

monster.outfit = {
    lookType = 1536,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 2,
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
    pushable = false,
    rewardBoss = false,
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
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
    {id = 2920, chance = 7115},
    {name = "black pearl", chance = 3915},
    {name = "small ruby", chance = 1890},
    {name = "gold coin", chance = 100000, maxCount = 101},
    {name = "mind stone", chance = 702},
    {name = "mysterious fetish", chance = 932},
    {name = "throwing star", chance = 13500, maxCount = 4},
    {name = "battle hammer", chance = 5400},
    {name = "iron helmet", chance = 4658},
    {name = "battle shield", chance = 6750},
    {name = "guardian shield", chance = 135},
    {name = "health potion", chance = 13662, maxCount = 3},
    {name = "health potion", chance = 13500, maxCount = 3},
    {name = "mana potion", chance = 7155},
    {name = "demonic skeletal hand", chance = 17010}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -50, range = 1, radius = 1, effect = CONST_ME_SMALLCLOUDS, target = true}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
