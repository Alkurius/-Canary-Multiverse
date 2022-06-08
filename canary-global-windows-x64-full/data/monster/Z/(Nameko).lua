local mType = Game.createMonsterType("(Nameko)")
local monster = {}

monster.description = "a nameko"
monster.experience = 1755
monster.health = 1900
monster.maxHealth = 1900
monster.race = "venom"
monster.corpse = 41744
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2643

monster.outfit = {
    lookType = 1972,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 223},
    {id = 3035, chance = 12285, maxCount = 3},
    {id = 21182, chance = 2254},
    {id = 3034, chance = 1269},
    {id = 3029, chance = 1580, maxCount = 4},
    {id = 3033, chance = 1390, maxCount = 4},
    {id = 9057, chance = 1390, maxCount = 4},
    {id = 3032, chance = 1580, maxCount = 4},
    {id = 3030, chance = 1606, maxCount = 4},
    {id = 3028, chance = 1418, maxCount = 4},
    {id = 3037, chance = 1472},
    {id = 3038, chance = 135},
    {id = 21164, chance = 284},
    {id = 21183, chance = 176},
    {id = 21179, chance = 473},
    {id = 21178, chance = 688},
    {id = 21180, chance = 526},
    {id = 21158, chance = 500},
    {id = 8084, chance = 338},
    {id = 3065, chance = 351},
    {name = "charm extra electric shot", chance = 1110},
    {name = "mana leach water rune", chance = 3690}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 62, attack = 50, condition = {type = CONDITION_POISON, totalDamage = 360, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -40, maxDamage = -125, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 8, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -160, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true},
    	{name ="devourer wave", interval = 2000, chance = 5, minDamage = -50, maxDamage = -150, target = false},
    	{name ="devourer paralyze", interval = 2000, chance = 9, target = false},
    	{name ="combat", interval = 2000, chance = 11, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -150, length = 1, spread = 0, effect = CONST_ME_SMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 7, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -135, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 6, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
