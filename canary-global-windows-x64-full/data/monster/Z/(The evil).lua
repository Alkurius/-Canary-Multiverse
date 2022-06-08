local mType = Game.createMonsterType("(The evil)")
local monster = {}

monster.description = "a the evil"
monster.experience = 10000
monster.health = 75000
monster.maxHealth = 75000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 215
monster.manaCost = 0
monster.raceId = 2218

monster.outfit = {
    lookType = 1547,
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
    {id = 3031, chance = 100000, maxCount = 195},
    {id = 8899, chance = 76700},
    {id = 8896, chance = 52000},
    {id = 7443, chance = 42900},
    {id = 239, chance = 39000},
    {id = 7642, chance = 39000},
    {id = 7440, chance = 36400},
    {id = 7439, chance = 29900},
    {id = 238, chance = 27300},
    {id = 6299, chance = 24700},
    {id = 3067, chance = 24700},
    {id = 3258, chance = 24700},
    {id = 3035, chance = 24700, maxCount = 34},
    {id = 3265, chance = 24700},
    {id = 7404, chance = 20800},
    {id = 3092, chance = 20800},
    {id = 7643, chance = 20800},
    {id = 8082, chance = 20800},
    {id = 3093, chance = 18200},
    {id = 6499, chance = 18200},
    {id = 7407, chance = 18200},
    {id = 2949, chance = 18200},
    {id = 7418, chance = 18200},
    {id = 8084, chance = 18200},
    {id = 2966, chance = 18200},
    {id = 3071, chance = 14300},
    {id = 8094, chance = 14300},
    {id = 7416, chance = 12350},
    {id = 7449, chance = 12350},
    {id = 3098, chance = 12350},
    {id = 5954, chance = 9100, maxCount = 3},
    {id = 3052, chance = 9100},
    {id = 7383, chance = 9100},
    {id = 3053, chance = 9100},
    {id = 8092, chance = 9100},
    {id = 2958, chance = 9100},
    {id = 2948, chance = 9100},
    {id = 2965, chance = 6110},
    {id = 3097, chance = 6110},
    {id = 3284, chance = 6110},
    {id = 7386, chance = 6110},
    {id = 3091, chance = 6110},
    {name = "UH backpack", chance = 2270},
    {name = "perfect sapphire", chance = 1210},
    {name = "arcane holy rune", chance = 2970},
    {name = "empire club", chance = 1240},
    {name = "pit demon shield", chance = 1190},
    {name = "sword of the dark lord", chance = 2120},
    {name = "Iluminati legs", chance = 390}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -180, maxDamage = -660, radius = 4, effect = CONST_ME_PURPLEENERGY, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -850, length = 5, spread = 2, effect = CONST_ME_BLACKSMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -200, radius = 4, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, radius = 5, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
    	defense = 46,
    	armor = 48,
    	{name ="combat", interval = 3000, chance = 14, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 99},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
