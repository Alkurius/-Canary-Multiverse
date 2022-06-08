local mType = Game.createMonsterType("(Man without neck)")
local monster = {}

monster.description = "a man without neck"
monster.experience = 2700
monster.health = 4800
monster.maxHealth = 4800
monster.race = "fire"
monster.corpse = 41747
monster.speed = 510
monster.manaCost = 0
monster.raceId = 2551

monster.outfit = {
    lookType = 1880,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 10560, maxCount = 4},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 119},
    {name = "platinum coin", chance = 100000, maxCount = 6},
    {name = "yellow gem", chance = 1236},
    {id = 3051, chance = 1980},
    {name = "fire sword", chance = 2016},
    {name = "black shield", chance = 1860},
    {name = "iron ore", chance = 5136},
    {name = "white piece of cloth", chance = 2772},
    {name = "red piece of cloth", chance = 1116},
    {name = "yellow piece of cloth", chance = 3576},
    {name = "great mana potion", chance = 7800},
    {name = "great health potion", chance = 8724},
    {name = "magma amulet", chance = 3744},
    {name = "magma boots", chance = 2184},
    {name = "wand of draconia", chance = 5136},
    {name = "fiery heart", chance = 9372},
    {id = 12600, chance = 2010},
    {name = "crystalline arrow", chance = 7140, maxCount = 12},
    {name = "wand of everblazing", chance = 828},
    {name = "blue crystal shard", chance = 4716, maxCount = 2},
    {name = "brown crystal splinter", chance = 10200, maxCount = 2},
    {name = "green crystal fragment", chance = 8400},
    {name = "magma clump", chance = 13920},
    {name = "blazing bone", chance = 13800},
    {name = "blazing bone", chance = 14664},
    {name = "mana redbull", chance = 1990},
    {name = "ultimate missile death rune", chance = 3470},
    {name = "special reflect death rune", chance = 3920},
    {name = "lost demon armor", chance = 310},
    {name = "legs of eternal winter", chance = -30},
    {name = "Xena legs", chance = 1850}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -203},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -1100, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="magma crawler wave", interval = 2000, chance = 15, minDamage = -290, maxDamage = -800, target = false},
    	{name ="magma crawler soulfire", interval = 2000, chance = 20, target = false},
    	{name ="soulfire rune", interval = 2000, chance = 10, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -140, maxDamage = -180, radius = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -800, radius = 2, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
