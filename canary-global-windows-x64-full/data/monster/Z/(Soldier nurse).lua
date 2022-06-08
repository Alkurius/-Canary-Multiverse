local mType = Game.createMonsterType("(Soldier nurse)")
local monster = {}

monster.description = "a soldier nurse"
monster.experience = 1500
monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 41744
monster.speed = 248
monster.manaCost = 0
monster.raceId = 2603

monster.outfit = {
    lookType = 1932,
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
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 165},
    {id = 3035, chance = 45243, maxCount = 3},
    {id = 11473, chance = 17435},
    {id = 237, chance = 13618, maxCount = 3},
    {id = 3066, chance = 12617},
    {id = 7425, chance = 5731},
    {id = 2920, chance = 5236},
    {id = 5878, chance = 5104},
    {id = 11472, chance = 3234, maxCount = 2},
    {id = 3033, chance = 2750, maxCount = 2},
    {id = 3032, chance = 2607, maxCount = 2},
    {id = 3030, chance = 2420, maxCount = 2},
    {id = 9057, chance = 2706, maxCount = 2},
    {id = 3028, chance = 2673, maxCount = 2},
    {id = 5911, chance = 1485},
    {id = 5910, chance = 1540},
    {id = 5912, chance = 2002},
    {id = 8082, chance = 1749},
    {id = 3037, chance = 616},
    {id = 3039, chance = 473},
    {id = 7401, chance = 176},
    {name = "ultimate explosion rune", chance = 2660},
    {name = "arcane water rune", chance = 2460},
    {name = "special tornado holy rune", chance = 3590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
    	{name ="combat", interval = 2000, chance = 24, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -130, range = 7, shootEffect = CONST_ANI_SMALLSTONE, target = true},
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -165, range = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_POISONAREA, target = false},
    	{name ="worm priestess paralyze", interval = 2000, chance = 12, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -115, maxDamage = -200, range = 7, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -300, range = 7, radius = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_HITBYPOISON, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="haste", interval = 2000, chance = 9, speedChange = 198, effect = CONST_ME_MAGIC_RED, target = false, duration = 1000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 25},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
