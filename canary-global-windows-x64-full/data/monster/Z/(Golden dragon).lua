local mType = Game.createMonsterType("(Golden dragon)")
local monster = {}

monster.description = "a golden dragon"
monster.experience = 9900
monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 41199
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2384

monster.outfit = {
    lookType = 1713,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Dragon",
    race = BESTY_RACE_DRAGON,
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
    {id = 6299, chance = 100000},
    {id = 7430, chance = 100000},
    {id = 3031, chance = 100000, maxCount = 150},
    {id = 2903, chance = 100000},
    {id = 3035, chance = 100000, maxCount = 15},
    {id = 10316, chance = 100000, maxCount = 4},
    {id = 9058, chance = 100000},
    {id = 6499, chance = 84000},
    {id = 3370, chance = 70905},
    {id = 3385, chance = 60000},
    {id = 7642, chance = 55500, maxCount = 4},
    {id = 5925, chance = 55500, maxCount = 8},
    {id = 10451, chance = 55500},
    {id = 239, chance = 52500, maxCount = 6},
    {id = 8896, chance = 52500},
    {id = 3032, chance = 49500, maxCount = 8},
    {id = 3029, chance = 49500, maxCount = 8},
    {id = 238, chance = 37500, maxCount = 4},
    {id = 3360, chance = 20250},
    {id = 12304, chance = 10170},
    {id = 5741, chance = 7500},
    {id = 8057, chance = 5085},
    {id = 3392, chance = 2535},
    {name = "spider backpack", chance = 1730},
    {name = "Dragon Lord Doll", chance = 1540},
    {name = "tornado energy rune", chance = 3790},
    {name = "infernalist wand", chance = 330},
    {name = "cursed axe", chance = 1340},
    {name = "dragon warrior armor", chance = 1890},
    {name = "great dragon warrior axe", chance = 590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 96},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -400, range = 7, radius = 4, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -600, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -390, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -180, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -690, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -200, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="undead dragon curse", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
