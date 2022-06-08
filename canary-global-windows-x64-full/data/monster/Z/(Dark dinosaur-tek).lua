local mType = Game.createMonsterType("(Dark dinosaur-tek)")
local monster = {}

monster.description = "a dark dinosaur-tek"
monster.experience = 2200
monster.health = 3050
monster.maxHealth = 3050
monster.race = "blood"
monster.corpse = 41744
monster.speed = 322
monster.manaCost = 0
monster.raceId = 2666

monster.outfit = {
    lookType = 1995,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 3442, maxCount = 7},
    {name = "gold coin", chance = 44550, maxCount = 135},
    {name = "gold coin", chance = 43200, maxCount = 135},
    {name = "gold coin", chance = 43200, maxCount = 49},
    {name = "platinum coin", chance = 3942, maxCount = 7},
    {name = "tower shield", chance = 1485},
    {name = "lizard leather", chance = 2700},
    {name = "lizard scale", chance = 1323, maxCount = 4},
    {name = "great health potion", chance = 7223, maxCount = 4},
    {name = "Zaoan armor", chance = 1323},
    {name = "Zaoan helmet", chance = 189},
    {name = "Zaoan shoes", chance = 1094},
    {name = "Zaoan legs", chance = 1269},
    {name = "spiked iron ball", chance = 13352},
    {name = "corrupted flag", chance = 4522},
    {name = "cursed shoulder spikes", chance = 7830},
    {name = "scale of corruption", chance = 3875},
    {name = "charm extra fire shot", chance = 1870},
    {name = "arcane ice rune", chance = 2740}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -360},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -240, maxDamage = -320, length = 3, spread = 2, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -340, radius = 3, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -90, maxDamage = -180, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 28,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 75, maxDamage = 125, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
