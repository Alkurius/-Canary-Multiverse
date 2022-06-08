local mType = Game.createMonsterType("(Cancerberus)")
local monster = {}

monster.description = "a cancerberus"
monster.experience = 5440
monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 41122
monster.speed = 410
monster.manaCost = 0
monster.raceId = 2362

monster.outfit = {
    lookType = 1691,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 7426, chance = 2800},
    {id = 7368, chance = 35000, maxCount = 14},
    {id = 3116, chance = 1260},
    {id = 3027, chance = 12880, maxCount = 6},
    {id = 16131, chance = 17500},
    {id = 6558, chance = 28000},
    {id = 6558, chance = 28000},
    {id = 6499, chance = 28000},
    {id = 4871, chance = 560},
    {id = 9636, chance = 14000},
    {id = 3280, chance = 9800},
    {id = 3281, chance = 1400},
    {id = 9058, chance = 2100},
    {id = 238, chance = 42000, maxCount = 4},
    {id = 7642, chance = 28000},
    {id = 3038, chance = 1400},
    {id = 5910, chance = 7000},
    {id = 3582, chance = 42000, maxCount = 8},
    {id = 5925, chance = 14000},
    {id = 9637, chance = 28000},
    {id = 3318, chance = 10500},
    {id = 817, chance = 4200},
    {id = 818, chance = 2100},
    {id = 826, chance = 1120},
    {id = 821, chance = 1400},
    {id = 827, chance = 1260},
    {id = 7421, chance = 1400},
    {id = 3035, chance = 100000, maxCount = 10},
    {id = 3039, chance = 6300},
    {id = 5911, chance = 4200},
    {id = 6553, chance = 1400},
    {id = 3032, chance = 14000, maxCount = 4},
    {id = 3030, chance = 14000, maxCount = 4},
    {id = 9057, chance = 14000, maxCount = 4},
    {id = 5944, chance = 28000},
    {id = 7643, chance = 22400},
    {id = 3071, chance = 9800},
    {id = 3037, chance = 6300},
    {id = 5914, chance = 8400},
    {name = "ML death backpack", chance = 2270},
    {name = "the Demon Doll", chance = 620},
    {name = "arcane energy rune", chance = 3140},
    {name = "lava helmet", chance = 630},
    {name = "mythical crown club", chance = 120},
    {name = "Medusa wand", chance = 1250}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -520, condition = {type = CONDITION_POISON, totalDamage = 800, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -395, maxDamage = -498, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -660, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -976, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -403, radius = 1, effect = CONST_ME_HITBYFIRE, target = true},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -549, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 220, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
