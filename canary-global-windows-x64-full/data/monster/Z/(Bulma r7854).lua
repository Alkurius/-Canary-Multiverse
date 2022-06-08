local mType = Game.createMonsterType("(Bulma r7854)")
local monster = {}

monster.description = "a bulma r7854"
monster.experience = 9860
monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 470
monster.manaCost = 0
monster.raceId = 2303

monster.outfit = {
    lookType = 1632,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    {name = "Small Sapphire", chance = 11745, maxCount = 7},
    {name = "Platinum Coin", chance = 100000, maxCount = 68},
    {id = 28570, chance = 675, maxCount = 14},
    {id = 3051, chance = 11745},
    {id = 7441, chance = 5400},
    {name = "Shard", chance = 338, maxCount = 4},
    {name = "Glacier Mask", chance = 338},
    {name = "Hailstorm Rod", chance = 338},
    {name = "Life Crystal", chance = 11745},
    {name = "Great Mana Potion", chance = 1215, maxCount = 8},
    {name = "Golden Mug", chance = 675},
    {name = "Glowing Rune", chance = 675, maxCount = 14},
    {id = 3051, chance = 11745},
    {name = "Quill", chance = 338},
    {name = "Small Diamond", chance = 675, maxCount = 7},
    {name = "bulma backpack", chance = 1170},
    {name = "great sapphire", chance = 2400},
    {name = "ultimate missile fire rune", chance = 4000},
    {name = "samurai legs", chance = 610},
    {name = "corrupted demon club", chance = 90},
    {name = "ancestral esmeralda shield", chance = 330}
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
