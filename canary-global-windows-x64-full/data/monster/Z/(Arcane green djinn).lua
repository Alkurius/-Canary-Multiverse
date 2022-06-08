local mType = Game.createMonsterType("(Arcane green djinn)")
local monster = {}

monster.description = "a arcane green djinn"
monster.experience = 322
monster.health = 495
monster.maxHealth = 495
monster.race = "blood"
monster.corpse = 41149
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2370

monster.outfit = {
    lookType = 1699,
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
    Stars = 2,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 2831, chance = 3420},
    {name = "gold coin", chance = 61500, maxCount = 105},
    {name = "gold coin", chance = 76500, maxCount = 68},
    {name = "small emerald", chance = 4440, maxCount = 6},
    {name = "mystic turban", chance = 210},
    {id = 3607, chance = 35250},
    {name = "grave flower", chance = 1500},
    {name = "green piece of cloth", chance = 3000},
    {name = "royal spear", chance = 7305, maxCount = 3},
    {name = "mana potion", chance = 735},
    {name = "dirty turban", chance = 3315}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -45, maxDamage = -80, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -105, range = 7, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = true},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 5000},
    	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitMonster = "rat"},
    	{name ="djinn electrify", interval = 2000, chance = 15, range = 5, target = false},
    	{name ="djinn cancel invisibility", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -13},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
