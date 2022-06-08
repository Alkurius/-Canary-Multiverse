local mType = Game.createMonsterType("(Tristan)")
local monster = {}

monster.description = "a tristan"
monster.experience = 7313
monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 390
monster.manaCost = 0
monster.raceId = 2593

monster.outfit = {
    lookType = 1922,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 363},
    {id = 3035, chance = 27300, maxCount = 9},
    {id = 7368, chance = 3000, maxCount = 3},
    {id = 3027, chance = 3000},
    {id = 6558, chance = 3000},
    {id = 6499, chance = 3315},
    {id = 3028, chance = 1200, maxCount = 4},
    {id = 3032, chance = 1350, maxCount = 4},
    {id = 3030, chance = 975, maxCount = 4},
    {id = 3029, chance = 870, maxCount = 4},
    {id = 9057, chance = 870, maxCount = 4},
    {id = 239, chance = 1050},
    {id = 3026, chance = 990},
    {id = 7404, chance = 645},
    {id = 3041, chance = 5130},
    {id = 3567, chance = 5100},
    {id = 9058, chance = 600},
    {id = 21974, chance = 900},
    {id = 3070, chance = 945},
    {id = 3069, chance = 1035},
    {id = 21981, chance = 720},
    {id = 21975, chance = 750},
    {id = 8061, chance = 600},
    {id = 3017, chance = 900},
    {id = 3054, chance = 900},
    {id = 5944, chance = 900},
    {id = 8074, chance = 600},
    {id = 3403, chance = 600},
    {id = 8082, chance = 600},
    {id = 3037, chance = 600},
    {name = "complete emerald", chance = 1490},
    {name = "Angel Doll", chance = 450},
    {name = "special meteoro holy rune", chance = 2520},
    {name = "ogre shield", chance = 280},
    {name = "angel helmet", chance = 2120},
    {name = "angel armor", chance = 2080},
    {name = "angel legs", chance = 2080},
    {name = "angel sword", chance = 1230},
    {name = "angel bow", chance = 730},
    {name = "angel boots", chance = 1030},
    {name = "full angel armor", chance = 710},
    {name = "full angel shield", chance = 1250},
    {name = "full angel gun", chance = 1620},
    {name = "full angel bow", chance = 1160}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 100, maxDamage = 400, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = 100, maxDamage = 400, length = 8, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000},
    	{name ="drunk", interval = 2000, chance = 10, range = 3, radius = 4, effect = CONST_ME_STUN, target = true, duration = 4000}
}

monster.defenses = {
    	defense = 55,
    	armor = 75,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
