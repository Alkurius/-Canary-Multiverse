local mType = Game.createMonsterType("(Espectral robot)")
local monster = {}

monster.description = "a espectral robot"
monster.experience = 12750
monster.health = 21000
monster.maxHealth = 21000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2221

monster.outfit = {
    lookType = 1550,
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
    canPushItems = true,
    canPushCreatures = true,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 10},
    {name = "Book Page", chance = 100000, maxCount = 4},
    {name = "Small Diamond", chance = 100000, maxCount = 10},
    {name = "Small Sapphire", chance = 100000, maxCount = 10},
    {name = "Quill", chance = 100000, maxCount = 10},
    {name = "Ultimate Health Potion", chance = 100000, maxCount = 10},
    {name = "Ultimate Mana Potion", chance = 100000, maxCount = 10},
    {name = "Diamond Sceptre", chance = 100000},
    {name = "Frosty Heart", chance = 100000, maxCount = 10},
    {name = "Glacier Mask", chance = 438},
    {name = "Ice Rapier", chance = 312},
    {name = "Silken Bookmark", chance = 100000, maxCount = 10},
    {name = "Crystal Mace", chance = 312},
    {name = "Glacier Kilt", chance = 312},
    {name = "Glacier Robe", chance = 312},
    {name = "Glacier Shoes", chance = 438},
    {name = "Strange Helmet", chance = 1250},
    {name = "Sapphire Hammer", chance = 375},
    {id = 7441, chance = 100000},
    {name = "Glacial Rod", chance = 188},
    {name = "Crystalline Armor", chance = 312},
    {name = "SD backpack", chance = 1940},
    {name = "perfect sapphire", chance = 1210},
    {name = "arcane holy rune", chance = 2970},
    {name = "volcano sword", chance = 1390},
    {name = "pit demon shield", chance = 1190},
    {name = "ancestral rubi sword", chance = 70},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -850, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -380, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -980, length = 5, spread = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -880, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
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
