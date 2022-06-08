local mType = Game.createMonsterType("(Strong gohan)")
local monster = {}

monster.description = "a strong gohan"
monster.experience = 18000
monster.health = 24000
monster.maxHealth = 24000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 335
monster.manaCost = 0
monster.raceId = 2733

monster.outfit = {
    lookType = 2062,
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
    {name = "platinum coin", chance = 13500, maxCount = 11},
    {name = "skull coin", chance = 90004},
    {name = "diamond", chance = 67500},
    {name = "silver hand mirror", chance = 56255, maxCount = 3},
    {name = "white gem", chance = 45000},
    {name = "terra rod", chance = 22504},
    {name = "yellow gem", chance = 22504},
    {name = "perfect topaz", chance = 1830},
    {name = "arcane earth rune", chance = 2450},
    {name = "plague flame wand", chance = 1520},
    {name = "nightmare boots", chance = 1000},
    {name = "black wizard club", chance = 1300},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
    	{name ="combat", interval = 1500, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -500, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
    	{name ="combat", interval = 1500, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -650, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="combat", interval = 1500, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 1500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
