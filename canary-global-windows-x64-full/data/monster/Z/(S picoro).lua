local mType = Game.createMonsterType("(S picoro)")
local monster = {}

monster.description = "a s picoro"
monster.experience = 55000
monster.health = 300000
monster.maxHealth = 300000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2262

monster.outfit = {
    lookType = 1591,
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
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 22516, chance = 100000},
    {id = 3031, chance = 100000, maxCount = 270},
    {id = 281, chance = 18900, maxCount = 7},
    {id = 282, chance = 18900, maxCount = 7},
    {id = 3029, chance = 16200, maxCount = 12},
    {id = 3026, chance = 16200, maxCount = 11},
    {id = 3033, chance = 13500, maxCount = 7},
    {id = 9057, chance = 13500, maxCount = 11},
    {id = 3035, chance = 10800, maxCount = 78},
    {id = 6499, chance = 14850},
    {id = 16122, chance = 13500, maxCount = 8},
    {id = 16123, chance = 13500, maxCount = 8},
    {id = 16124, chance = 13500, maxCount = 8},
    {id = 3039, chance = 1350},
    {id = 3037, chance = 1350},
    {id = 3038, chance = 1350},
    {id = 3041, chance = 1350},
    {id = 3053, chance = 8100},
    {id = 3098, chance = 8100},
    {id = 22867, chance = 1040},
    {id = 8050, chance = 1040},
    {id = 22726, chance = 905},
    {id = 22762, chance = 675},
    {id = 22555, chance = 675},
    {name = "LL death backpack", chance = 950},
    {name = "crystal sapphire", chance = 1540},
    {name = "reflect holy rune", chance = 2810},
    {name = "empire shield", chance = 1680},
    {name = "crystal axe", chance = 1480},
    {name = "ancient gold helmet", chance = 1650},
    {name = "divine helmet", chance = 2120},
    {name = "Picoro armor", chance = 1870},
    {name = "Picoro legs", chance = 1660},
    {name = "Picoro boots", chance = 1390},
    {name = "Picoro helmet", chance = 1080}
}

monster.attacks = {
    	{name ="melee", interval = 3000, chance = 100, minDamage = -1500, maxDamage = -2300},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -800, length = 12, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -2600, maxDamage = -3300, length = 12, spread = 3, effect = CONST_ME_TELEPORT, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1500, length = 6, spread = 2, effect = CONST_ME_FIREAREA, target = false},
    	{name ="speed", interval = 2000, chance = 35, speedChange = -600, radius = 8, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 220, maxDamage = 535, effect = CONST_ME_YELLOW_RINGS, target = false},
    	{name ="zamulosh invisible", interval = 2000, chance = 25},
    	{name ="zamulosh tp", interval = 2000, chance = 15, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 15},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
