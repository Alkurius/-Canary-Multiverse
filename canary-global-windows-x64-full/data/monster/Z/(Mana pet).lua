local mType = Game.createMonsterType("(Mana pet)")
local monster = {}

monster.description = "a mana pet"
monster.experience = 1550
monster.health = 1825
monster.maxHealth = 1825
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2798

monster.outfit = {
    lookType = 2127,
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
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 825, maxCount = 3},
    {name = "gold coin", chance = 33000, maxCount = 110},
    {name = "gold coin", chance = 33000, maxCount = 110},
    {name = "gold coin", chance = 33000, maxCount = 33},
    {name = "crossbow", chance = 6512},
    {id = 3449, chance = 8415, maxCount = 11},
    {name = "dragon ham", chance = 38280, maxCount = 3},
    {name = "dragonbone staff", chance = 121},
    {name = "strong health potion", chance = 21967},
    {name = "strong mana potion", chance = 16841},
    {name = "lightning pendant", chance = 792},
    {name = "composite hornbow", chance = 99},
    {name = "focus cape", chance = 1375},
    {name = "hibiscus dress", chance = 275},
    {name = "wand of starstorm", chance = 462},
    {name = "wand of draconia", chance = 1089},
    {name = "shockwave amulet", chance = 121},
    {name = "wyrm scale", chance = 16896},
    {name = "charm electric aura", chance = 1890},
    {name = "life leach earth rune", chance = 2910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -235},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -220, radius = 3, effect = CONST_ME_YELLOWENERGY, target = false},
    	{name ="wyrm wave", interval = 2000, chance = 40, minDamage = -130, maxDamage = -200, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -125, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -98, maxDamage = -145, length = 4, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="effect", interval = 2000, chance = 10, radius = 1, effect = CONST_ME_SOUND_YELLOW, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 75},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
