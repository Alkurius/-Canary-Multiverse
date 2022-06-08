local mType = Game.createMonsterType("(Strong dende)")
local monster = {}

monster.description = "a strong dende"
monster.experience = 11000
monster.health = 16200
monster.maxHealth = 16200
monster.race = "undead"
monster.corpse = 41747
monster.speed = 420
monster.manaCost = 0
monster.raceId = 2308

monster.outfit = {
    lookType = 1637,
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
    {id = 5944, chance = 100000},
    {id = 5741, chance = 12150},
    {id = 7420, chance = 4050},
    {id = 3061, chance = 16200},
    {id = 5925, chance = 6750, maxCount = 4},
    {id = 238, chance = 12150, maxCount = 5},
    {id = 239, chance = 12150, maxCount = 5},
    {id = 6299, chance = 18900},
    {id = 3383, chance = 39150},
    {id = 3031, chance = 39150, maxCount = 135},
    {id = 3031, chance = 39150, maxCount = 135},
    {id = 3035, chance = 27000, maxCount = 11},
    {id = 6499, chance = 8100, maxCount = 5},
    {id = 6546, chance = 100000},
    {name = "ultimate energy backpack", chance = 820},
    {name = "great sapphire", chance = 2400},
    {name = "ultimate missile fire rune", chance = 4000},
    {name = "samurai boots", chance = 1280},
    {name = "corrupted demon axe", chance = 1300},
    {name = "ancestral esmeralda axe", chance = 790}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
    	{name ="combat", interval = 3000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -750, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	-- drown
    	{name ="condition", type = CONDITION_DROWN, interval = 1000, chance = 20, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -870, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 3000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -750, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 1000, chance = 23, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -175, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -200, range = 7, target = false}
}

monster.defenses = {
    	defense = 39,
    	armor = 40,
    	{name ="combat", interval = 4000, chance = 10, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
