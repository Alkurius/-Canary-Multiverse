local mType = Game.createMonsterType("(Sr. vampire)")
local monster = {}

monster.description = "a sr. vampire"
monster.experience = 1200
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 41600
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2520

monster.outfit = {
    lookType = 1849,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "black pearl", chance = 4500},
    {name = "small ruby", chance = 5472, maxCount = 4},
    {name = "gold coin", chance = 100000, maxCount = 90},
    {name = "ultimate magic wall rune", chance = 3840},
    {name = "special blank rune", chance = 4310},
    {name = "special mana leach holy rune", chance = 3930}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -100, range = 6, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -320, maxDamage = -560, radius = 6, effect = CONST_ME_BATS, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Vicious Manbat"},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
