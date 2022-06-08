local mType = Game.createMonsterType("(Strong dragon lord)")
local monster = {}

monster.description = "a strong dragon lord"
monster.experience = 6000
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 41164
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2375

monster.outfit = {
    lookType = 1704,
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
    {id = 3583, chance = 30000, maxCount = 3},
    {id = 2903, chance = 2727},
    {id = 2842, chance = 5000},
    {id = 3386, chance = 500},
    {id = 3450, chance = 3333, maxCount = 15},
    {id = 3732, chance = 9999},
    {id = 3280, chance = 2142},
    {id = 3029, chance = 3333, maxCount = 3},
    {id = 5948, chance = 7500},
    {id = 5919, chance = 100000},
    {name = "dragon ball backpack", chance = 2470},
    {name = "Undead Dragon Doll", chance = 820},
    {name = "meteoro energy rune", chance = 3060},
    {name = "lava crossbow", chance = 1540},
    {name = "mythical crown boots", chance = 120},
    {name = "dragon warrior helmet", chance = 1390},
    {name = "dragon warrior legs", chance = 1700},
    {name = "dragon warrior chopper", chance = 1060}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -600},
    	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -350, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="firefield", interval = 1000, chance = 10, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 4000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -550, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 35,
    	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 400, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
