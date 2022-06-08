local mType = Game.createMonsterType("(Tikito thief)")
local monster = {}

monster.description = "a tikito thief"
monster.experience = 420
monster.health = 810
monster.maxHealth = 810
monster.race = "blood"
monster.corpse = 41744
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2509

monster.outfit = {
    lookType = 1838,
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
    {name = "piggy bank", chance = 195},
    {name = "gold coin", chance = 65000, maxCount = 114},
    {name = "sabre", chance = 13000},
    {name = "throwing star", chance = 10920, maxCount = 16},
    {name = "dark armor", chance = 2145},
    {name = "dark shield", chance = 1300},
    {name = "pirate boots", chance = 286},
    {name = "rum flask", chance = 169},
    {id = 5813, chance = 169},
    {name = "pirate backpack", chance = 1209},
    {name = "pirate hat", chance = 1495},
    {name = "hook", chance = 780},
    {name = "eye patch", chance = 650},
    {name = "peg leg", chance = 780},
    {name = "strong health potion", chance = 1066},
    {name = "compass", chance = 14365},
    {name = "compass", chance = 14326},
    {name = "special meteoro ice rune", chance = 2770},
    {name = "summon rune XX", chance = 3260},
    {name = "special mana leach holy rune", chance = 3930}
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
