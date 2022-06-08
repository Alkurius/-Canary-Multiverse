local mType = Game.createMonsterType("(Pit lord)")
local monster = {}

monster.description = "a pit lord"
monster.experience = 1700
monster.health = 2600
monster.maxHealth = 2600
monster.race = "venom"
monster.corpse = 41131
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2365

monster.outfit = {
    lookType = 1694,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 62500, maxCount = 108},
    {name = "small emerald", chance = 15625, maxCount = 6},
    {name = "platinum coin", chance = 44166, maxCount = 5},
    {id = 3049, chance = 5681},
    {name = "giant sword", chance = 400},
    {name = "brown mushroom", chance = 8332, maxCount = 6},
    {name = "magic sulphur", chance = 925},
    {name = "mastermind potion", chance = 1644},
    {name = "strong health potion", chance = 17856},
    {name = "strong mana potion", chance = 17856},
    {name = "terra mantle", chance = 1050},
    {name = "springsprout rod", chance = 1188},
    {name = "demonic finger", chance = 525},
    {name = "semi-perfect topaz", chance = 830},
    {name = "summon rune A", chance = 3650},
    {name = "arcane energy rune", chance = 3140}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -353},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -70, maxDamage = -250, range = 7, radius = 6, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = false},
    	{name ="askarak wave", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -200, length = 4, spread = 0, effect = CONST_ME_GREEN_RINGS, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
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
