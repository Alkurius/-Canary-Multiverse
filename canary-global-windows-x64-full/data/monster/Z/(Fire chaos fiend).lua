local mType = Game.createMonsterType("(Fire chaos fiend)")
local monster = {}

monster.description = "a fire chaos fiend"
monster.experience = 1200
monster.health = 2100
monster.maxHealth = 2100
monster.race = "fire"
monster.corpse = 41140
monster.speed = 290
monster.manaCost = 0
monster.raceId = 2367

monster.outfit = {
    lookType = 1696,
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
    {name = "small ruby", chance = 7344, maxCount = 6},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 94},
    {name = "platinum coin", chance = 40000, maxCount = 2},
    {id = 3051, chance = 1982},
    {name = "wand of inferno", chance = 960},
    {name = "steel boots", chance = 192},
    {name = "brown mushroom", chance = 6415},
    {name = "magic sulphur", chance = 744},
    {name = "bullseye potion", chance = 480},
    {name = "strong health potion", chance = 8400},
    {name = "strong mana potion", chance = 8400},
    {name = "magma coat", chance = 120},
    {name = "semi-perfect diamond", chance = 2500},
    {name = "summon rune L", chance = 3320},
    {name = "arcane energy rune", chance = 3140}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -251},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -30, maxDamage = -75, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="shaburak wave", interval = 2000, chance = 15, minDamage = -80, maxDamage = -170, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -140, maxDamage = -200, length = 4, spread = 0, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -650, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
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
