local mType = Game.createMonsterType("(Wight)")
local monster = {}

monster.description = "a wight"
monster.experience = 1035
monster.health = 1150
monster.maxHealth = 1150
monster.race = "undead"
monster.corpse = 41603
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2522

monster.outfit = {
    lookType = 1851,
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
    Stars = 3,
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
    illusionable = false,
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
    {name = "candlestick", chance = 98000},
    {name = "wedding ring", chance = 644},
    {id = 3007, chance = 84},
    {name = "silver brooch", chance = 1750},
    {name = "white pearl", chance = 1414},
    {name = "black pearl", chance = 2842},
    {name = "gold coin", chance = 42000, maxCount = 112},
    {name = "silver amulet", chance = 12180},
    {id = 3059, chance = 728},
    {name = "life crystal", chance = 98},
    {name = "stone skin amulet", chance = 1148},
    {id = 3098, chance = 1022},
    {id = 3260, chance = 1274},
    {name = "poison dagger", chance = 1890},
    {name = "red robe", chance = 210},
    {name = "blue robe", chance = 980},
    {name = "simple dress", chance = 8470},
    {name = "strong mana potion", chance = 952},
    {name = "terra mantle", chance = 476},
    {name = "petrified scream", chance = 5810},
    {name = "hair of a banshee", chance = 6734},
    {name = "sweet smelling bait", chance = 56},
    {name = "ultimate magic wall rune", chance = 3840},
    {name = "special blank rune", chance = 4310},
    {name = "special tornado water rune", chance = 3580}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100, condition = {type = CONDITION_POISON, totalDamage = 3, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -200, radius = 4, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -55, maxDamage = -350, range = 1, radius = 1, effect = CONST_ME_SMALLCLOUDS, target = true},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -300, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 120, maxDamage = 190, effect = CONST_ME_MAGIC_BLUE, target = false}
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
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
