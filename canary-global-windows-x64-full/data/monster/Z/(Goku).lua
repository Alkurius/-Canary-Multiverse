local mType = Game.createMonsterType("(Goku)")
local monster = {}

monster.description = "a goku"
monster.experience = 1755
monster.health = 2400
monster.maxHealth = 2400
monster.race = "venom"
monster.corpse = 41744
monster.speed = 230
monster.manaCost = 0
monster.raceId = 2242

monster.outfit = {
    lookType = 1571,
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
    canWalkOnPoison = true
}

monster.loot = {
    {id = 21144, chance = 4306},
    {id = 21197, chance = 2727},
    {id = 3732, chance = 4293},
    {id = 21183, chance = 432},
    {id = 3031, chance = 100000, maxCount = 230},
    {id = 236, chance = 9032, maxCount = 3},
    {id = 237, chance = 9032, maxCount = 3},
    {id = 7643, chance = 1296},
    {id = 3035, chance = 77382, maxCount = 4},
    {id = 9057, chance = 1674, maxCount = 4},
    {id = 3032, chance = 2160, maxCount = 4},
    {id = 3030, chance = 1552, maxCount = 4},
    {id = 21164, chance = 189},
    {id = 21172, chance = 945},
    {id = 21179, chance = 162},
    {id = 21178, chance = 500},
    {id = 21180, chance = 324},
    {id = 21158, chance = 500},
    {name = "imperfect ruby", chance = 2620},
    {name = "charm paralyze", chance = 2230},
    {name = "tornado holy rune", chance = 3270}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 50},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -200, range = 7, radius = 4, shootEffect = CONST_ANI_GLOOTHSPEAR, effect = CONST_ME_HITBYPOISON, target = true},
    	{name ="combat", interval = 2000, chance = 7, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -100, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, radius = 5, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="glooth anemone summon", interval = 2000, chance = 14, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
