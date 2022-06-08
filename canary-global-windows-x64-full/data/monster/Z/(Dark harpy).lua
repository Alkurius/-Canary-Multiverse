local mType = Game.createMonsterType("(Dark harpy)")
local monster = {}

monster.description = "a dark harpy"
monster.experience = 1500
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 41744
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2224

monster.outfit = {
    lookType = 1553,
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
    {id = 3031, chance = 100000, maxCount = 150},
    {id = 3035, chance = 100000, maxCount = 10},
    {id = 3110, chance = 15600},
    {id = 3114, chance = 19020},
    {id = 3115, chance = 15000},
    {id = 3116, chance = 8250},
    {id = 3578, chance = 10125, maxCount = 4},
    {id = 3582, chance = 9000, maxCount = 3},
    {id = 5880, chance = 1050},
    {id = 5895, chance = 1350},
    {id = 7418, chance = 1050},
    {id = 238, chance = 22500, maxCount = 4},
    {id = 239, chance = 22500, maxCount = 3},
    {id = 10389, chance = 2190},
    {id = 20062, chance = 675},
    {id = 20198, chance = 28140},
    {id = 20199, chance = 24000},
    {name = "fairy wings", chance = 45150},
    {name = "imperfect emerald", chance = 1690},
    {name = "charm steal mana", chance = 1880},
    {name = "arcane holy rune", chance = 2970}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 80},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -80, maxDamage = -200, radius = 3, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, length = 5, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -100, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -80, maxDamage = -50, radius = 4, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 80, maxDamage = 225, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
