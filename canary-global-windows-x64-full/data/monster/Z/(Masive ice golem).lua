local mType = Game.createMonsterType("(Masive ice golem)")
local monster = {}

monster.description = "a masive ice golem"
monster.experience = 3220
monster.health = 3500
monster.maxHealth = 3500
monster.race = "undead"
monster.corpse = 41104
monster.speed = 262
monster.manaCost = 0
monster.raceId = 2577

monster.outfit = {
    lookType = 1906,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Giant",
    race = BESTY_RACE_GIANT,
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
    {id = 23781, chance = 4200},
    {id = 3031, chance = 100000, maxCount = 280},
    {id = 829, chance = 2800},
    {id = 3386, chance = 392},
    {name = "ultimate missile energy rune", chance = 4060},
    {name = "mana leach death rune", chance = 3500},
    {name = "special ultimate earth rune", chance = 2680}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 78, attack = 50},
    	{name ="speed", interval = 2000, chance = 18, minDamage = 0, maxDamage = -400, range = 7, radius = 4, effect = CONST_ME_ICETORNADO, target = true, duration = 20000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -50, maxDamage = -120, range = 7, radius = 3, effect = CONST_ME_ICETORNADO, target = false},
    	{name ="speed", interval = 2000, chance = 12, minDamage = 0, maxDamage = -400, length = 7, spread = 3, effect = CONST_ME_ICEATTACK, target = false, duration = 20000},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -380, length = 8, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 22,
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
