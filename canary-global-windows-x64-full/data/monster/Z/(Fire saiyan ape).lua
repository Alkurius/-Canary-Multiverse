local mType = Game.createMonsterType("(Fire saiyan ape)")
local monster = {}

monster.description = "a fire saiyan ape"
monster.experience = 3600
monster.health = 4100
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 41747
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2283

monster.outfit = {
    lookType = 1612,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3007, chance = 554},
    {name = "gold coin", chance = 40500, maxCount = 135},
    {name = "gold coin", chance = 40500, maxCount = 135},
    {name = "gold coin", chance = 51300, maxCount = 93},
    {name = "platinum coin", chance = 3780, maxCount = 5},
    {name = "terra rod", chance = 27000},
    {name = "golden legs", chance = 176},
    {name = "steel boots", chance = 1066},
    {name = "orichalcum pearl", chance = 2025, maxCount = 5},
    {name = "red piece of cloth", chance = 5400},
    {name = "soul orb", chance = 29025},
    {name = "soul orb", chance = 68},
    {id = 6300, chance = 81},
    {name = "demonic essence", chance = 30375},
    {name = "flask of demonic blood", chance = 47250, maxCount = 4},
    {name = "assassin dagger", chance = 891},
    {name = "noble axe", chance = 2700},
    {name = "great health potion", chance = 14175},
    {name = "jalapeno pepper", chance = 39528, maxCount = 5},
    {name = "arcane earth backpack", chance = 2640},
    {name = "great emerald", chance = 2140},
    {name = "ultimate holy rune", chance = 3300},
    {name = "samurai sword", chance = 720},
    {name = "corrupted demon helmet", chance = 920},
    {name = "ancestral esmeralda bow", chance = 1880}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -510},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -700, length = 8, spread = 3, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -300, radius = 4, target = false},
    	{name ="fury skill reducer", interval = 2000, chance = 5, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -120, maxDamage = -300, radius = 3, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -250, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 30000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 800, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
