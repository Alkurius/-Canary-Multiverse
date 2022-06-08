local mType = Game.createMonsterType("(Saiyan ape f2)")
local monster = {}

monster.description = "a saiyan ape f2"
monster.experience = 55000
monster.health = 20000
monster.maxHealth = 20000
monster.race = "venom"
monster.corpse = 41747
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2292

monster.outfit = {
    lookType = 1621,
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
    rewardBoss = true,
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
    {name = "platinum coin", chance = 100000, maxCount = 7},
    {name = "Piggy Bank", chance = 100000},
    {name = "Mysterious Remains", chance = 100000},
    {name = "Energy Bar", chance = 100000},
    {name = "Silver Token", chance = 100000, maxCount = 4},
    {name = "Gold Token", chance = 29700, maxCount = 3},
    {name = "Supreme Health Potion", chance = 31793},
    {name = "Ultimate Mana Potion", chance = 34492},
    {name = "Huge Chunk of Crude Iron", chance = 37192},
    {name = "Royal Star", chance = 21290, maxCount = 135},
    {name = "Green Gem", chance = 17280, maxCount = 3},
    {name = "Yellow Gem", chance = 16200, maxCount = 3},
    {name = "ML earth backpack", chance = 2380},
    {name = "great emerald", chance = 2140},
    {name = "arcane fire rune", chance = 3650},
    {name = "samurai legs", chance = 610},
    {name = "corrupted demon legs", chance = 1870},
    {name = "ancestral esmeralda armor", chance = 1910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 210, attack = 260},
    	-- fire
    	{name ="condition", type = CONDITION_FIRE, interval = 1000, chance = 7, minDamage = -200, maxDamage = -1000, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="combat", interval = 1000, chance = 7, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -150, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 1000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -20, maxDamage = -100, radius = 5, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="firefield", interval = 1000, chance = 4, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -150, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 1000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -100, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -30, maxDamage = -100, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 150,
    	armor = 165,
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 200, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 1000, chance = 10, speedChange = 1800, effect = CONST_ME_MAGIC_RED, target = false, duration = 3000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 220},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
