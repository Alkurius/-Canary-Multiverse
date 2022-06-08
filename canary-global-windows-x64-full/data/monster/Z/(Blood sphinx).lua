local mType = Game.createMonsterType("(Blood sphinx)")
local monster = {}

monster.description = "a blood sphinx"
monster.experience = 7500
monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 41408
monster.speed = 340
monster.manaCost = 0
monster.raceId = 2490

monster.outfit = {
    lookType = 1819,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 4},
    {name = "Sphinx Feather", chance = 12090},
    {name = "Magma Amulet", chance = 9100},
    {id = 31438, chance = 7150},
    {name = "Magma Boots", chance = 4680},
    {name = "Lightning Pendant", chance = 4550},
    {name = "Lightning Headband", chance = 4030},
    {name = "Wand of Starstorm", chance = 3770},
    {name = "Wand of Defiance", chance = 2340},
    {name = "Magma Monocle", chance = 1820},
    {name = "Magma Legs", chance = 1690},
    {name = "demonic life potion", chance = 900},
    {name = "summon rune X", chance = 3330},
    {name = "special life leach holy rune", chance = 3460},
    {name = "arcane club", chance = 20},
    {name = "Anubis helmet", chance = 240},
    {name = "Anubis shield", chance = 910},
    {name = "Anubis legs", chance = 150},
    {name = "Anubis club", chance = 1440},
    {name = "Anubis axe", chance = 40},
    {name = "Anubis long bow", chance = 20},
    {name = "Anubis bow", chance = 1760}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -500, length = 6, spread = 3, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -350, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
    	{name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -400, radius = 3, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
    	defense = 82,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 90},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -15},
    	{type = COMBAT_HOLYDAMAGE , percent = 85},
    	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
