local mType = Game.createMonsterType("(Strong minotaur mage)")
local monster = {}

monster.description = "a strong minotaur mage"
monster.experience = 2400
monster.health = 1760
monster.maxHealth = 1760
monster.race = "blood"
monster.corpse = 41275
monster.speed = 248
monster.manaCost = 0
monster.raceId = 2426

monster.outfit = {
    lookType = 1755,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
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
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 240},
    {id = 3035, chance = 65808, maxCount = 5},
    {id = 11473, chance = 25360},
    {id = 237, chance = 19808, maxCount = 5},
    {id = 3066, chance = 18352},
    {id = 7425, chance = 8336},
    {id = 2920, chance = 7616},
    {id = 5878, chance = 7424},
    {id = 11472, chance = 4704, maxCount = 3},
    {id = 3033, chance = 4000, maxCount = 3},
    {id = 3032, chance = 3792, maxCount = 3},
    {id = 3030, chance = 3520, maxCount = 3},
    {id = 9057, chance = 3936, maxCount = 3},
    {id = 3028, chance = 3888, maxCount = 3},
    {id = 5911, chance = 2160},
    {id = 5910, chance = 2240},
    {id = 5912, chance = 2912},
    {id = 8082, chance = 2544},
    {id = 3037, chance = 896},
    {id = 3039, chance = 688},
    {id = 7401, chance = 256},
    {name = "semi-perfect sapphire", chance = 2360},
    {name = "summon rune I", chance = 3950},
    {name = "reflect energy rune", chance = 3960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
    	{name ="combat", interval = 2000, chance = 24, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -130, range = 7, shootEffect = CONST_ANI_SMALLSTONE, target = true},
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -165, range = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_POISONAREA, target = false},
    	{name ="worm priestess paralyze", interval = 2000, chance = 12, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -115, maxDamage = -200, range = 7, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -300, range = 7, radius = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_HITBYPOISON, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="haste", interval = 2000, chance = 9, speedChange = 198, effect = CONST_ME_MAGIC_RED, target = false, duration = 1000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 25},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
