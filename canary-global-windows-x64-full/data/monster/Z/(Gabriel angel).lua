local mType = Game.createMonsterType("(Gabriel angel)")
local monster = {}

monster.description = "a gabriel angel"
monster.experience = 7069
monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2310

monster.outfit = {
    lookType = 1639,
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
    {id = 3017, chance = 1350},
    {id = 5944, chance = 600},
    {id = 8074, chance = 600},
    {name = "ultimate energy backpack", chance = 820},
    {name = "great ruby", chance = 2170},
    {name = "life leach fire rune", chance = 3490},
    {name = "samurai twinaxe", chance = 900},
    {name = "angel quiver", chance = 1240},
    {name = "angel helmet", chance = 2120},
    {name = "angel shield", chance = 880},
    {name = "angel legs", chance = 2080},
    {name = "angel wand", chance = 840},
    {name = "angel bow", chance = 730},
    {name = "full angel helmet", chance = 620},
    {name = "full angel armor", chance = 710},
    {name = "full angel rod", chance = 1730},
    {name = "full angel gun", chance = 1620},
    {name = "full angel boots", chance = 660}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 100, maxDamage = 400, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 100, maxDamage = 300, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
    	defense = 55,
    	armor = 55,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
