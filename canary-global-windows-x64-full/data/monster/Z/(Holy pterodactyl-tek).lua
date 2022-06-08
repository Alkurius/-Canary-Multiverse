local mType = Game.createMonsterType("(Holy pterodactyl-tek)")
local monster = {}

monster.description = "a holy pterodactyl-tek"
monster.experience = 4100
monster.health = 2900
monster.maxHealth = 2900
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2658

monster.outfit = {
    lookType = 1987,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    {id = 3031, chance = 100000, maxCount = 315},
    {id = 3035, chance = 23660, maxCount = 8},
    {id = 6558, chance = 2600},
    {id = 238, chance = 2600},
    {id = 3033, chance = 273, maxCount = 4},
    {id = 3028, chance = 390, maxCount = 4},
    {id = 3032, chance = 390, maxCount = 4},
    {id = 3030, chance = 455, maxCount = 4},
    {id = 9057, chance = 364, maxCount = 4},
    {id = 3041, chance = 390},
    {id = 6299, chance = 338},
    {id = 6499, chance = 429},
    {id = 8043, chance = 286},
    {id = 21974, chance = 650},
    {id = 826, chance = 130},
    {id = 3078, chance = 520},
    {id = 3574, chance = 390},
    {id = 21981, chance = 390},
    {id = 21975, chance = 650},
    {id = 5911, chance = 390},
    {id = 3016, chance = 520},
    {id = 5944, chance = 390},
    {id = 8074, chance = 130},
    {id = 3071, chance = 260},
    {name = "charm extra fire shot", chance = 1870},
    {name = "ultimate water rune", chance = 3980}
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
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
