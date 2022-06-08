local mType = Game.createMonsterType("(Goku s4)")
local monster = {}

monster.description = "a goku s4"
monster.experience = 40000
monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2241

monster.outfit = {
    lookType = 1570,
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
    canPushCreatures = true,
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
    {id = 3035, chance = 91274, maxCount = 78},
    {id = 3043, chance = 91274},
    {id = 16119, chance = 19858, maxCount = 5},
    {id = 3032, chance = 17766, maxCount = 16},
    {id = 9057, chance = 15498, maxCount = 16},
    {id = 3033, chance = 19602, maxCount = 16},
    {id = 238, chance = 19602, maxCount = 24},
    {id = 3028, chance = 19602, maxCount = 3},
    {id = 3030, chance = 19602, maxCount = 16},
    {id = 239, chance = 19602, maxCount = 11},
    {id = 7642, chance = 19602, maxCount = 14},
    {id = 7643, chance = 19602, maxCount = 11},
    {id = 7440, chance = 13581},
    {id = 3039, chance = 19602},
    {id = 3037, chance = 19602},
    {id = 27619, chance = 13500},
    {id = 8900, chance = 23260},
    {id = 5892, chance = 19602},
    {id = 3071, chance = 19602},
    {id = 3320, chance = 21344},
    {id = 3280, chance = 19602},
    {id = 811, chance = 19602},
    {id = 11454, chance = 19602},
    {id = 3081, chance = 19602},
    {id = 8908, chance = 19602},
    {id = 5904, chance = 19602},
    {id = 27657, chance = 1350},
    {id = 27651, chance = 810},
    {id = 27649, chance = 688},
    {id = 27650, chance = 756},
    {id = 22721, chance = 783},
    {id = 27526, chance = 702},
    {id = 27648, chance = 540},
    {name = "GFB Backpack", chance = 1180},
    {name = "crystal emerald", chance = 1890},
    {name = "tornado holy rune", chance = 3270},
    {name = "empire legs", chance = 1170},
    {name = "crystal armor", chance = 400},
    {name = "axe of the dark lord", chance = 810},
    {name = "Iluminati sword", chance = 1920},
    {name = "Goku boots", chance = 410}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -1000, range = 3, length = 6, spread = 8, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -1000, range = 3, length = 9, spread = 4, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -135, maxDamage = -1000, radius = 2, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1000, radius = 8, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
    	{type = COMBAT_ENERGYDAMAGE, percent = 60},
    	{type = COMBAT_EARTHDAMAGE, percent = 60},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 60},
    	{type = COMBAT_HOLYDAMAGE , percent = 60},
    	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
