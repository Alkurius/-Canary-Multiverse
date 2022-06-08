local mType = Game.createMonsterType("(Royal zankoku)")
local monster = {}

monster.description = "a royal zankoku"
monster.experience = 4700
monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2711

monster.outfit = {
    lookType = 2040,
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
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 19},
    {name = "great spirit potion", chance = 100000, maxCount = 4},
    {name = "essence of a bad dream", chance = 20250},
    {id = 3051, chance = 16268},
    {name = "silver amulet", chance = 20250},
    {id = 3091, chance = 14918},
    {name = "spider fangs", chance = 15930},
    {name = "mind stone", chance = 24030},
    {name = "wand of cosmic energy", chance = 24030},
    {name = "magma amulet", chance = 12015},
    {name = "elven amulet", chance = 10935, maxCount = 3},
    {id = 23544, chance = 14297},
    {name = "sacred tree amulet", chance = 10125},
    {name = "spider silk", chance = 8775},
    {id = 3052, chance = 7506},
    {name = "orb", chance = 10530},
    {name = "underworld rod", chance = 9612},
    {id = 23529, chance = 1350},
    {id = 3098, chance = 12312},
    {name = "strange talisman", chance = 10948},
    {id = 3092, chance = 9747},
    {id = 3050, chance = 8208},
    {id = 6299, chance = 10128},
    {name = "garlic necklace", chance = 10192},
    {name = "platinum amulet", chance = 10328},
    {id = 23543, chance = 14297},
    {name = "Strange Symbol", chance = 3564},
    {name = "stone skin amulet", chance = 3510},
    {name = "necklace of the deep", chance = 2430},
    {name = "complete topaz", chance = 760},
    {name = "mana leach ice rune", chance = 2490},
    {name = "plague robe", chance = 870},
    {name = "nightmare sword", chance = 1060},
    {name = "decay legs", chance = 850},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
    	{name ="arachnophobicawavedice", interval = 2000, chance = 20, minDamage = -250, maxDamage = -350, target = false},
    	{name ="arachnophobicawaveenergy", interval = 2000, chance = 20, minDamage = -250, maxDamage = -350, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -350, radius = 4, effect = CONST_ME_BLOCKHIT, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -300, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
    	defense = 0,
    	armor = 70,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -40},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
