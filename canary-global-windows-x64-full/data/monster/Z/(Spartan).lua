local mType = Game.createMonsterType("(Spartan)")
local monster = {}

monster.description = "a spartan"
monster.experience = 5100
monster.health = 5400
monster.maxHealth = 5400
monster.race = "blood"
monster.corpse = 41747
monster.speed = 520
monster.manaCost = 0
monster.raceId = 2317

monster.outfit = {
    lookType = 1646,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 100000, maxCount = 11},
    {id = 3049, chance = 1620},
    {name = "boots of haste", chance = 486},
    {name = "dark shield", chance = 2700},
    {name = "assassin star", chance = 10260, maxCount = 14},
    {name = "diamond sceptre", chance = 1296},
    {name = "haunted blade", chance = 2700},
    {name = "titan axe", chance = 2970},
    {name = "shadow sceptre", chance = 864},
    {name = "glorious axe", chance = 3240},
    {name = "terra legs", chance = 1296},
    {name = "terra boots", chance = 648},
    {name = "cluster of solace", chance = 756},
    {name = "silencer claws", chance = 22950},
    {name = "silencer resonating chamber", chance = 11354},
    {name = "HMM ice Backpack", chance = 2220},
    {name = "great ruby", chance = 2170},
    {name = "life leach fire rune", chance = 3490},
    {name = "samurai dager", chance = 680},
    {name = "templar helmet", chance = 650},
    {name = "templar club", chance = 610}
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
