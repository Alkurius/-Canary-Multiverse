local mType = Game.createMonsterType("(Reacoom)")
local monster = {}

monster.description = "a reacoom"
monster.experience = 2000
monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2718

monster.outfit = {
    lookType = 2047,
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
    canPushCreatures = false,
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
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3035, chance = 100000, maxCount = 4},
    {id = 21816, chance = 12272},
    {id = 238, chance = 9642},
    {id = 21203, chance = 7499},
    {id = 9057, chance = 7499, maxCount = 3},
    {id = 7642, chance = 6750},
    {id = 239, chance = 6136},
    {id = 21143, chance = 5400},
    {id = 21814, chance = 4091},
    {id = 21179, chance = 3375},
    {id = 21178, chance = 3375},
    {id = 21165, chance = 2700},
    {id = 3032, chance = 2014, maxCount = 3},
    {id = 21158, chance = 2014},
    {id = 7643, chance = 2014},
    {id = 21146, chance = 1350},
    {id = 3324, chance = 1350},
    {id = 21164, chance = 1350},
    {id = 3038, chance = 1350},
    {id = 21180, chance = 1350},
    {id = 3342, chance = 1350},
    {id = 811, chance = 1350},
    {id = 3344, chance = 1350},
    {id = 21183, chance = 675},
    {id = 813, chance = 675},
    {id = 812, chance = 675},
    {name = "charm extra holy shot", chance = 2210},
    {name = "reflect ice rune", chance = 3450}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 68},
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -200, range = 8, shootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
    	defense = 32,
    	armor = 32,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
