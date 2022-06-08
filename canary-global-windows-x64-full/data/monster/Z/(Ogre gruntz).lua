local mType = Game.createMonsterType("(Ogre gruntz)")
local monster = {}

monster.description = "a ogre gruntz"
monster.experience = 4000
monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 41311
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2439

monster.outfit = {
    lookType = 1768,
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
    {name = "red tome", chance = 330},
    {name = "candlestick", chance = 1650},
    {name = "piggy bank", chance = 66},
    {name = "ring of the sky", chance = 473},
    {id = 3007, chance = 770},
    {name = "small sapphire", chance = 1309},
    {name = "gold coin", chance = 32274, maxCount = 88},
    {name = "talon", chance = 1265},
    {id = 3051, chance = 2420},
    {name = "mind stone", chance = 2200},
    {name = "stone skin amulet", chance = 363},
    {name = "poison dagger", chance = 8360},
    {name = "skull staff", chance = 7007},
    {name = "golden armor", chance = 264},
    {id = 3509, chance = 1100},
    {name = "blue robe", chance = 1551},
    {name = "cherry", chance = 20900, maxCount = 4},
    {name = "bread", chance = 9900},
    {name = "dark mushroom", chance = 3300},
    {name = "assassin star", chance = 3850, maxCount = 4},
    {name = "assassin star", chance = 3817, maxCount = 4},
    {name = "great mana potion", chance = 5236},
    {name = "great health potion", chance = 5709},
    {name = "lightning robe", chance = 1100},
    {name = "luminous orb", chance = 561},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune I", chance = 3950},
    {name = "ultimate energy rune", chance = 4200},
    {name = "evil spellbok", chance = 460},
    {name = "armor of eternal flames", chance = 1090},
    {name = "full warrior shield", chance = 1520}
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
