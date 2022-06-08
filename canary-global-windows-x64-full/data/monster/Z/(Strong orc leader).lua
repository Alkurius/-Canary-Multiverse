local mType = Game.createMonsterType("(Strong orc leader)")
local monster = {}

monster.description = "a strong orc leader"
monster.experience = 405
monster.health = 675
monster.maxHealth = 675
monster.race = "blood"
monster.corpse = 39898
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2453

monster.outfit = {
    lookType = 1782,
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
    Stars = 2,
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
    {name = "gold coin", chance = 44800, maxCount = 56},
    {id = 3091, chance = 6272},
    {name = "longsword", chance = 4480},
    {name = "throwing knife", chance = 15920, maxCount = 6},
    {name = "broadsword", chance = 976},
    {id = 3307, chance = 2976},
    {name = "plate armor", chance = 2640},
    {name = "warrior helmet", chance = 288},
    {name = "brass legs", chance = 4960},
    {name = "plate shield", chance = 2640},
    {name = "plate legs", chance = 704},
    {id = 3578, chance = 47040},
    {name = "brown mushroom", chance = 15440},
    {name = "royal spear", chance = 3840},
    {name = "health potion", chance = 880},
    {name = "orc tooth", chance = 1648},
    {name = "orc leather", chance = 31216},
    {name = "skull belt", chance = 3213}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -70, range = 7, shootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 25
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
