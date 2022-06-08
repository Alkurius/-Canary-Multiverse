local mType = Game.createMonsterType("(Little lie)")
local monster = {}

monster.description = "a little lie"
monster.experience = 900
monster.health = 1500
monster.maxHealth = 1500
monster.race = "fire"
monster.corpse = 41744
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2538

monster.outfit = {
    lookType = 1867,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "piggy bank", chance = 1236},
    {name = "small ruby", chance = 5713, maxCount = 6},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 60},
    {id = 3051, chance = 1262},
    {name = "wand of inferno", chance = 677},
    {name = "brown mushroom", chance = 4615},
    {name = "magic sulphur", chance = 97},
    {name = "royal spear", chance = 12000, maxCount = 7},
    {name = "bullseye potion", chance = 754},
    {name = "strong health potion", chance = 5713},
    {name = "strong mana potion", chance = 6000},
    {name = "magma legs", chance = 186},
    {name = "tornado fire rune", chance = 3770},
    {name = "meteoro death rune", chance = 3490},
    {name = "special tornado ice rune", chance = 4270}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -113},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -20, maxDamage = -60, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="shaburak wave", interval = 2000, chance = 15, minDamage = -70, maxDamage = -140, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -130, maxDamage = -170, length = 4, spread = 0, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -600, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = -30},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
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
