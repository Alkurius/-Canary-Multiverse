local mType = Game.createMonsterType("(Trunks)")
local monster = {}

monster.description = "a trunks"
monster.experience = 2100
monster.health = 2400
monster.maxHealth = 2400
monster.race = "blood"
monster.corpse = 41744
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2229

monster.outfit = {
    lookType = 1558,
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
    Stars = 3,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 327},
    {id = 3035, chance = 24570, maxCount = 7},
    {id = 239, chance = 1620, maxCount = 3},
    {id = 7643, chance = 2984},
    {id = 238, chance = 1620},
    {id = 5896, chance = 1080},
    {id = 3582, chance = 2565, maxCount = 3},
    {id = 5902, chance = 608},
    {id = 22057, chance = 783},
    {id = 7439, chance = 1080},
    {id = 22056, chance = 756},
    {id = 3081, chance = 580},
    {id = 7419, chance = 162},
    {id = 22085, chance = 405},
    {id = 7432, chance = 540},
    {id = 22060, chance = 135},
    {id = 7383, chance = 270},
    {id = 7452, chance = 405},
    {id = 3053, chance = 540},
    {id = 22103, chance = 270},
    {id = 22083, chance = 270},
    {name = "semi-perfect emerald", chance = 1530},
    {name = "charm challenge", chance = 1830},
    {name = "meteoro holy rune", chance = 2960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 50, maxDamage = -485},
    	{name ="speed", interval = 4000, chance = 20, radius = 7, effect = CONST_ME_POFF, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -65, maxDamage = -335, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
