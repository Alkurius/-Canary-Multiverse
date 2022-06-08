local mType = Game.createMonsterType("(Black demon)")
local monster = {}

monster.description = "a black demon"
monster.experience = 22880
monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 41472
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2588

monster.outfit = {
    lookType = 1917,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    canPushItems = false,
    canPushCreatures = false,
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
    {name = "crystal coin", chance = 77594},
    {name = "platinum coin", chance = 99594, maxCount = 35},
    {name = "ultimate health potion", chance = 35442, maxCount = 8},
    {id = 33936, chance = 39116},
    {name = "skull staff", chance = 72116},
    {name = "epee", chance = 83116},
    {name = "crystal mace", chance = 28116},
    {name = "noble axe", chance = 9416},
    {name = "spellbook of mind control", chance = 9900},
    {id = 33937, chance = 8250},
    {name = "fire axe", chance = 14850},
    {name = "royal helmet", chance = 17050},
    {name = "mastermind shield", chance = 10450},
    {name = "assassin dagger", chance = 9350},
    {name = "butcher's axe", chance = 8250},
    {name = "jade hammer", chance = 7150},
    {name = "crystalline sword", chance = 6050},
    {name = "alloy legs", chance = 4950},
    {name = "metal bat", chance = 3850},
    {id = 23531, chance = 9812},
    {id = 34025, chance = 1705},
    {id = 34109, chance = 55},
    {name = "hermit seed extract", chance = 1990},
    {name = "reflect death rune", chance = 2740},
    {name = "special reflect fire rune", chance = 4100},
    {name = "ogre armor", chance = 160},
    {name = "centurion helmet", chance = 980},
    {name = "Holy legs", chance = 230}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -700, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -900, radius = 3, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -900, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1000, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1150, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
    	defense = 90,
    	armor = 105
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -25},
    	{type = COMBAT_HOLYDAMAGE , percent = -35},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
