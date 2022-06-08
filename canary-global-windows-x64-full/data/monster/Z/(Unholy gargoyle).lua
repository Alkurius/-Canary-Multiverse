local mType = Game.createMonsterType("(Unholy gargoyle)")
local monster = {}

monster.description = "a unholy gargoyle"
monster.experience = 1606
monster.health = 2700
monster.maxHealth = 2700
monster.race = "venom"
monster.corpse = 41744
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2261

monster.outfit = {
    lookType = 1590,
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
    {id = 5880, chance = 689},
    {id = 21183, chance = 936},
    {id = 21170, chance = 2236},
    {id = 21165, chance = 481},
    {id = 3031, chance = 100000, maxCount = 260},
    {id = 21755, chance = 1911},
    {id = 8775, chance = 897},
    {id = 21143, chance = 2561},
    {id = 3035, chance = 7813, maxCount = 5},
    {id = 21103, chance = 3692},
    {id = 7643, chance = 5811},
    {id = 238, chance = 12064},
    {id = 21167, chance = 897},
    {id = 21179, chance = 572},
    {id = 21178, chance = 299},
    {id = 21180, chance = 377},
    {id = 3037, chance = 949},
    {id = 9057, chance = 2028, maxCount = 5},
    {id = 3032, chance = 2067, maxCount = 5},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm steal life", chance = 1890},
    {name = "reflect holy rune", chance = 2810}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 50},
    	{name ="melee", interval = 2000, chance = 2, skill = 86, attack = 100},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -125, maxDamage = -245, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
    	{name ="war golem skill reducer", interval = 2000, chance = 16, target = false},
    	{name ="war golem electrify", interval = 2000, chance = 9, range = 7, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 40,
    	{name ="speed", interval = 2000, chance = 13, speedChange = 404, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 15},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
