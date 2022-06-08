local mType = Game.createMonsterType("(Ozgalluch)")
local monster = {}

monster.description = "a ozgalluch"
monster.experience = 9000
monster.health = 8700
monster.maxHealth = 8700
monster.race = "blood"
monster.corpse = 41747
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2562

monster.outfit = {
    lookType = 1891,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
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
    {name = "Platinum Coin", chance = 100000},
    {name = "Lamassu Horn", chance = 16750, maxCount = 6},
    {name = "Red Crystal Fragment", chance = 13125},
    {name = "Terra Amulet", chance = 12500},
    {name = "Lamassu Hoof", chance = 9625},
    {name = "Violet Crystal Shard", chance = 8500},
    {name = "Blue Crystal Shard", chance = 8125},
    {name = "cobra life potion", chance = 990},
    {name = "tornado death rune", chance = 2700},
    {name = "rare special ultimate holy rune", chance = 3860},
    {name = "lost demon legs", chance = 70},
    {name = "sword of eternal winter", chance = 410},
    {name = "Xena sword", chance = 1650}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -350, maxDamage = -490, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -330, maxDamage = -410, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_SMALLPLANTS, target = true}
}

monster.defenses = {
    	defense = 82,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 80},
    	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
