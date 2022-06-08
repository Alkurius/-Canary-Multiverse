local mType = Game.createMonsterType("(Thor'garak)")
local monster = {}

monster.description = "a thor'garak"
monster.experience = 75000
monster.health = 300000
monster.maxHealth = 300000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2574

monster.outfit = {
    lookType = 1903,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 5,
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
    rewardBoss = true,
    illusionable = false,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 282, chance = 37660},
    {name = "magic sulphur", chance = 26488},
    {name = "mino shield", chance = 24668},
    {name = "silver token", chance = 2425},
    {name = "gold token", chance = 2145},
    {name = "gold coin", chance = 100000, maxCount = 280},
    {name = "platinum coin", chance = 41776, maxCount = 42},
    {name = "piece of hell steel", chance = 17318, maxCount = 13},
    {name = "red piece of cloth", chance = 22918, maxCount = 8},
    {name = "yellow gem", chance = 41244},
    {name = "blue gem", chance = 30649},
    {name = "underworld rod", chance = 100000},
    {name = "war axe", chance = 100000},
    {name = "pair of iron fists", chance = 13314},
    {name = "mysterious remains", chance = 100000},
    {name = "small diamond", chance = 17864, maxCount = 14},
    {name = "small amethyst", chance = 20580, maxCount = 14},
    {name = "small topaz", chance = 16128, maxCount = 14},
    {name = "small sapphire", chance = 19306, maxCount = 14},
    {name = "small emerald", chance = 20580, maxCount = 14},
    {name = "small amethyst", chance = 17163, maxCount = 14},
    {name = "energy bar", chance = 23621, maxCount = 4},
    {name = "ultimate health potion", chance = 38713, maxCount = 14},
    {name = "great mana potion", chance = 47209, maxCount = 14},
    {name = "great spirit potion", chance = 35966, maxCount = 7},
    {name = "piece of royal steel", chance = 22246},
    {name = "execowtioner axe", chance = 11046},
    {name = "maimer", chance = 2646},
    {name = "ornate mace", chance = 11046},
    {name = "velvet mantle", chance = 2646},
    {name = "iron ore", chance = 20359},
    {name = "giant sword", chance = 23649},
    {name = "cobra mana potion", chance = 1250},
    {name = "Azeran Doll", chance = 1220},
    {name = "Daevok Doll", chance = 1280},
    {name = "legendary warrior helmet", chance = 1020},
    {name = "pharaonic wand (Energy)", chance = 910},
    {name = "olimpic armor", chance = 1210},
    {name = "axe of RA", chance = 680}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -500, range = 4, radius = 4, effect = CONST_ME_STONES, target = true},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -650, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
