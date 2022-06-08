local mType = Game.createMonsterType("(Swaggart)")
local monster = {}

monster.description = "a swaggart"
monster.experience = 900
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 41744
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2616

monster.outfit = {
    lookType = 1945,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3446, chance = 100000, maxCount = 14},
    {id = 3031, chance = 100000, maxCount = 40},
    {id = 3592, chance = 20790},
    {id = 239, chance = 16659, maxCount = 3},
    {id = 3577, chance = 6750},
    {id = 3349, chance = 1120},
    {id = 3563, chance = 1026},
    {id = 3048, chance = 945, maxCount = 3},
    {id = 3003, chance = 1350},
    {id = 3572, chance = 1350},
    {id = 2815, chance = 1120},
    {id = 3028, chance = 1120},
    {id = 3279, chance = 176},
    {id = 3269, chance = 1120},
    {id = 3415, chance = 446},
    {id = 3371, chance = 310},
    {id = 3369, chance = 270},
    {name = "charm mana regeneration", chance = 890},
    {name = "ultimate missile water rune", chance = 4200},
    {name = "rare special tornado holy rune", chance = 4380}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 10, maxDamage = -175},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 10, maxDamage = -100, range = 7, shootEffect = CONST_ANI_BOLT, target = false}
}

monster.defenses = {
    	defense = 50,
    	armor = 35,
    	{name ="combat", interval = 4000, chance = 25, type = COMBAT_HEALING, minDamage = 20, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
