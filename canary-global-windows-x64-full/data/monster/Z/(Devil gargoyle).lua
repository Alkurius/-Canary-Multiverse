local mType = Game.createMonsterType("(Devil gargoyle)")
local monster = {}

monster.description = "a devil gargoyle"
monster.experience = 700
monster.health = 1000
monster.maxHealth = 1000
monster.race = "venom"
monster.corpse = 41744
monster.speed = 222
monster.manaCost = 0
monster.raceId = 2273

monster.outfit = {
    lookType = 1602,
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
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 57200, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 103},
    {name = "yellow gem", chance = 715},
    {name = "might ring", chance = 1222},
    {name = "life crystal", chance = 11895},
    {name = "wand of cosmic energy", chance = 689},
    {name = "soul orb", chance = 58500},
    {name = "bonebreaker", chance = 13},
    {name = "mastermind potion", chance = 520},
    {name = "strong health potion", chance = 7527},
    {name = "strong mana potion", chance = 7774},
    {name = "lightning pendant", chance = 923},
    {name = "crystalline armor", chance = 26},
    {name = "gear wheel", chance = 6500},
    {id = 9063, chance = 6916},
    {name = "shockwave amulet", chance = 143},
    {name = "gear crystal", chance = 6500},
    {name = "slime mould", chance = 624},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm steal life", chance = 1890},
    {name = "mana leach holy rune", chance = 3970}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -80, maxDamage = -120, radius = 3, effect = CONST_ME_YELLOWENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -125, maxDamage = -170, length = 5, spread = 2, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_STUN, target = true, duration = 3000}
}

monster.defenses = {
    	defense = 25,
    	armor = 25
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
