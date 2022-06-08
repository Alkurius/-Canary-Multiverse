local mType = Game.createMonsterType("(Dark spectre)")
local monster = {}

monster.description = "a dark spectre"
monster.experience = 32890
monster.health = 28750
monster.maxHealth = 28750
monster.race = "blood"
monster.corpse = 41747
monster.speed = 285
monster.manaCost = 0
monster.raceId = 2727

monster.outfit = {
    lookType = 2056,
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
    illusionable = false,
    canPushItems = false,
    canPushCreatures = false,
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
    {name = "crystal coin", chance = 98756},
    {name = "platinum coin", chance = 100000, maxCount = 46},
    {name = "green gem", chance = 90384},
    {name = "epee", chance = 44688},
    {name = "ultimate health potion", chance = 100000, maxCount = 7},
    {name = "violet gem", chance = 62384},
    {name = "giant sword", chance = 36288},
    {name = "crystal mace", chance = 32088},
    {name = "crown shield", chance = 26488},
    {name = "jade hammer", chance = 22288},
    {name = "perfect topaz", chance = 1830},
    {name = "ultimate ice rune", chance = 4020},
    {name = "plague sword", chance = 10},
    {name = "darkness boots", chance = 1310},
    {name = "black wizard armor", chance = 1000},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -450, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
    	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -550, maxDamage = -900, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -900, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false}
    	-- Chain: const_me-> CONST_ME_BLUE_ENERGY_SPARK, combat_t->COMBAT_ICEDAMAGE
}

monster.defenses = {
    	defense = 75,
    	armor = 100
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 40},
    	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
