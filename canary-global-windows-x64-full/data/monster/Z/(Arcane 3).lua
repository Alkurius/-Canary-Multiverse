local mType = Game.createMonsterType("(Arcane 3)")
local monster = {}

monster.description = "a arcane 3"
monster.experience = 2000
monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 41744
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2532

monster.outfit = {
    lookType = 1861,
    lookHead = 114,
    lookBody = 94,
    lookLegs = 83,
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
    canPushCreatures = false,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "golden backpack", chance = 5362},
    {name = "tiger eye", chance = 14288},
    {id = 3031, chance = 51788, maxCount = 294},
    {name = "golden brush", chance = 25000},
    {name = "green gem", chance = 7138},
    {name = "gold ingot", chance = 3575},
    {name = "opal", chance = 14288},
    {name = "yellow gem", chance = 7138},
    {id = 2863, chance = 1788},
    {name = "ultimate magic wall rune", chance = 3840},
    {name = "arcane death rune", chance = 4310},
    {name = "special tornado ice rune", chance = 4270}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 3000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -150, radius = 5, target = false},
    	{name ="combat", interval = 3000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -200, effect = CONST_ME_LOSEENERGY, target = true},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -250, range = 5, radius = 2, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="speed", interval = 2000, chance = 30, speedChange = 290, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -30},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
