local mType = Game.createMonsterType("(Putrid slime)")
local monster = {}

monster.description = "a putrid slime"
monster.experience = 3700
monster.health = 3650
monster.maxHealth = 3650
monster.race = "venom"
monster.corpse = 41747
monster.speed = 210
monster.manaCost = 0
monster.raceId = 2321

monster.outfit = {
    lookType = 1650,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Slime",
    race = BESTY_RACE_SLIME,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 3171, maxCount = 3},
    {name = "small ruby", chance = 3900, maxCount = 3},
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "gold coin", chance = 100000, maxCount = 94},
    {name = "small emerald", chance = 6976, maxCount = 4},
    {name = "talon", chance = 7423},
    {name = "platinum coin", chance = 100000, maxCount = 8},
    {name = "yellow gem", chance = 1585},
    {name = "green gem", chance = 797},
    {name = "ultimate ice backpack", chance = 870},
    {name = "great ruby", chance = 2170},
    {name = "reflect fire rune", chance = 3560},
    {name = "samurai dager", chance = 680},
    {name = "mythical crown helmet", chance = 1840},
    {name = "Gorgon helmet", chance = 1210}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240, condition = {type = CONDITION_POISON, totalDamage = 150, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -160, maxDamage = -270, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -400, maxDamage = -640, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -170, radius = 3, effect = CONST_ME_POISONAREA, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -700, length = 8, spread = 3, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 280, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -25},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
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
