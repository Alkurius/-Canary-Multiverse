local mType = Game.createMonsterType("(Master of electricity)")
local monster = {}

monster.description = "a master of electricity"
monster.experience = 6900
monster.health = 8200
monster.maxHealth = 8200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2556

monster.outfit = {
    lookType = 1885,
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
    {name = "platinum coin", chance = 100000, maxCount = 6},
    {name = "leather legs", chance = 33825},
    {name = "meat", chance = 20728},
    {name = "lion cloak patch", chance = 13988},
    {name = "violet gem", chance = 7502},
    {name = "gold ingot", chance = 7249},
    {name = "lion crest", chance = 7121},
    {name = "knight legs", chance = 6612},
    {name = "great mana potion", chance = 5850},
    {name = "blue gem", chance = 5214},
    {name = "green gem", chance = 2798},
    {name = "magma legs", chance = 762},
    {name = "cobra life potion", chance = 990},
    {name = "ultimate missile death rune", chance = 3470},
    {name = "special reflect death rune", chance = 3920},
    {name = "lost demon shield", chance = 1570},
    {name = "blade of eternal winter", chance = 1080},
    {name = "Xena boots", chance = 960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 6000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, radius = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 6000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -150, maxDamage = -400, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="singlecloudchain", interval = 8000, chance = 17, minDamage = -200, maxDamage = -450, range = 4, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
    	defense = 86,
    	armor = 83,
    	{name ="combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 200, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 15},
    	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
