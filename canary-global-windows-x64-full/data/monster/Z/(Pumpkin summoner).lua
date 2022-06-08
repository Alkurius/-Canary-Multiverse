local mType = Game.createMonsterType("(Pumpkin summoner)")
local monster = {}

monster.description = "a pumpkin summoner"
monster.experience = 10000
monster.health = 90500
monster.maxHealth = 90500
monster.race = "fire"
monster.corpse = 41089
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2344

monster.outfit = {
    lookType = 1673,
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
    {id = 6499, chance = 100000},
    {id = 3031, chance = 100000, maxCount = 252},
    {id = 8899, chance = 70200},
    {id = 8896, chance = 58500},
    {id = 238, chance = 35100},
    {id = 7642, chance = 33800},
    {id = 239, chance = 29900},
    {id = 7643, chance = 28600},
    {id = 9058, chance = 27300},
    {id = 3035, chance = 27300, maxCount = 39},
    {id = 6104, chance = 27300},
    {id = 5944, chance = 27300, maxCount = 13},
    {id = 3034, chance = 23400, maxCount = 39},
    {id = 5911, chance = 22100, maxCount = 13},
    {id = 3017, chance = 22100},
    {id = 5912, chance = 19500, maxCount = 13},
    {id = 5909, chance = 19500, maxCount = 13},
    {id = 5910, chance = 18200, maxCount = 13},
    {id = 5914, chance = 18200, maxCount = 13},
    {id = 5913, chance = 15600, maxCount = 13},
    {id = 5954, chance = 12610, maxCount = 3},
    {id = 3079, chance = 11310},
    {id = 3057, chance = 7800},
    {id = 3554, chance = 5850},
    {id = 3555, chance = 1950},
    {name = "LL fire backpack", chance = 1950},
    {name = "fine ruby", chance = 1610},
    {name = "mana leach fire rune", chance = 3950},
    {name = "empire bow", chance = 1090},
    {name = "pharaonic sword", chance = 1180},
    {name = "ancient gold legs", chance = 1440},
    {name = "divine boots", chance = 1750}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -500, range = 4, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -500, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -100, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = false},
    	-- fire
    	{name ="condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -10, maxDamage = -10, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -60, maxDamage = -200, radius = 5, effect = CONST_ME_WATERSPLASH, target = false}
}

monster.defenses = {
    	defense = 55,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 40, maxDamage = 60, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 400, maxDamage = 600, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="invisible", interval = 1000, chance = 5, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 25},
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
