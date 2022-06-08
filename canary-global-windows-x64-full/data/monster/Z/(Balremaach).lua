local mType = Game.createMonsterType("(Balremaach)")
local monster = {}

monster.description = "a balremaach"
monster.experience = 550000
monster.health = 160000
monster.maxHealth = 160000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2591

monster.outfit = {
    lookType = 1920,
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
    {id = 3025, chance = 18900},
    {id = 3116, chance = 26600},
    {name = "black pearl", chance = 21000, maxCount = 49},
    {name = "boots of haste", chance = 19600},
    {id = 3076, chance = 31500},
    {name = "crystal necklace", chance = 30100},
    {id = 3007, chance = 21700},
    {name = "demon shield", chance = 21700},
    {name = "devil helmet", chance = 15400},
    {name = "dragon hammer", chance = 48300},
    {id = 3051, chance = 18900},
    {name = "fire axe", chance = 23800},
    {name = "giant sword", chance = 17500},
    {name = "platinum coin", chance = 97860, maxCount = 140},
    {name = "platinum coin", chance = 96320, maxCount = 140},
    {name = "crystal coin", chance = 66780, maxCount = 56},
    {name = "crystal coin", chance = 51240, maxCount = 21},
    {name = "gold ring", chance = 39200},
    {name = "golden legs", chance = 21000},
    {name = "giant ruby", chance = 44100},
    {name = "giant sapphire", chance = 44100},
    {name = "giant emerald", chance = 44100},
    {name = "ice rapier", chance = 38500},
    {name = "magic plate armor", chance = 18200},
    {name = "mastermind shield", chance = 24500},
    {name = "purple tome", chance = 17640},
    {name = "ring of the sky", chance = 18900},
    {name = "silver dagger", chance = 21700},
    {name = "skull staff", chance = 35000},
    {name = "talon", chance = 19600, maxCount = 38},
    {name = "teddy bear", chance = 14700},
    {name = "thunder hammer", chance = 4900},
    {id = 3002, chance = 7140},
    {name = "white pearl", chance = 17500, maxCount = 49},
    {name = "hermit seed extract", chance = 1990},
    {name = "Titan Doll", chance = 590},
    {name = "special reflect fire rune", chance = 4100},
    {name = "legendary warrior sword", chance = 430},
    {name = "pharaonic rod (Death)", chance = 470},
    {name = "olimpic sword", chance = 1310},
    {name = "Bills legs", chance = 1130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 230, attack = 210},
    	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1900, radius = 9, effect = CONST_ME_MORTAREA, target = false},
    	{name ="speed", interval = 1000, chance = 12, speedChange = -850, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000},
    	{name ="strength", interval = 1000, chance = 10, minDamage = -600, maxDamage = -1450, radius = 5, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 3000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 3000, chance = 8, type = COMBAT_MANADRAIN, minDamage = -600, maxDamage = -700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 5000, chance = 18, minDamage = -800, maxDamage = -1000, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 6, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
    	defense = 145,
    	armor = 188,
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 8, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
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
