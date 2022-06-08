local mType = Game.createMonsterType("(Pilaf)")
local monster = {}

monster.description = "a pilaf"
monster.experience = 264
monster.health = 440
monster.maxHealth = 440
monster.race = "undead"
monster.corpse = 41741
monster.speed = 230
monster.manaCost = 0
monster.raceId = 2744

monster.outfit = {
    lookType = 2073,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    {id = 2920, chance = 7378},
    {name = "black pearl", chance = 4060},
    {name = "small ruby", chance = 1960},
    {name = "gold coin", chance = 100000, maxCount = 105},
    {name = "mind stone", chance = 728},
    {name = "mysterious fetish", chance = 966},
    {name = "throwing star", chance = 14000, maxCount = 4},
    {name = "battle hammer", chance = 5600},
    {name = "iron helmet", chance = 4830},
    {name = "battle shield", chance = 7000},
    {name = "guardian shield", chance = 140},
    {name = "health potion", chance = 14168, maxCount = 3},
    {name = "health potion", chance = 14000, maxCount = 3},
    {name = "mana potion", chance = 7420},
    {name = "demonic skeletal hand", chance = 17640}
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
