local mType = Game.createMonsterType("(Freeza i)")
local monster = {}

monster.description = "a freeza i"
monster.experience = 10000
monster.health = 25000
monster.maxHealth = 25000
monster.race = "fire"
monster.corpse = 41747
monster.speed = 440
monster.manaCost = 0
monster.raceId = 2691

monster.outfit = {
    lookType = 2020,
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
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 85,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 369},
    {id = 239, chance = 74250},
    {id = 3275, chance = 40500},
    {id = 6299, chance = 33750},
    {id = 3098, chance = 33750},
    {id = 3027, chance = 27000, maxCount = 18},
    {id = 3032, chance = 27000, maxCount = 14},
    {id = 3284, chance = 20250},
    {id = 3046, chance = 20250},
    {id = 3054, chance = 20250},
    {id = 3029, chance = 20250, maxCount = 14},
    {id = 3026, chance = 20250, maxCount = 18},
    {id = 3420, chance = 13500},
    {id = 6499, chance = 13500},
    {id = 3051, chance = 13500},
    {id = 3281, chance = 13500},
    {id = 9058, chance = 13500},
    {id = 3063, chance = 13500},
    {id = 3364, chance = 13500},
    {id = 3041, chance = 6750},
    {id = 3356, chance = 6750},
    {id = 3320, chance = 6750},
    {id = 3038, chance = 6750},
    {id = 3048, chance = 6750},
    {id = 3290, chance = 6750},
    {id = 3033, chance = 20250, maxCount = 16},
    {id = 3066, chance = 6750},
    {id = 3049, chance = 6750},
    {id = 3081, chance = 6750},
    {name = "complete amethyst", chance = 2640},
    {name = "tornado ice rune", chance = 3580},
    {name = "leopard axe", chance = 1770},
    {name = "royal legs", chance = 880},
    {name = "platinum thief axe", chance = 1320},
    {name = "Earth boots", chance = -30}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -250, length = 7, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -600, range = 4, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -200, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 1},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -1},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
