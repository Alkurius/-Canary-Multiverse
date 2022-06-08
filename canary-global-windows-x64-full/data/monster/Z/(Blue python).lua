local mType = Game.createMonsterType("(Blue python)")
local monster = {}

monster.description = "a blue python"
monster.experience = 1300
monster.health = 1365
monster.maxHealth = 1365
monster.race = "blood"
monster.corpse = 41744
monster.speed = 530
monster.manaCost = 0
monster.raceId = 2646

monster.outfit = {
    lookType = 1975,
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
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 85,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small sapphire", chance = 3040, maxCount = 3},
    {name = "gold coin", chance = 80000, maxCount = 160},
    {name = "gold coin", chance = 76800, maxCount = 118},
    {id = 3049, chance = 1600},
    {name = "life crystal", chance = 480},
    {name = "battle axe", chance = 12800},
    {name = "morning star", chance = 64000},
    {name = "battle hammer", chance = 8000},
    {name = "strong health potion", chance = 8000},
    {name = "strong mana potion", chance = 6400},
    {id = 8894, chance = 12704},
    {id = 8895, chance = 12704},
    {name = "sea serpent scale", chance = 8000},
    {name = "charm extra death shot", chance = 1490},
    {name = "mana leach water rune", chance = 3690}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -10, maxDamage = -250, length = 7, spread = 2, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -80, maxDamage = -250, length = 7, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="young sea serpent drown", interval = 2000, chance = 15, range = 5, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 25, maxDamage = 175, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 400, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
