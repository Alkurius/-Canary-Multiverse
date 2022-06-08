local mType = Game.createMonsterType("(Mexican bear)")
local monster = {}

monster.description = "a mexican bear"
monster.experience = 800
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 41549
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2339

monster.outfit = {
    lookType = 1668,
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
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 131},
    {id = 3577, chance = 28750},
    {id = 3582, chance = 28750},
    {id = 9691, chance = 19166},
    {id = 3035, chance = 11500},
    {id = 3030, chance = 8846},
    {id = 3033, chance = 8213},
    {id = 9057, chance = 7666},
    {id = 3029, chance = 6388},
    {id = 3077, chance = 1854},
    {id = 3048, chance = 1385},
    {id = 3385, chance = 1162},
    {name = "imperfect topaz", chance = 2100},
    {name = "charm invisibility (pasive)", chance = 2010},
    {name = "mana leach fire rune", chance = 3950}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 40}
}

monster.defenses = {
    	defense = 28,
    	armor = 28
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 25},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
