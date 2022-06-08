local mType = Game.createMonsterType("(Strong hydra)")
local monster = {}

monster.description = "a strong hydra"
monster.experience = 2730
monster.health = 3055
monster.maxHealth = 3055
monster.race = "blood"
monster.corpse = 41305
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2583

monster.outfit = {
    lookType = 1912,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    illusionable = true,
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
    {name = "small sapphire", chance = 7500},
    {name = "gold coin", chance = 51000, maxCount = 150},
    {name = "gold coin", chance = 51000, maxCount = 150},
    {name = "gold coin", chance = 30000, maxCount = 69},
    {name = "platinum coin", chance = 72000, maxCount = 4},
    {name = "life crystal", chance = 855},
    {name = "boots of haste", chance = 195},
    {name = "stone skin amulet", chance = 1350},
    {id = 3098, chance = 1785},
    {name = "warrior helmet", chance = 1335},
    {name = "knight armor", chance = 1500},
    {name = "royal helmet", chance = 315},
    {name = "medusa shield", chance = 405},
    {name = "ham", chance = 90000, maxCount = 6},
    {name = "hydra egg", chance = 1395},
    {name = "strong mana potion", chance = 570},
    {name = "cucumber", chance = 7170},
    {name = "hydra head", chance = 15180},
    {name = "ultimate missile energy rune", chance = 4060},
    {name = "mana leach death rune", chance = 3500},
    {name = "special ultimate earth rune", chance = 2680}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -270},
    	{name ="speed", interval = 2000, chance = 25, speedChange = -700, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 15000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -250, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -80, maxDamage = -155, shootEffect = CONST_ANI_SMALLICE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -66, maxDamage = -320, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 260, maxDamage = 407, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
