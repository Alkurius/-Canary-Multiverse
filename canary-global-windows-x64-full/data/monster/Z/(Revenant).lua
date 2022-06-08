local mType = Game.createMonsterType("(Revenant)")
local monster = {}

monster.description = "a revenant"
monster.experience = 1500
monster.health = 1800
monster.maxHealth = 1800
monster.race = "fire"
monster.corpse = 39913
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2495

monster.outfit = {
    lookType = 1824,
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
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "special meteoro ice rune", chance = 2770},
    {name = "summon rune X", chance = 3330},
    {name = "specialreflect holy rune", chance = 2920}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 100},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_FIREDAMAGE, minDamage = -65, maxDamage = -605, length = 7, spread = 3, target = false},
    	{name ="massive fire elemental soulfire", interval = 2000, chance = 12, target = false},
    	{name ="firefield", interval = 2000, chance = 11, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="firefield", interval = 2000, chance = 11, radius = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 20
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -15},
    	{type = COMBAT_HOLYDAMAGE , percent = 100},
    	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
