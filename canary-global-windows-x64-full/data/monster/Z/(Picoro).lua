local mType = Game.createMonsterType("(Picoro)")
local monster = {}

monster.description = "a picoro"
monster.experience = 2100
monster.health = 1800
monster.maxHealth = 1800
monster.race = "undead"
monster.corpse = 41744
monster.speed = 262
monster.manaCost = 0
monster.raceId = 2263

monster.outfit = {
    lookType = 1592,
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
    {id = 2842, chance = 11475},
    {name = "golden mug", chance = 4050},
    {name = "small sapphire", chance = 7020},
    {name = "gold coin", chance = 44550, maxCount = 135},
    {name = "gold coin", chance = 44550, maxCount = 135},
    {name = "gold coin", chance = 44550, maxCount = 57},
    {id = 3051, chance = 6750},
    {name = "life crystal", chance = 702},
    {name = "ice rapier", chance = 473},
    {name = "strange helmet", chance = 608},
    {name = "dragon scale mail", chance = 108},
    {name = "royal helmet", chance = 284},
    {name = "tower shield", chance = 459},
    {name = "power bolt", chance = 8100, maxCount = 8},
    {name = "dragon ham", chance = 100000, maxCount = 7},
    {name = "green mushroom", chance = 16200},
    {name = "shard", chance = 742},
    {name = "dragon slayer", chance = 162},
    {id = 7441, chance = 5400},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm steal life", chance = 1890},
    {name = "reflect holy rune", chance = 2810}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -225},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -175, maxDamage = -380, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
    	{name ="speed", interval = 2000, chance = 5, speedChange = -700, radius = 3, effect = CONST_ME_POFF, target = false, duration = 12000},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -850, length = 7, spread = 3, effect = CONST_ME_ICEATTACK, target = false, duration = 18000},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_ICEDAMAGE, minDamage = -60, maxDamage = -120, radius = 3, effect = CONST_ME_ICETORNADO, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -240, radius = 4, effect = CONST_ME_ICEAREA, target = true},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -220, length = 1, spread = 0, effect = CONST_ME_POFF, target = false},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -600, radius = 4, effect = CONST_ME_ICEAREA, target = true, duration = 12000}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 290, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
