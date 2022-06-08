local mType = Game.createMonsterType("(Guardian of isingoma)")
local monster = {}

monster.description = "a guardian of isingoma"
monster.experience = 9860
monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 41086
monster.speed = 470
monster.manaCost = 0
monster.raceId = 2570

monster.outfit = {
    lookType = 1899,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "Small Sapphire", chance = 11310, maxCount = 6},
    {name = "Platinum Coin", chance = 100000, maxCount = 65},
    {id = 28570, chance = 650, maxCount = 13},
    {id = 3051, chance = 11310},
    {id = 7441, chance = 5200},
    {name = "Shard", chance = 325, maxCount = 4},
    {name = "Glacier Mask", chance = 325},
    {name = "Hailstorm Rod", chance = 325},
    {name = "Life Crystal", chance = 11310},
    {name = "Great Mana Potion", chance = 1170, maxCount = 8},
    {name = "Golden Mug", chance = 650},
    {name = "Glowing Rune", chance = 650, maxCount = 13},
    {id = 3051, chance = 11310},
    {name = "Quill", chance = 325},
    {name = "Small Diamond", chance = 650, maxCount = 6},
    {name = "cobra mana potion", chance = 1250},
    {name = "life leach death rune", chance = 3040},
    {name = "special ultimate energy rune", chance = 4250},
    {name = "lost demon axe", chance = 1580},
    {name = "Anubis armor", chance = 830},
    {name = "Anubis shield", chance = 910},
    {name = "Anubis sword", chance = 1260},
    {name = "Anubis club", chance = 1440},
    {name = "Anubis wand", chance = 610},
    {name = "Anubis long bow", chance = 20},
    {name = "Anubis boots", chance = 1230}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -200, range = 7, shootEffect = CONST_ANI_ICE, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -780, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -275, length = 3, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -680, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 79
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -18},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
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
