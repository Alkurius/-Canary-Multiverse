local mType = Game.createMonsterType("(Little goku)")
local monster = {}

monster.description = "a little goku"
monster.experience = 960
monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2232

monster.outfit = {
    lookType = 1561,
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
    canPushCreatures = false,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 202},
    {name = "cowbell", chance = 30348},
    {name = "cultish robe", chance = 19872},
    {name = "plate shield", chance = 27027},
    {name = "great health potion", chance = 15984},
    {name = "small ruby", chance = 4982, maxCount = 3},
    {name = "small topaz", chance = 4280, maxCount = 3},
    {name = "yellow gem", chance = 378},
    {name = "platinum coin", chance = 88088, maxCount = 4},
    {name = "plate shield", chance = 27959},
    {name = "small emerald", chance = 4604, maxCount = 3},
    {name = "small amethyst", chance = 3983, maxCount = 3},
    {name = "red piece of cloth", chance = 1094},
    {name = "ham", chance = 80204},
    {name = "bronze amulet", chance = 20439},
    {name = "mino shield", chance = 17104},
    {id = 3098, chance = 4306},
    {name = "mino lance", chance = 2444},
    {name = "warrior helmet", chance = 770},
    {name = "semi-perfect emerald", chance = 1530},
    {name = "charm challenge", chance = 1830},
    {name = "meteoro holy rune", chance = 2960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -250, range = 7, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 1000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 450, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
