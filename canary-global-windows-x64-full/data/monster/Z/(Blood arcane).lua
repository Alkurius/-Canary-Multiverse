local mType = Game.createMonsterType("(Blood arcane)")
local monster = {}

monster.description = "a blood arcane"
monster.experience = 6800
monster.health = 7300
monster.maxHealth = 7300
monster.race = "blood"
monster.corpse = 41747
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2223

monster.outfit = {
    lookType = 1552,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 6},
    {name = "ultimate health potion", chance = 93919, maxCount = 4},
    {name = "meat", chance = 59629},
    {name = "broken longbow", chance = 18244},
    {name = "lion cloak patch", chance = 12669},
    {name = "black pearl", chance = 10980},
    {name = "warrior helmet", chance = 10980},
    {name = "mino shield", chance = 10642},
    {name = "silver brooch", chance = 9798},
    {name = "knife", chance = 9629},
    {name = "lion crest", chance = 8615},
    {id = 281, chance = 7095},
    {name = "gemmed figurine", chance = 5236},
    {name = "white pearl", chance = 4392},
    {name = "glacier shoes", chance = 3040},
    {name = "knight armor", chance = 2365},
    {name = "coral brooch", chance = 2196},
    {name = "assassin dagger", chance = 2028},
    {name = "ornate crossbow", chance = 1182},
    {name = "emerald bangle", chance = 1014},
    {name = "wood cape", chance = 506},
    {name = "elvish bow", chance = 338},
    {name = "SD backpack", chance = 1940},
    {name = "perfect sapphire", chance = 1210},
    {name = "arcane holy rune", chance = 2970},
    {name = "volcano sword", chance = 1390},
    {name = "pit demon legs", chance = 1800},
    {name = "ancestral rubi axe", chance = 20},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -430, range = 7, shootEffect = CONST_ANI_BURSTARROW, target = true},
    	{name ="combat", interval = 6000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -160, maxDamage = -485, range = 7, shootEffect = CONST_ANI_SMALLHOLY, target = true},
    	{name ="combat", interval = 4000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -160, maxDamage = -545, range = 7, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH, target = true},
    	{name ="combat", interval = 4000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -150, maxDamage = -425, radius = 3, effect = CONST_ME_ICEAREA, target = true}
}

monster.defenses = {
    	defense = 50,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
