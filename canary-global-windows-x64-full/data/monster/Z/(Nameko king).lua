local mType = Game.createMonsterType("(Nameko king)")
local monster = {}

monster.description = "a nameko king"
monster.experience = 4000
monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2645

monster.outfit = {
    lookType = 1974,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "red tome", chance = 405},
    {name = "candlestick", chance = 2025},
    {name = "piggy bank", chance = 81},
    {name = "ring of the sky", chance = 580},
    {id = 3007, chance = 945},
    {name = "small sapphire", chance = 1606},
    {name = "gold coin", chance = 39609, maxCount = 108},
    {name = "talon", chance = 1552},
    {id = 3051, chance = 2970},
    {name = "mind stone", chance = 2700},
    {name = "stone skin amulet", chance = 446},
    {name = "poison dagger", chance = 10260},
    {name = "skull staff", chance = 8600},
    {name = "golden armor", chance = 324},
    {id = 3509, chance = 1350},
    {name = "blue robe", chance = 1904},
    {name = "cherry", chance = 25650, maxCount = 5},
    {name = "bread", chance = 12150},
    {name = "dark mushroom", chance = 4050},
    {name = "assassin star", chance = 4725, maxCount = 5},
    {name = "assassin star", chance = 4684, maxCount = 5},
    {name = "great mana potion", chance = 6426},
    {name = "great health potion", chance = 7007},
    {name = "lightning robe", chance = 1350},
    {name = "luminous orb", chance = 688},
    {name = "complete ruby", chance = 2260},
    {name = "mana leach water rune", chance = 3690},
    {name = "bleeding sword", chance = 400},
    {name = "cyclops legs", chance = 1600},
    {name = "platinum thief helmet", chance = 1930},
    {name = "Blood armor", chance = 1060}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -90, maxDamage = -180, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
    	{name ="warlock skill reducer", interval = 2000, chance = 5, range = 5, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -120, range = 7, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -180, range = 7, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA, target = true},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -230, length = 8, spread = 3, effect = CONST_ME_BIGCLOUDS, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 225, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 95},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
