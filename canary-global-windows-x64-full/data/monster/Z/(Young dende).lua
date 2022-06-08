local mType = Game.createMonsterType("(Young dende)")
local monster = {}

monster.description = "a young dende"
monster.experience = 670
monster.health = 950
monster.maxHealth = 950
monster.race = "blood"
monster.corpse = 41744
monster.speed = 284
monster.manaCost = 0
monster.raceId = 2264

monster.outfit = {
    lookType = 1593,
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
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 24300, maxCount = 61},
    {id = 3049, chance = 122},
    {name = "gold ring", chance = 40},
    {name = "protection amulet", chance = 2956},
    {name = "two handed sword", chance = 2268},
    {name = "throwing star", chance = 18792, maxCount = 24},
    {id = 3307, chance = 4658},
    {name = "orcish axe", chance = 7290},
    {name = "dragon hammer", chance = 432},
    {name = "plate armor", chance = 7034},
    {name = "brass armor", chance = 999},
    {name = "dark helmet", chance = 1701},
    {name = "crusader helmet", chance = 378},
    {name = "plate legs", chance = 5778},
    {id = 3578, chance = 14580, maxCount = 3},
    {name = "hunting spear", chance = 7101},
    {id = 7395, chance = 68},
    {name = "health potion", chance = 634},
    {name = "magma boots", chance = 378},
    {name = "orc tooth", chance = 13014},
    {name = "broken helmet", chance = 32872},
    {name = "orc leather", chance = 27837},
    {name = "skull belt", chance = 6224},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm steal life", chance = 1890},
    {name = "reflect holy rune", chance = 2810}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="invisible", interval = 2000, chance = 5, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
