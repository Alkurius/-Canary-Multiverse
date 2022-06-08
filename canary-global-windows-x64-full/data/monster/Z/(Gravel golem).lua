local mType = Game.createMonsterType("(Gravel golem)")
local monster = {}

monster.description = "a gravel golem"
monster.experience = 210
monster.health = 350
monster.maxHealth = 350
monster.race = "venom"
monster.corpse = 41218
monster.speed = 240
monster.manaCost = 0
monster.raceId = 2400

monster.outfit = {
    lookType = 1729,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    {name = "gold coin", chance = 100000, maxCount = 69},
    {name = "halberd", chance = 1250},
    {name = "gear wheel", chance = 6050},
    {id = 8894, chance = 250},
    {name = "slime mould", chance = 388}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -60, range = 7, shootEffect = CONST_ANI_SMALLSTONE, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_STUN, target = true, duration = 2000}
}

monster.defenses = {
    	defense = 15,
    	armor = 15
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)