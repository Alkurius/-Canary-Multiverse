local mType = Game.createMonsterType("(Strong orc warlord)")
local monster = {}

monster.description = "a strong orc warlord"
monster.experience = 1005
monster.health = 1425
monster.maxHealth = 1425
monster.race = "blood"
monster.corpse = 39902
monster.speed = 284
monster.manaCost = 0
monster.raceId = 2454

monster.outfit = {
    lookType = 1783,
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
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 32400, maxCount = 81},
    {id = 3049, chance = 162},
    {name = "gold ring", chance = 54},
    {name = "protection amulet", chance = 3942},
    {name = "two handed sword", chance = 3024},
    {name = "throwing star", chance = 25056, maxCount = 32},
    {id = 3307, chance = 6210},
    {name = "orcish axe", chance = 9720},
    {name = "dragon hammer", chance = 576},
    {name = "plate armor", chance = 9378},
    {name = "brass armor", chance = 1332},
    {name = "dark helmet", chance = 2268},
    {name = "crusader helmet", chance = 504},
    {name = "plate legs", chance = 7704},
    {id = 3578, chance = 19440, maxCount = 4},
    {name = "hunting spear", chance = 9468},
    {id = 7395, chance = 90},
    {name = "health potion", chance = 846},
    {name = "magma boots", chance = 504},
    {name = "orc tooth", chance = 17352},
    {name = "broken helmet", chance = 43830},
    {name = "orc leather", chance = 37116},
    {name = "skull belt", chance = 8298},
    {name = "ultimate death rune", chance = 4130},
    {name = "summon rune V", chance = 3320},
    {name = "atonement rune", chance = 3040}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="invisible", interval = 2000, chance = 5, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
