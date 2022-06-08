local mType = Game.createMonsterType("(Strong mutated rat)")
local monster = {}

monster.description = "a strong mutated rat"
monster.experience = 810
monster.health = 1080
monster.maxHealth = 1080
monster.race = "blood"
monster.corpse = 39801
monster.speed = 295
monster.manaCost = 0
monster.raceId = 2827

monster.outfit = {
    lookType = 2156,
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
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 272},
    {id = 9668, chance = 100000},
    {id = 3098, chance = 100000},
    {id = 3035, chance = 100000, maxCount = 6},
    {id = 3030, chance = 100000, maxCount = 5},
    {id = 3370, chance = 86400},
    {id = 3428, chance = 54400},
    {id = 3269, chance = 49680},
    {id = 3326, chance = 41600},
    {id = 811, chance = 13120},
    {id = 3735, chance = 10400},
    {name = "charm ice aura", chance = 1130},
    {name = "mana leach earth rune", chance = 3180}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170, condition = {type = CONDITION_POISON, totalDamage = 5, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -110, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 22, minDamage = -5, maxDamage = -5, length = 6, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -4, maxDamage = -4, radius = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -110, radius = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 30, maxDamage = 50, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
