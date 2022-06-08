local mType = Game.createMonsterType("(Ancient  gargoyle)")
local monster = {}

monster.description = "a ancient  gargoyle"
monster.experience = 1278
monster.health = 2100
monster.maxHealth = 2100
monster.race = "venom"
monster.corpse = 41227
monster.speed = 240
monster.manaCost = 0
monster.raceId = 2403

monster.outfit = {
    lookType = 1732,
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
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 260},
    {id = 21755, chance = 1937},
    {id = 21193, chance = 22308},
    {id = 3035, chance = 56264, maxCount = 3},
    {id = 236, chance = 12610, maxCount = 3},
    {id = 237, chance = 12610, maxCount = 3},
    {id = 21171, chance = 1937},
    {id = 8082, chance = 1937},
    {id = 3051, chance = 2912},
    {id = 3052, chance = 975},
    {id = 10310, chance = 2912},
    {id = 21169, chance = 1937},
    {id = 21168, chance = 1937},
    {id = 8896, chance = 3887},
    {name = "semi-perfect opalo", chance = 2330},
    {name = "summon rune U", chance = 3330},
    {name = "mana leach energy rune", chance = 4300}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 84, attack = 50},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -230, length = 8, spread = 3, effect = CONST_ME_YELLOWENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -85, maxDamage = -150, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="metal gargoyle curse", interval = 2000, chance = 13, target = false}
}

monster.defenses = {
    	defense = 42,
    	armor = 21
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
