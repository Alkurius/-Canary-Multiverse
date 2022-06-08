local mType = Game.createMonsterType("(Young gohan sf2)")
local monster = {}

monster.description = "a young gohan sf2"
monster.experience = 5700
monster.health = 9400
monster.maxHealth = 9400
monster.race = "undead"
monster.corpse = 41747
monster.speed = 296
monster.manaCost = 0
monster.raceId = 2736

monster.outfit = {
    lookType = 2065,
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
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "white pearl", chance = 13000, maxCount = 4},
    {name = "black pearl", chance = 12272},
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "gold coin", chance = 100000, maxCount = 128},
    {name = "platinum coin", chance = 100000, maxCount = 14},
    {name = "perfect diamond", chance = 2030},
    {name = "meteoro earth rune", chance = 4230},
    {name = "skull plague rod", chance = 1650},
    {name = "warlock helmet", chance = 560},
    {name = "black wizard axe", chance = 620},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -499},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -800, radius = 4, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
    	{name ="cliff strider skill reducer", interval = 2000, chance = 10, target = false},
    	{name ="cliff strider electrify", interval = 2000, chance = 15, range = 1, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1000, length = 6, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -300, radius = 4, effect = CONST_ME_YELLOWENERGY, target = false}
}

monster.defenses = {
    	defense = 55,
    	armor = 55
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 1},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
