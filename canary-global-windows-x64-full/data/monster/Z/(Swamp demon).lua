local mType = Game.createMonsterType("(Swamp demon)")
local monster = {}

monster.description = "a swamp demon"
monster.experience = 11200
monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 41350
monster.speed = 390
monster.manaCost = 0
monster.raceId = 2463

monster.outfit = {
    lookType = 1792,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 60,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3019, chance = 770},
    {name = "small ruby", chance = 28000, maxCount = 6},
    {name = "gold coin", chance = 100000, maxCount = 140},
    {name = "gold coin", chance = 100000, maxCount = 140},
    {name = "gold coin", chance = 100000, maxCount = 140},
    {name = "gold coin", chance = 100000, maxCount = 140},
    {name = "small emerald", chance = 28000, maxCount = 7},
    {name = "platinum coin", chance = 100000, maxCount = 21},
    {name = "violet gem", chance = 1162},
    {name = "green gem", chance = 1217},
    {name = "life fuild from another multiverse", chance = 810},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "evil shield", chance = 1010},
    {name = "legs of eternal flames", chance = 1530},
    {name = "full warrior club", chance = 370}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1470},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -780, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
    	defense = 60,
    	armor = 60,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 520, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
