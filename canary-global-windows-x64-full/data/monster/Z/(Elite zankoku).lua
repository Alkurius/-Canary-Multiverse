local mType = Game.createMonsterType("(Elite zankoku)")
local monster = {}

monster.description = "a elite zankoku"
monster.experience = 2500
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2712

monster.outfit = {
    lookType = 2041,
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
    {name = "Ham", chance = 54108, maxCount = 5},
    {name = "Diremaw Brainpan", chance = 32562},
    {name = "Poisonous Slime", chance = 16106, maxCount = 7},
    {name = "Blue Crystal Shard", chance = 13041},
    {name = "Violet Crystal Shard", chance = 11043},
    {name = "Green Crystal Shard", chance = 10840},
    {name = "Onyx Chip", chance = 11556, maxCount = 5},
    {name = "Diremaw Legs", chance = 13028, maxCount = 3},
    {name = "Small Enchanted Emerald", chance = 3969, maxCount = 3},
    {name = "Small Emerald", chance = 6858, maxCount = 3},
    {name = "Gold Ingot", chance = 4010},
    {id = 281, chance = 4185},
    {name = "Suspicious Device", chance = 810},
    {name = "Mycological Bow", chance = 1620},
    {name = "Mushroom Backpack", chance = 2025},
    {name = "complete topaz", chance = 760},
    {name = "reflect ice rune", chance = 3450},
    {name = "plague legs", chance = 1290},
    {name = "nightmare sword", chance = 1060},
    {name = "decay legs", chance = 850},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -200, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POFF, target = true},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 21, minDamage = -200, maxDamage = -310, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
    	defense = 5,
    	armor = 10
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -20},
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
