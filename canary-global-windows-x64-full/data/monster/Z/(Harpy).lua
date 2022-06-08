local mType = Game.createMonsterType("(Harpy)")
local monster = {}

monster.description = "a harpy"
monster.experience = 2900
monster.health = 1950
monster.maxHealth = 1950
monster.race = "fire"
monster.corpse = 41212
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2575

monster.outfit = {
    lookType = 1904,
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
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 55000, maxCount = 110},
    {name = "gold coin", chance = 44000, maxCount = 107},
    {name = "gold coin", chance = 3729, maxCount = 8},
    {name = "small amethyst", chance = 2475, maxCount = 3},
    {id = 3049, chance = 2972},
    {name = "necrotic rod", chance = 913},
    {name = "blank rune", chance = 18333, maxCount = 2},
    {name = "double axe", chance = 2193},
    {id = 3307, chance = 6226},
    {name = "guardian shield", chance = 8943},
    {name = "pitchfork", chance = 55000},
    {name = "cleaver", chance = 9713},
    {name = "soul orb", chance = 7953},
    {id = 6299, chance = 132},
    {name = "demonic essence", chance = 8800},
    {name = "flask of demonic blood", chance = 27500, maxCount = 2},
    {name = "magma coat", chance = 275},
    {name = "magma monocle", chance = 473},
    {name = "ultimate missile energy rune", chance = 4060},
    {name = "life leach death rune", chance = 3040},
    {name = "special ultimate energy rune", chance = 4250}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240, condition = {type = CONDITION_POISON, totalDamage = 160, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -240, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -430, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
    	{name ="diabolic imp skill reducer", interval = 2000, chance = 5, range = 5, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 650, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 800, effect = CONST_ME_MAGIC_RED, target = false, duration = 2000},
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_TELEPORT}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
