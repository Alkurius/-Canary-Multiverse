local mType = Game.createMonsterType("(Charged gargoyle)")
local monster = {}

monster.description = "a charged gargoyle"
monster.experience = 1800
monster.health = 2500
monster.maxHealth = 2500
monster.race = "undead"
monster.corpse = 41744
monster.speed = 254
monster.manaCost = 0
monster.raceId = 2259

monster.outfit = {
    lookType = 1588,
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
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small stone", chance = 39299, maxCount = 13},
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "platinum coin", chance = 100000, maxCount = 5},
    {name = "guardian halberd", chance = 728},
    {name = "tower shield", chance = 1066},
    {name = "iron ore", chance = 2210},
    {name = "ancient stone", chance = 26026},
    {name = "shiny stone", chance = 1040},
    {name = "Zaoan sword", chance = 130},
    {name = "Zaoan halberd", chance = 2418},
    {name = "spiked iron ball", chance = 12948},
    {name = "clay lump", chance = 936},
    {name = "piece of marble rock", chance = 559},
    {id = 12600, chance = 520},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm paralyze", chance = 2230},
    {name = "reflect holy rune", chance = 2810}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300}
}

monster.defenses = {
    	defense = 40,
    	armor = 40
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 70},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
