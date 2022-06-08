local mType = Game.createMonsterType("(Assault soldier)")
local monster = {}

monster.description = "a assault soldier"
monster.experience = 3555
monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 41747
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2606

monster.outfit = {
    lookType = 1935,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "emerald bangle", chance = 426},
    {name = "silver brooch", chance = 2500},
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 50000, maxCount = 125},
    {name = "gold coin", chance = 62500, maxCount = 81},
    {name = "small amethyst", chance = 6250, maxCount = 4},
    {name = "platinum coin", chance = 8928, maxCount = 2},
    {id = 3092, chance = 5434},
    {id = 3093, chance = 5951},
    {name = "piece of iron", chance = 25000},
    {name = "mouldy cheese", chance = 62500},
    {id = 3122, chance = 75000},
    {name = "two handed sword", chance = 25000},
    {name = "war hammer", chance = 2659},
    {name = "morning star", chance = 36250},
    {name = "battle hammer", chance = 25000},
    {name = "hammer of wrath", chance = 1190},
    {name = "knight legs", chance = 7812},
    {name = "steel shield", chance = 25000},
    {name = "steel boots", chance = 1404},
    {name = "piece of royal steel", chance = 1542},
    {name = "piece of hell steel", chance = 1262},
    {name = "piece of draconian steel", chance = 1288},
    {name = "soul orb", chance = 13889},
    {name = "demonic essence", chance = 11291},
    {name = "onyx arrow", chance = 9615, maxCount = 5},
    {name = "great health potion", chance = 12500},
    {id = 8896, chance = 675},
    {name = "perfect emerald", chance = 2490},
    {name = "meteoro water rune", chance = 2600},
    {name = "special tornado holy rune", chance = 3590},
    {name = "cyclops helmet", chance = 450},
    {name = "centurion club", chance = -10},
    {name = "heart armor", chance = 1570}
}

monster.attacks = {
    	{name ="melee", interval = 1500, chance = 100, minDamage = 0, maxDamage = -539, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -114, radius = 4, effect = CONST_ME_POISONAREA, target = false},
    	{name ="plaguesmith wave", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 4, effect = CONST_ME_POISONAREA, target = false, duration = 30000}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 200, maxDamage = 280, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
