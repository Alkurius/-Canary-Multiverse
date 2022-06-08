local mType = Game.createMonsterType("(Chicken little)")
local monster = {}

monster.description = "a chicken little"
monster.experience = 225
monster.health = 360
monster.maxHealth = 360
monster.race = "blood"
monster.corpse = 39877
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2854

monster.outfit = {
    lookType = 2183,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Bird",
    race = BESTY_RACE_BIRD,
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
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 124}
}

monster.attacks = {
    	{name ="melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -100},
    	{name ="drunk", interval = 1000, chance = 30, length = 5, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 1000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -25, maxDamage = -45, range = 5, shootEffect = CONST_ANI_SUDDENDEATH, target = false},
    	{name ="combat", interval = 1000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -15, maxDamage = -45, range = 1, target = false}
}

monster.defenses = {
    	defense = 18,
    	armor = 18
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
