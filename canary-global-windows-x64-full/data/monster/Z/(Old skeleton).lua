local mType = Game.createMonsterType("(Old skeleton)")
local monster = {}

monster.description = "a old skeleton"
monster.experience = 560
monster.health = 850
monster.maxHealth = 850
monster.race = "undead"
monster.corpse = 41744
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2209

monster.outfit = {
    lookType = 1538,
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
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3007, chance = 2145},
    {name = "silver brooch", chance = 5200},
    {name = "black pearl", chance = 1742},
    {name = "gold coin", chance = 100000, maxCount = 208},
    {name = "scarab coin", chance = 13000, maxCount = 4},
    {name = "strange talisman", chance = 5850},
    {id = 3046, chance = 7800},
    {name = "poison dagger", chance = 494},
    {name = "worm", chance = 26000, maxCount = 4},
    {name = "gauze bandage", chance = 13000},
    {name = "flask of embalming fluid", chance = 16380},
    {id = 12483, chance = 3120},
    {name = "imperfect emerald", chance = 1690},
    {name = "charm steal mana", chance = 1880},
    {name = "ultimate earth rune", chance = 2780}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120, condition = {type = CONDITION_POISON, totalDamage = 3, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -130, range = 1, effect = CONST_ME_MORTAREA, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -300, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
