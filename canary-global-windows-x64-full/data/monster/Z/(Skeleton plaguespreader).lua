local mType = Game.createMonsterType("(Skeleton plaguespreader)")
local monster = {}

monster.description = "a skeleton plaguespreader"
monster.experience = 5250
monster.health = 3900
monster.maxHealth = 3900
monster.race = "undead"
monster.corpse = 41437
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2513

monster.outfit = {
    lookType = 1842,
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
    {name = "flash arrow", chance = 23010, maxCount = 13},
    {name = "great spirit potion", chance = 19747, maxCount = 3},
    {name = "spectral silver nugget", chance = 14976},
    {name = "spectral gold nugget", chance = 7384},
    {name = "emerald bangle", chance = 1742},
    {name = "lightning boots", chance = 1742},
    {name = "diamond", chance = 1300},
    {name = "lightning robe", chance = 1300},
    {name = "elven amulet", chance = 1300},
    {name = "lightning legs", chance = 1079},
    {name = "shockwave amulet", chance = 650},
    {name = "demonic death potion", chance = 1300},
    {name = "special blank rune", chance = 4310},
    {name = "special mana leach holy rune", chance = 3930},
    {name = "darkness shield", chance = 330},
    {name = "bow of eternal flames", chance = 1320},
    {name = "Dark warrior legs", chance = 1380}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 1700, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -550, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
    	{name ="combat", interval = 1700, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -550, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="combat", interval = 1700, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -550, radius = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 1700, chance = 35, type = COMBAT_HOLYDAMAGE, minDamage = -250, maxDamage = -550, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -550, range = 4, radius = 4, effect = CONST_ME_ENERGYAREA, target = true}
}

monster.defenses = {
    	defense = 40,
    	armor = 85
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 60},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
