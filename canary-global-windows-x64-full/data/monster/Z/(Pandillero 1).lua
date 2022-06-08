local mType = Game.createMonsterType("(Pandillero 1)")
local monster = {}

monster.description = "a pandillero 1"
monster.experience = 900
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2752

monster.outfit = {
    lookType = 2081,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 156},
    {id = 3035, chance = 51818, maxCount = 4},
    {id = 21202, chance = 19539},
    {id = 237, chance = 9243},
    {id = 236, chance = 8307},
    {id = 5878, chance = 7189},
    {id = 3030, chance = 7111},
    {id = 3032, chance = 6864},
    {id = 3033, chance = 6760},
    {id = 9057, chance = 6188},
    {id = 11472, chance = 6123, maxCount = 3},
    {id = 21177, chance = 1794},
    {id = 3091, chance = 1443},
    {id = 21166, chance = 1417},
    {id = 3415, chance = 1326},
    {id = 3371, chance = 923},
    {id = 5911, chance = 845},
    {id = 3370, chance = 637},
    {id = 7401, chance = 195},
    {name = "charm extra physical shot", chance = 1170},
    {name = "meteoro earth rune", chance = 4230}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 45, attack = 80},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -200, length = 4, spread = 3, effect = CONST_ME_YELLOWENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 11, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -135, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -150, radius = 3, effect = CONST_ME_HITAREA, target = false},
    	{name ="mooh'tah master skill reducer", interval = 2000, chance = 19, range = 7, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_HEALING, minDamage = 110, maxDamage = 160, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="haste", interval = 2000, chance = 8, speedChange = 220, effect = CONST_ME_MAGIC_RED, target = false, duration = 1000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
    	{type = COMBAT_ENERGYDAMAGE, percent = 3},
    	{type = COMBAT_EARTHDAMAGE, percent = 1},
    	{type = COMBAT_FIREDAMAGE, percent = 1},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
