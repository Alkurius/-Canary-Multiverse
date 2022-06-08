local mType = Game.createMonsterType("(Oak shield)")
local monster = {}

monster.description = "a oak shield"
monster.experience = 8400
monster.health = 8300
monster.maxHealth = 8300
monster.race = "blood"
monster.corpse = 41747
monster.speed = 340
monster.manaCost = 0
monster.raceId = 2537

monster.outfit = {
    lookType = 1866,
    lookHead = 114,
    lookBody = 94,
    lookLegs = 114,
    lookFeet = 114,
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
    {name = "platinum coin", chance = 100000, maxCount = 4},
    {name = "cyan crystal fragment", chance = 18454},
    {name = "green crystal fragment", chance = 2390},
    {name = "lamassu horn", chance = 14540},
    {name = "lamassu hoof", chance = 13095},
    {name = "small amethyst", chance = 11718},
    {name = "gold ingot", chance = 6291},
    {name = "green gem", chance = 1742},
    {name = "elven amulet", chance = 1080},
    {name = "life redbull", chance = 2110},
    {name = "arcane death rune", chance = 4310},
    {name = "special tornado ice rune", chance = 4270},
    {name = "arcane shield", chance = 240},
    {name = "templar sword", chance = 370},
    {name = "Xena helmet", chance = 940}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="warden x", interval = 2000, chance = 15, minDamage = -250, maxDamage = -430, target = false},
    	{name ="warden ring", interval = 2000, chance = 8, minDamage = -250, maxDamage = -380, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -480, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -450, length = 5, spread = 3, effect = CONST_ME_HOLYAREA, target = false}
}

monster.defenses = {
    	defense = 84,
    	armor = 84
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
    	{type = COMBAT_HOLYDAMAGE , percent = 75},
    	{type = COMBAT_DEATHDAMAGE , percent = -35}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
