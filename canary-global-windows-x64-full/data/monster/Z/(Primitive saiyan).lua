local mType = Game.createMonsterType("(Primitive saiyan)")
local monster = {}

monster.description = "a primitive saiyan"
monster.experience = 2635
monster.health = 1800
monster.maxHealth = 1800
monster.race = "venom"
monster.corpse = 41744
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2297

monster.outfit = {
    lookType = 1626,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    {id = 3031, chance = 100000, maxCount = 14},
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3577, chance = 45000, maxCount = 68},
    {id = 3582, chance = 27000, maxCount = 11},
    {id = 3028, chance = 45000, maxCount = 4},
    {id = 647, chance = 5400},
    {id = 5014, chance = 100000},
    {name = "imperfect amethyst", chance = 1040},
    {name = "charm cancel invisibility", chance = 710},
    {name = "meteoro fire rune", chance = 3260}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 40, condition = {type = CONDITION_POISON, totalDamage = 95, interval = 4000}},
    	{name ="combat", interval = 1000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -200, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="speed", interval = 1000, chance = 34, speedChange = -850, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false, duration = 30000},
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -40, maxDamage = -130, radius = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 31,
    	armor = 30,
    	{name ="ultimate healing", interval = 1200, chance = 35, minDamage = 600, maxDamage = 800, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
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
