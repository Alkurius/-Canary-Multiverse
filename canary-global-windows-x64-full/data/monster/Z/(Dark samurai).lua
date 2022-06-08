local mType = Game.createMonsterType("(Dark samurai)")
local monster = {}

monster.description = "a dark samurai"
monster.experience = 8712
monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2601

monster.outfit = {
    lookType = 1930,
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
    {name = "platinum coin", chance = 99900, maxCount = 12},
    {name = "earth arrow", chance = 26312, maxCount = 38},
    {name = "stone skin amulet", chance = 9180},
    {name = "gold ingot", chance = 7763, maxCount = 1},
    {name = "cheesy figurine", chance = 18630},
    {name = "opal", chance = 32130, maxCount = 7},
    {name = "cobra crest", chance = 20858},
    {name = "small emerald", chance = 4050, maxCount = 3},
    {name = "violet gem", chance = 1755},
    {name = "yellow gem", chance = 4131},
    {name = "green gem", chance = 1634},
    {name = "perfect emerald", chance = 2490},
    {name = "arcane water rune", chance = 2460},
    {name = "special tornado holy rune", chance = 3590},
    {name = "cyclops helmet", chance = 450},
    {name = "centurion club", chance = -10},
    {name = "heart armor", chance = 1570}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -450, shootEffect = CONST_ANI_SNIPERARROW, target = true},
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -420, radius = 4, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_GREEN_RINGS, target = true},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -380, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
    	defense = 81,
    	armor = 81
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
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
