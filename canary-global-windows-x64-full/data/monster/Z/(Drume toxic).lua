local mType = Game.createMonsterType("(Drume toxic)")
local monster = {}

monster.description = "a drume toxic"
monster.experience = 700
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 41744
monster.speed = 222
monster.manaCost = 0
monster.raceId = 2709

monster.outfit = {
    lookType = 2038,
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
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "small diamond", chance = 513},
    {name = "gold coin", chance = 64125, maxCount = 94},
    {name = "gold coin", chance = 50625, maxCount = 61},
    {name = "life crystal", chance = 162},
    {name = "wand of inferno", chance = 1357},
    {name = "double axe", chance = 1296},
    {name = "longsword", chance = 5400},
    {name = "serpent sword", chance = 567},
    {name = "broadsword", chance = 2632},
    {name = "dragon hammer", chance = 756},
    {name = "crossbow", chance = 13500},
    {name = "steel helmet", chance = 4050},
    {name = "steel shield", chance = 20250},
    {name = "dragon shield", chance = 432},
    {id = 3449, chance = 10881, maxCount = 14},
    {name = "plate legs", chance = 2700},
    {name = "dragon ham", chance = 88425, maxCount = 4},
    {name = "green dragon leather", chance = 1357},
    {name = "green dragon scale", chance = 1350},
    {name = "dragonbone staff", chance = 148},
    {name = "strong health potion", chance = 1350},
    {name = "dragon's tail", chance = 13149},
    {name = "charm extra holy shot", chance = 2210},
    {name = "mana leach ice rune", chance = 2490}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -140, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -170, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 40, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
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
