local mType = Game.createMonsterType("(Deadpool)")
local monster = {}

monster.description = "a deadpool"
monster.experience = 10000
monster.health = 75000
monster.maxHealth = 75000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 215
monster.manaCost = 0
monster.raceId = 2528

monster.outfit = {
    lookType = 1857,
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
    {id = 3031, chance = 100000, maxCount = 202},
    {id = 8899, chance = 79650},
    {id = 8896, chance = 54000},
    {id = 7443, chance = 44550},
    {id = 239, chance = 40500},
    {id = 7642, chance = 40500},
    {id = 7440, chance = 37800},
    {id = 7439, chance = 31050},
    {id = 238, chance = 28350},
    {id = 6299, chance = 25650},
    {id = 3067, chance = 25650},
    {id = 3258, chance = 25650},
    {id = 3035, chance = 25650, maxCount = 35},
    {id = 3265, chance = 25650},
    {id = 7404, chance = 21600},
    {id = 3092, chance = 21600},
    {id = 7643, chance = 21600},
    {id = 8082, chance = 21600},
    {id = 3093, chance = 18900},
    {id = 6499, chance = 18900},
    {id = 7407, chance = 18900},
    {id = 2949, chance = 18900},
    {id = 7418, chance = 18900},
    {id = 8084, chance = 18900},
    {id = 2966, chance = 18900},
    {id = 3071, chance = 14850},
    {id = 8094, chance = 14850},
    {id = 7416, chance = 12825},
    {id = 7449, chance = 12825},
    {id = 3098, chance = 12825},
    {id = 5954, chance = 9450, maxCount = 3},
    {id = 3052, chance = 9450},
    {id = 7383, chance = 9450},
    {id = 3053, chance = 9450},
    {id = 8092, chance = 9450},
    {id = 2958, chance = 9450},
    {id = 2948, chance = 9450},
    {id = 2965, chance = 6345},
    {id = 3097, chance = 6345},
    {id = 3284, chance = 6345},
    {id = 7386, chance = 6345},
    {id = 3091, chance = 6345},
    {name = "demonic death potion", chance = 1300},
    {name = "arcane death rune", chance = 4310},
    {name = "special tornado water rune", chance = 3580},
    {name = "legendary warrior boots", chance = 630},
    {name = "pharaonic wand (Death)", chance = 1790},
    {name = "ancient gold rod", chance = 2100},
    {name = "divine shield", chance = 1920}
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
