local mType = Game.createMonsterType("(Little trunks s)")
local monster = {}

monster.description = "a little trunks s"
monster.experience = 4200
monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 290
monster.manaCost = 0
monster.raceId = 2230

monster.outfit = {
    lookType = 1559,
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
    {id = 3031, chance = 100000, maxCount = 134},
    {id = 3035, chance = 100000, maxCount = 14},
    {id = 5879, chance = 100000},
    {id = 3351, chance = 100000},
    {id = 239, chance = 100000, maxCount = 5},
    {id = 3370, chance = 67500},
    {id = 3049, chance = 45000},
    {id = 3051, chance = 45000},
    {id = 3053, chance = 45000},
    {id = 12320, chance = 45000},
    {id = 3371, chance = 33750},
    {id = 3055, chance = 33750},
    {id = 5886, chance = 33750},
    {id = 7416, chance = 4354},
    {id = 7419, chance = 2213},
    {name = "HMM Backpack", chance = 1820},
    {name = "perfect sapphire", chance = 1210},
    {name = "meteoro holy rune", chance = 2960},
    {name = "volcano bow", chance = 600},
    {name = "pit demon legs", chance = 1800},
    {name = "ancestral rubi axe", chance = 20},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -300, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
    	{name ="speed", interval = 1000, chance = 20, speedChange = -850, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false, duration = 25000},
    	{name ="poisonfield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
    	defense = 21,
    	armor = 17,
    	{name ="combat", interval = 1000, chance = 17, type = COMBAT_HEALING, minDamage = 225, maxDamage = 275, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 1000, chance = 8, speedChange = 345, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
