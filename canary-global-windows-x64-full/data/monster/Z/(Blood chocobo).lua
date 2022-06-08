local mType = Game.createMonsterType("(Blood chocobo)")
local monster = {}

monster.description = "a blood chocobo"
monster.experience = 4056
monster.health = 4940
monster.maxHealth = 4940
monster.race = "fire"
monster.corpse = 41747
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2567

monster.outfit = {
    lookType = 1896,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Bird",
    race = BESTY_RACE_BIRD,
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
    canWalkOnPoison = false
}

monster.loot = {
    {name = "emerald bangle", chance = 2750},
    {id = 3019, chance = 238},
    {name = "small diamond", chance = 1750},
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 50000, maxCount = 125},
    {name = "gold coin", chance = 12500, maxCount = 58},
    {name = "wand of inferno", chance = 11812},
    {name = "burnt scroll", chance = 62500},
    {name = "blank rune", chance = 37500, maxCount = 2},
    {name = "fire sword", chance = 5175},
    {name = "fire axe", chance = 550},
    {name = "soul orb", chance = 15188},
    {name = "demonic essence", chance = 18125},
    {name = "magma legs", chance = 912},
    {name = "magma coat", chance = 588},
    {name = "fiery heart", chance = 11962},
    {name = "piece of hellfire armor", chance = 6325},
    {id = 12600, chance = 838},
    {name = "cobra life potion", chance = 990},
    {name = "life leach death rune", chance = 3040},
    {name = "special ultimate energy rune", chance = 4250},
    {name = "lost demon chopper", chance = 1400},
    {name = "axe of eternal winter", chance = 820},
    {name = "glaciar legs", chance = 90}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -520},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -392, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -330, range = 7, radius = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="hellfire fighter soulfire", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 25},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -25},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
