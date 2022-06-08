local mType = Game.createMonsterType("(Angel)")
local monster = {}

monster.description = "a angel"
monster.experience = 7475
monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 41037
monster.speed = 410
monster.manaCost = 0
monster.raceId = 2325

monster.outfit = {
    lookType = 1654,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 363},
    {id = 3035, chance = 27300, maxCount = 9},
    {id = 6558, chance = 3000},
    {id = 238, chance = 3000},
    {id = 3033, chance = 315, maxCount = 4},
    {id = 3028, chance = 450, maxCount = 4},
    {id = 3032, chance = 450, maxCount = 4},
    {id = 3030, chance = 525, maxCount = 4},
    {id = 9057, chance = 420, maxCount = 4},
    {id = 3041, chance = 600},
    {id = 6299, chance = 690},
    {id = 6499, chance = 645},
    {id = 8043, chance = 780},
    {id = 21974, chance = 1200},
    {id = 826, chance = 600},
    {id = 3078, chance = 600},
    {id = 3574, chance = 600},
    {id = 21981, chance = 600},
    {id = 21975, chance = 900},
    {id = 5911, chance = 450},
    {id = 3016, chance = 600},
    {id = 5944, chance = 600},
    {id = 8074, chance = 600},
    {id = 3071, chance = 600},
    {name = "arcane fire backpack", chance = 910},
    {name = "fine ruby", chance = 1610},
    {name = "reflect fire rune", chance = 3560},
    {name = "lava shield", chance = 240},
    {name = "angel quiver", chance = 1240},
    {name = "angel armor", chance = 2080},
    {name = "angel shield", chance = 880},
    {name = "angel sword", chance = 1230},
    {name = "angel wand", chance = 840},
    {name = "angel boots", chance = 1030},
    {name = "full angel helmet", chance = 620},
    {name = "full angel shield", chance = 1250},
    {name = "full angel rod", chance = 1730},
    {name = "full angel bow", chance = 1160},
    {name = "full angel boots", chance = 660}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -100, range = 7, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 4, spread = 2, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = 120, maxDamage = 450, length = 1, spread = 0, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = 150, maxDamage = 350, radius = 3, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = 100, maxDamage = 300, radius = 4, effect = CONST_ME_BLACKSMOKE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
    	defense = 55,
    	armor = 77,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
