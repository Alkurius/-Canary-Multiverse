local mType = Game.createMonsterType("(Ancient golem)")
local monster = {}

monster.description = "a ancient golem"
monster.experience = 450
monster.health = 650
monster.maxHealth = 650
monster.race = "undead"
monster.corpse = 41233
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2404

monster.outfit = {
    lookType = 1733,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small stone", chance = 11000, maxCount = 11},
    {name = "gold coin", chance = 47300, maxCount = 110},
    {name = "gold coin", chance = 55000, maxCount = 33},
    {name = "blank rune", chance = 11000},
    {name = "strong mana potion", chance = 2101},
    {name = "earth arrow", chance = 22176, maxCount = 33},
    {id = 8894, chance = 385},
    {name = "small topaz", chance = 682},
    {name = "lump of earth", chance = 22506},
    {name = "clay lump", chance = 627},
    {id = 12600, chance = 517},
    {name = "semi-perfect opalo", chance = 2330},
    {name = "summon rune U", chance = 3330},
    {name = "mana leach energy rune", chance = 4300}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -72, maxDamage = -105, range = 7, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -100, range = 7, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_POFF, target = true},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -200, maxDamage = -260, length = 6, spread = 3, effect = CONST_ME_BIGPLANTS, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -100, maxDamage = -140, radius = 5, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -330, range = 5, effect = CONST_ME_SMALLPLANTS, target = true, duration = 5000}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 60, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -25},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 85},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
