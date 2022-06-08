local mType = Game.createMonsterType("(Frozen skeleton)")
local monster = {}

monster.description = "a frozen skeleton"
monster.experience = 339
monster.health = 443
monster.maxHealth = 443
monster.race = "undead"
monster.corpse = 41741
monster.speed = 240
monster.manaCost = 0
monster.raceId = 2206

monster.outfit = {
    lookType = 1535,
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
    Stars = 2,
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
    canPushCreatures = false,
    staticAttackChance = 50,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "black pearl", chance = 2176},
    {name = "small diamond", chance = 89},
    {name = "small sapphire", chance = 780},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 4},
    {name = "ice rapier", chance = 540},
    {name = "strange helmet", chance = 599},
    {name = "shard", chance = 359},
    {id = 7441, chance = 6750},
    {name = "crystal sword", chance = 239},
    {name = "strong health potion", chance = 599},
    {name = "glacier mask", chance = 150},
    {name = "frosty heart", chance = 15000}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -220},
    	{name ="speed", interval = 1000, chance = 13, speedChange = -800, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false, duration = 20000},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -50, maxDamage = -85, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="ice golem skill reducer", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
    	defense = 26,
    	armor = 25
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 100},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
