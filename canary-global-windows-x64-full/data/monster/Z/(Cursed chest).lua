local mType = Game.createMonsterType("(Cursed chest)")
local monster = {}

monster.description = "a cursed chest"
monster.experience = 1755
monster.health = 1820
monster.maxHealth = 1820
monster.race = "blood"
monster.corpse = 41744
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2557

monster.outfit = {
    lookType = 1886,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 69},
    {name = "platinum coin", chance = 1249, maxCount = 4},
    {name = "crown helmet", chance = 866},
    {name = "meat", chance = 65000, maxCount = 5},
    {id = 6299, chance = 325},
    {name = "bar of chocolate", chance = 364},
    {name = "diamond sceptre", chance = 442},
    {name = "shadow sceptre", chance = 351},
    {name = "focus cape", chance = 442},
    {name = "crystal of focus", chance = 130},
    {name = "essence of a bad dream", chance = 10000},
    {name = "scythe leg", chance = 6189},
    {name = "tornado fire rune", chance = 3770},
    {name = "ultimate missile death rune", chance = 3470},
    {name = "special reflect death rune", chance = 3920}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -115, maxDamage = -180, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -70, maxDamage = -130, range = 7, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 60, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
