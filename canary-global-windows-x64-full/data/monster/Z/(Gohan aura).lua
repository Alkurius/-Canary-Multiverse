local mType = Game.createMonsterType("(Gohan aura)")
local monster = {}

monster.description = "a gohan aura"
monster.experience = 1000000
monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 550
monster.manaCost = 0
monster.raceId = 2735

monster.outfit = {
    lookType = 2064,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 5,
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
    rewardBoss = true,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 98,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3043, chance = 13500, maxCount = 8},
    {id = 16124, chance = 13500, maxCount = 20},
    {id = 7368, chance = 13500, maxCount = 135},
    {id = 20264, chance = 9450, maxCount = 4},
    {id = 6499, chance = 1350, maxCount = 3},
    {id = 7643, chance = 13500, maxCount = 135},
    {id = 238, chance = 13500, maxCount = 135},
    {id = 7642, chance = 13500, maxCount = 135},
    {id = 20063, chance = 2700, maxCount = 4},
    {id = 20062, chance = 2700, maxCount = 19},
    {id = 3041, chance = 13500, maxCount = 3},
    {id = 16122, chance = 13500, maxCount = 14},
    {id = 16120, chance = 13500, maxCount = 20},
    {id = 6528, chance = 8100},
    {id = 20278, chance = 8100},
    {id = 5914, chance = 8100},
    {id = 5911, chance = 8100},
    {id = 20276, chance = 1485},
    {id = 281, chance = 8100},
    {id = 5954, chance = 8100},
    {id = 20274, chance = 8100},
    {id = 3052, chance = 8100},
    {id = 20280, chance = 8100},
    {id = 20279, chance = 8100},
    {id = 20277, chance = 8100},
    {id = 20064, chance = 1080},
    {id = 20067, chance = 1350},
    {id = 20070, chance = 1350},
    {id = 20073, chance = 1350},
    {id = 20079, chance = 1350},
    {id = 20076, chance = 675},
    {id = 20082, chance = 1350},
    {id = 20085, chance = 540},
    {id = 20088, chance = 945},
    {id = 20065, chance = 135},
    {id = 20068, chance = 270},
    {id = 20071, chance = 1350},
    {id = 20074, chance = 675},
    {id = 20080, chance = 1350},
    {id = 20077, chance = 675},
    {id = 20083, chance = 338},
    {id = 20086, chance = 540},
    {id = 20089, chance = 270},
    {id = 20066, chance = 405},
    {id = 20069, chance = 945},
    {id = 20072, chance = 675},
    {id = 20075, chance = 405},
    {id = 20081, chance = 338},
    {id = 20078, chance = 405},
    {id = 20084, chance = 1755},
    {id = 20087, chance = 1350},
    {id = 20090, chance = 189},
    {id = 10345, chance = 8100},
    {id = 10344, chance = 8100},
    {id = 10343, chance = 8100},
    {id = 10342, chance = 8100},
    {id = 10341, chance = 8100},
    {name = "perfect diamond", chance = 2030},
    {name = "arcane earth rune", chance = 2450},
    {name = "plague flame wand", chance = 1520},
    {name = "warlock helmet", chance = 560},
    {name = "shield of the dark lord", chance = 200},
    {name = "Iluminati helmet", chance = 400}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5000},
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
    	{name ="combat", interval = 2000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -800, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000},
    	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -4000, maxDamage = -6000, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -3400, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="gaz'haragoth iceball", interval = 2000, chance = 24, minDamage = -1000, maxDamage = -1000, target = false},
    	{name ="gaz'haragoth death", interval = 4000, chance = 6, target = false},
    	{name ="gaz'haragoth paralyze", interval = 2000, chance = 12, target = false}
}

monster.defenses = {
    	defense = 65,
    	armor = 55,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3500, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
