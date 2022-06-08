local mType = Game.createMonsterType("(Harpy queen)")
local monster = {}

monster.description = "a harpy queen"
monster.experience = 5100
monster.health = 5400
monster.maxHealth = 5400
monster.race = "blood"
monster.corpse = 41215
monster.speed = 520
monster.manaCost = 0
monster.raceId = 2581

monster.outfit = {
    lookType = 1910,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 125},
    {name = "platinum coin", chance = 100000, maxCount = 10},
    {id = 3049, chance = 1500},
    {name = "boots of haste", chance = 450},
    {name = "dark shield", chance = 2500},
    {name = "assassin star", chance = 9500, maxCount = 12},
    {name = "diamond sceptre", chance = 1200},
    {name = "haunted blade", chance = 2500},
    {name = "titan axe", chance = 2750},
    {name = "shadow sceptre", chance = 800},
    {name = "glorious axe", chance = 3000},
    {name = "terra legs", chance = 1200},
    {name = "terra boots", chance = 600},
    {name = "cluster of solace", chance = 700},
    {name = "silencer claws", chance = 21250},
    {name = "silencer resonating chamber", chance = 10512},
    {name = "cobra mana potion", chance = 1250},
    {name = "mana leach death rune", chance = 3500},
    {name = "special ultimate earth rune", chance = 2680},
    {name = "ogre helmet", chance = 110},
    {name = "bow of eternal winter", chance = 550},
    {name = "Holy armor", chance = 1010}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -315, condition = {type = CONDITION_POISON, totalDamage = 600, interval = 4000}},
    	{name ="silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -40, maxDamage = -150, radius = 4, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 220, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
