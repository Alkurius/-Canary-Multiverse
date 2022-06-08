local mType = Game.createMonsterType("(Cloto - pet)")
local monster = {}

monster.description = "a cloto - pet"
monster.experience = 215
monster.health = 330
monster.maxHealth = 330
monster.race = "blood"
monster.corpse = 41741
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2793

monster.outfit = {
    lookType = 2122,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    {id = 2831, chance = 3078},
    {name = "gold coin", chance = 55350, maxCount = 94},
    {name = "gold coin", chance = 68850, maxCount = 61},
    {name = "small emerald", chance = 3996, maxCount = 5},
    {name = "mystic turban", chance = 189},
    {id = 3607, chance = 31725},
    {name = "grave flower", chance = 1350},
    {name = "green piece of cloth", chance = 2700},
    {name = "royal spear", chance = 6574, maxCount = 3},
    {name = "mana potion", chance = 662},
    {name = "dirty turban", chance = 2984}
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
