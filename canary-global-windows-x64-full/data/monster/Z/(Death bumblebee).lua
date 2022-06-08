local mType = Game.createMonsterType("(Death bumblebee)")
local monster = {}

monster.description = "a death bumblebee"
monster.experience = 2500
monster.health = 3700
monster.maxHealth = 3700
monster.race = "undead"
monster.corpse = 41747
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2280

monster.outfit = {
    lookType = 1609,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "crystal necklace", chance = 751},
    {name = "gold coin", chance = 78000, maxCount = 130},
    {name = "gold coin", chance = 52000, maxCount = 130},
    {name = "gold coin", chance = 52000, maxCount = 130},
    {name = "gold coin", chance = 78000, maxCount = 53},
    {name = "small amethyst", chance = 10000, maxCount = 3},
    {name = "platinum coin", chance = 5416, maxCount = 4},
    {name = "mind stone", chance = 733},
    {name = "giant sword", chance = 2202},
    {name = "crowbar", chance = 18570},
    {name = "plate armor", chance = 5651},
    {name = "dark armor", chance = 13000},
    {id = 3449, chance = 16250, maxCount = 16},
    {id = 3456, chance = 8125},
    {name = "steel boots", chance = 1290},
    {name = "meat", chance = 65000, maxCount = 8},
    {name = "skull helmet", chance = 140},
    {name = "soul orb", chance = 8666},
    {id = 6299, chance = 187},
    {name = "demonic essence", chance = 26000},
    {name = "dreaded cleaver", chance = 1083},
    {name = "chaos mace", chance = 1130},
    {name = "great health potion", chance = 1477},
    {name = "metal spike", chance = 9285},
    {name = "reflect earth backpack", chance = 2580},
    {name = "crystal ruby", chance = 2570},
    {name = "ultimate holy rune", chance = 3300},
    {name = "bushi shield", chance = 540},
    {name = "corrupted demon quiver", chance = 1670},
    {name = "ancestral esmeralda quiver", chance = 1630}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 420, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -15},
    	{type = COMBAT_HOLYDAMAGE , percent = -3},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
