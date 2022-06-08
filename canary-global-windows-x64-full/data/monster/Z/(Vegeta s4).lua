local mType = Game.createMonsterType("(Vegeta s4)")
local monster = {}

monster.description = "a vegeta s4"
monster.experience = 0
monster.health = 250000
monster.maxHealth = 250000
monster.race = "venom"
monster.corpse = 41750
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2256

monster.outfit = {
    lookType = 1585,
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
    {name = "Explosion Backpack", chance = 2150},
    {name = "crystal sapphire", chance = 1540},
    {name = "life leach holy rune", chance = 2840},
    {name = "empire boots", chance = 350},
    {name = "crystal club", chance = 1060},
    {name = "boots of the dark lord", chance = 2050},
    {name = "great Iluminati sword", chance = 1190}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -962},
    	{name ="practise fire wave", interval = 2000, chance = 20, minDamage = -600, maxDamage = -900, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, radius = 8, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1100, length = 10, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, length = 10, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="anomaly break", interval = 2000, chance = 40, target = false},
    	{name ="hunger summon", interval = 2000, chance = 20, target = false}
}

monster.defenses = {
    	defense = 100,
    	armor = 100,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 191, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
