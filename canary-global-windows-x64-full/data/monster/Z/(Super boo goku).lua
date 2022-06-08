local mType = Game.createMonsterType("(Super boo goku)")
local monster = {}

monster.description = "a super boo goku"
monster.experience = 35000
monster.health = 80000
monster.maxHealth = 80000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2685

monster.outfit = {
    lookType = 2014,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3025, chance = 4725},
    {id = 3116, chance = 12150},
    {id = 3027, chance = 20250, maxCount = 20},
    {id = 3041, chance = 2025},
    {id = 3079, chance = 5400},
    {id = 3076, chance = 3375},
    {id = 3008, chance = 2025},
    {id = 3007, chance = 7425},
    {id = 3420, chance = 20925},
    {id = 3356, chance = 14850},
    {id = 3275, chance = 27000},
    {id = 3322, chance = 6075},
    {id = 3051, chance = 18225},
    {id = 3320, chance = 22950},
    {id = 3281, chance = 16875},
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3031, chance = 89910, maxCount = 135},
    {id = 3063, chance = 10800},
    {id = 3364, chance = 6750},
    {id = 2903, chance = 10125},
    {id = 3306, chance = 6075},
    {id = 3038, chance = 2025},
    {id = 3284, chance = 10125},
    {id = 3061, chance = 1350},
    {id = 3046, chance = 15525},
    {id = 3366, chance = 4050},
    {id = 3414, chance = 10125},
    {id = 3048, chance = 6750},
    {id = 3062, chance = 5400},
    {id = 3070, chance = 4725},
    {id = 3060, chance = 16200},
    {id = 3055, chance = 6075},
    {id = 3084, chance = 6075},
    {id = 2848, chance = 3510},
    {id = 3098, chance = 17550},
    {id = 3006, chance = 4725},
    {id = 3054, chance = 17550},
    {id = 3290, chance = 20925},
    {id = 3324, chance = 6750},
    {id = 3033, chance = 18225, maxCount = 27},
    {id = 3028, chance = 12825, maxCount = 7},
    {id = 3032, chance = 20925, maxCount = 14},
    {id = 3029, chance = 18225, maxCount = 14},
    {id = 3066, chance = 4725},
    {id = 3049, chance = 12825},
    {id = 3081, chance = 5400},
    {id = 3058, chance = 3375},
    {id = 3034, chance = 18900, maxCount = 9},
    {id = 2993, chance = 19575},
    {id = 3309, chance = 18225},
    {id = 3265, chance = 27000},
    {id = 3069, chance = 4725},
    {id = 3002, chance = 135},
    {id = 3072, chance = 3375},
    {id = 3026, chance = 16875, maxCount = 20},
    {name = "perfect ruby", chance = 2300},
    {name = "ultimate missile ice rune", chance = 3320},
    {name = "death's shadow helmet (charged)", chance = 220},
    {name = "royal armor", chance = 460},
    {name = "pharaonic rod (Energy)", chance = 1800},
    {name = "divine rod", chance = 540},
    {name = "Vegeta legs", chance = 1470}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 230, attack = 210},
    	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1900, radius = 9, effect = CONST_ME_MORTAREA, target = false},
    	{name ="speed", interval = 1000, chance = 12, speedChange = -850, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000},
    	{name ="strength", interval = 1000, chance = 10, minDamage = -600, maxDamage = -1450, radius = 5, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 3000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 3000, chance = 8, type = COMBAT_MANADRAIN, minDamage = -600, maxDamage = -700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 5000, chance = 18, minDamage = -800, maxDamage = -1000, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 6, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
    	defense = 145,
    	armor = 188,
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 8, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
