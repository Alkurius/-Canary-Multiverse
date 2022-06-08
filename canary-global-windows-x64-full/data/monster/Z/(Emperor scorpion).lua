local mType = Game.createMonsterType("(Emperor scorpion)")
local monster = {}

monster.description = "a emperor scorpion"
monster.experience = 884
monster.health = 1170
monster.maxHealth = 1170
monster.race = "undead"
monster.corpse = 41057
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2330

monster.outfit = {
    lookType = 1659,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 179},
    {name = "small emerald", chance = 1540, maxCount = 3},
    {name = "platinum coin", chance = 15050, maxCount = 3},
    {name = "daramian mace", chance = 7140},
    {name = "steel helmet", chance = 6468},
    {name = "black shield", chance = 2548},
    {name = "fist on a stick", chance = 308},
    {name = "imperfect topaz", chance = 2100},
    {name = "charm invisibility (pasive)", chance = 2010},
    {name = "reflect fire rune", chance = 3560}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -193, condition = {type = CONDITION_POISON, totalDamage = 1000, interval = 4000}}
}

monster.defenses = {
    	defense = 0,
    	armor = 42,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -1},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
