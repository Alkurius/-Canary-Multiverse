local mType = Game.createMonsterType("(Shrimp's revenge)")
local monster = {}

monster.description = "a shrimp's revenge"
monster.experience = 1250
monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 41744
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2624

monster.outfit = {
    lookType = 1953,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Aquatic",
    race = BESTY_RACE_AQUATIC,
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
    pushable = true,
    rewardBoss = false,
    illusionable = true,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "platinum coin", chance = 99100, maxCount = 4},
    {name = "quara tentacle", chance = 19050},
    {name = "mind stone", chance = 8600},
    {id = 3098, chance = 6975},
    {name = "great mana potion", chance = 6738, maxCount = 6},
    {name = "shrimp", chance = 6625, maxCount = 5},
    {name = "small amethyst", chance = 6500, maxCount = 2},
    {name = "small ruby", chance = 5812, maxCount = 2},
    {name = "assassin star", chance = 5575, maxCount = 9},
    {name = "vortex bolt", chance = 4650, maxCount = 12},
    {name = "violet crystal shard", chance = 1512},
    {name = "northwind rod", chance = 925},
    {name = "fish fin", chance = 462},
    {name = "piggy bank", chance = 238},
    {name = "charm mana regeneration", chance = 890},
    {name = "tornado water rune", chance = 2770}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 40, effect = CONST_ME_DRAWBLOOD},
    	{name ="quara constrictor freeze", interval = 2000, chance = 10, target = false},
    	{name ="quara constrictor electrify", interval = 2000, chance = 10, range = 1, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 35,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -25},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
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
