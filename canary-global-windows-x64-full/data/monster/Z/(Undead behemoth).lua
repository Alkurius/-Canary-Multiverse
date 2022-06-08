local mType = Game.createMonsterType("(Undead behemoth)")
local monster = {}

monster.description = "a undead behemoth"
monster.experience = 3500
monster.health = 5600
monster.maxHealth = 5600
monster.race = "blood"
monster.corpse = 41457
monster.speed = 390
monster.manaCost = 0
monster.raceId = 2586

monster.outfit = {
    lookType = 1915,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 2893, chance = 160},
    {name = "crystal necklace", chance = 4048},
    {name = "gold coin", chance = 100000, maxCount = 160},
    {name = "gold coin", chance = 64000, maxCount = 158},
    {name = "small amethyst", chance = 10208, maxCount = 8},
    {name = "platinum coin", chance = 95680, maxCount = 8},
    {name = "strange symbol", chance = 1200},
    {id = 3116, chance = 1072},
    {name = "two handed sword", chance = 9568},
    {name = "double axe", chance = 16816},
    {name = "giant sword", chance = 1610},
    {name = "crowbar", chance = 160},
    {name = "war axe", chance = 80},
    {name = "plate armor", chance = 6288},
    {name = "dark armor", chance = 6992},
    {id = 3456, chance = 1040},
    {name = "steel boots", chance = 608},
    {name = "meat", chance = 48000, maxCount = 10},
    {name = "perfect behemoth fang", chance = 1744},
    {name = "behemoth claw", chance = 688},
    {name = "assassin star", chance = 15600, maxCount = 8},
    {id = 7396, chance = 272},
    {name = "titan axe", chance = 144},
    {name = "great health potion", chance = 8192},
    {name = "battle stone", chance = 22400},
    {name = "hermit seed extract", chance = 1990},
    {name = "reflect death rune", chance = 2740},
    {name = "special reflect fire rune", chance = 4100},
    {name = "darkness legs", chance = 1700},
    {name = "bow of eternal winter", chance = 550},
    {name = "Holy armor", chance = 1010}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
