local mType = Game.createMonsterType("(Tristan angel)")
local monster = {}

monster.description = "a tristan angel"
monster.experience = 4100
monster.health = 3100
monster.maxHealth = 3100
monster.race = "blood"
monster.corpse = 41744
monster.speed = 290
monster.manaCost = 0
monster.raceId = 2309

monster.outfit = {
    lookType = 1638,
    lookHead = 79,
    lookBody = 114,
    lookLegs = 94,
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
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 363},
    {id = 3035, chance = 27300, maxCount = 9},
    {id = 7368, chance = 3000, maxCount = 3},
    {id = 3027, chance = 3000},
    {id = 6558, chance = 3000},
    {id = 6499, chance = 3315},
    {id = 3028, chance = 1200, maxCount = 4},
    {id = 3032, chance = 1350, maxCount = 4},
    {id = 3030, chance = 975, maxCount = 4},
    {id = 3029, chance = 870, maxCount = 4},
    {id = 9057, chance = 870, maxCount = 4},
    {id = 239, chance = 1050},
    {id = 3026, chance = 840},
    {id = 7404, chance = 195},
    {id = 3041, chance = 480},
    {id = 3567, chance = 450},
    {id = 9058, chance = 450},
    {id = 21974, chance = 450},
    {id = 3070, chance = 450},
    {id = 3069, chance = 135},
    {id = 21981, chance = 120},
    {id = 21975, chance = 300},
    {id = 8061, chance = 135},
    {id = 3017, chance = 150},
    {id = 3054, chance = 150},
    {id = 5944, chance = 150},
    {id = 8074, chance = 150},
    {id = 3403, chance = 150},
    {id = 8082, chance = 105},
    {id = 3037, chance = 150},
    {name = "semi-perfect amethyst", chance = 2590},
    {name = "charm life regeneration", chance = 1550},
    {name = "ultimate missile fire rune", chance = 4000}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7, target = false},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="energy strike", interval = 2000, chance = 10, minDamage = -10, maxDamage = -100, range = 1, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
    	defense = 55,
    	armor = 55,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
