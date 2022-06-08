local mType = Game.createMonsterType("(Shadow drake)")
local monster = {}

monster.description = "a shadow drake"
monster.experience = 5290
monster.health = 8970
monster.maxHealth = 8970
monster.race = "undead"
monster.corpse = 41176
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2378

monster.outfit = {
    lookType = 1707,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 48901, maxCount = 145},
    {name = "gold coin", chance = 48901, maxCount = 145},
    {name = "gold coin", chance = 48901, maxCount = 96},
    {name = "platinum coin", chance = 43268, maxCount = 3},
    {name = "soul orb", chance = 17646},
    {name = "demonic essence", chance = 12934},
    {name = "great mana potion", chance = 44312, maxCount = 3},
    {name = "terra legs", chance = 4538},
    {name = "terra boots", chance = 13790},
    {name = "great spirit potion", chance = 42717, maxCount = 3},
    {name = "ultimate health potion", chance = 35815},
    {id = 8896, chance = 261},
    {name = "shiny stone", chance = 1247},
    {name = "guardian boots", chance = 290},
    {name = "Zaoan armor", chance = 1262},
    {name = "Zaoan helmet", chance = 218},
    {name = "Zaoan shoes", chance = 1262},
    {name = "Zaoan legs", chance = 2030},
    {name = "drakinata", chance = 2132},
    {name = "Zaoan sword", chance = 145},
    {name = "twin hooks", chance = 21895},
    {name = "Zaoan halberd", chance = 21779},
    {name = "spellweaver's robe", chance = 1000},
    {name = "ghastly dragon head", chance = 9642},
    {name = "undead heart", chance = 28754},
    {name = "jade hat", chance = 1174},
    {name = "shell backpack", chance = 1610},
    {name = "summon rune L", chance = 3320},
    {name = "meteoro energy rune", chance = 3060},
    {name = "infernalist legs", chance = 380},
    {name = "cursed armor", chance = -50},
    {name = "drake helmet", chance = 1700},
    {name = "drake armor", chance = -40},
    {name = "drake legs", chance = 1900},
    {name = "drake club", chance = 800},
    {name = "drake rod", chance = 70}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -603},
    	{name ="ghastly dragon curse", interval = 2000, chance = 5, range = 5, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -920, maxDamage = -1280, range = 5, effect = CONST_ME_SMALLCLOUDS, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -230, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="ghastly dragon wave", interval = 2000, chance = 10, minDamage = -120, maxDamage = -250, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -110, maxDamage = -180, radius = 4, effect = CONST_ME_MORTAREA, target = false},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -800, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true, duration = 30000}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = -15},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
