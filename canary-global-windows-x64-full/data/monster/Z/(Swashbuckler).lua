local mType = Game.createMonsterType("(Swashbuckler)")
local monster = {}

monster.description = "a swashbuckler"
monster.experience = 455
monster.health = 878
monster.maxHealth = 878
monster.race = "blood"
monster.corpse = 41591
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2486

monster.outfit = {
    lookType = 1815,
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
    canWalkOnPoison = false
}

monster.loot = {
    {name = "piggy bank", chance = 210},
    {name = "gold coin", chance = 70000, maxCount = 123},
    {name = "sabre", chance = 14000},
    {name = "throwing star", chance = 11760, maxCount = 17},
    {name = "dark armor", chance = 2310},
    {name = "dark shield", chance = 1400},
    {name = "pirate boots", chance = 308},
    {name = "rum flask", chance = 182},
    {id = 5813, chance = 182},
    {name = "pirate backpack", chance = 1302},
    {name = "pirate hat", chance = 1610},
    {name = "hook", chance = 840},
    {name = "eye patch", chance = 700},
    {name = "peg leg", chance = 840},
    {name = "strong health potion", chance = 1148},
    {name = "compass", chance = 15470},
    {name = "compass", chance = 15428},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune O", chance = 2840},
    {name = "special life leach holy rune", chance = 3460}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
    	{name ="pirate corsair skill reducer", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
