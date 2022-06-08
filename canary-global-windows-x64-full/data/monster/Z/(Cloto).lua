local mType = Game.createMonsterType("(Cloto)")
local monster = {}

monster.description = "a cloto"
monster.experience = 1100
monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 41744
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2678

monster.outfit = {
    lookType = 2007,
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
    illusionable = false,
    canPushItems = false,
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
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3035, chance = 100000, maxCount = 11},
    {id = 3049, chance = 1620},
    {id = 3079, chance = 486},
    {id = 7368, chance = 10260, maxCount = 14},
    {id = 7387, chance = 1296},
    {id = 7407, chance = 2700},
    {id = 7451, chance = 864},
    {id = 7454, chance = 3240},
    {id = 812, chance = 1296},
    {id = 813, chance = 648},
    {id = 20200, chance = 22950},
    {name = "fairy wings", chance = 40635},
    {name = "charm extra ice shot", chance = 2390},
    {name = "meteoro ice rune", chance = 3680}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 70, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
    	{name ="silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -40, maxDamage = -90, radius = 4, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 225, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
