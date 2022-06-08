local mType = Game.createMonsterType("(Vegeta s)")
local monster = {}

monster.description = "a vegeta s"
monster.experience = 10603
monster.health = 10500
monster.maxHealth = 10500
monster.race = "undead"
monster.corpse = 41747
monster.speed = 510
monster.manaCost = 0
monster.raceId = 2254

monster.outfit = {
    lookType = 1583,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 12},
    {name = "Book Page", chance = 13500, maxCount = 8},
    {name = "Small Amethyst", chance = 13500, maxCount = 11},
    {name = "Glowing Rune", chance = 13500, maxCount = 4},
    {name = "Quill", chance = 13500, maxCount = 4},
    {name = "Silken Bookmark", chance = 13500, maxCount = 4},
    {name = "Flash Arrow", chance = 13500, maxCount = 8},
    {name = "Throwing Star", chance = 13500, maxCount = 14},
    {name = "Crystal Sword", chance = 13500},
    {id = 3051, chance = 13500},
    {name = "Guardian Shield", chance = 13500},
    {name = "Mana Potion", chance = 13500, maxCount = 14},
    {name = "Ultimate Mana Potion", chance = 13500, maxCount = 11},
    {name = "Ultimate Health Potion", chance = 13500, maxCount = 11},
    {name = "Wand of Cosmic Energy", chance = 405},
    {name = "Holy Backpack", chance = 2330},
    {name = "crystal sapphire", chance = 1540},
    {name = "life leach holy rune", chance = 2840},
    {name = "bushi helmet", chance = 250},
    {name = "big crystal sword", chance = 40},
    {name = "ancestral esmeralda spelbook", chance = 0},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -680, radius = 3, effect = CONST_ME_HOLYDAMAGE, target = true},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = CONST_ANI_ENERGY, target = false}
}

monster.defenses = {
    	defense = 33,
    	armor = 76,
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="combat", interval = 200, chance = 55, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 10},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
