local mType = Game.createMonsterType("(Aberrant rotworm)")
local monster = {}

monster.description = "a aberrant rotworm"
monster.experience = 2500
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 41346
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2461

monster.outfit = {
    lookType = 1790,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    {name = "Ham", chance = 52104, maxCount = 5},
    {name = "Diremaw Brainpan", chance = 31356},
    {name = "Poisonous Slime", chance = 15509, maxCount = 6},
    {name = "Blue Crystal Shard", chance = 12558},
    {name = "Violet Crystal Shard", chance = 10634},
    {name = "Green Crystal Shard", chance = 10439},
    {name = "Onyx Chip", chance = 11128, maxCount = 5},
    {name = "Diremaw Legs", chance = 12545, maxCount = 3},
    {name = "Small Enchanted Emerald", chance = 3822, maxCount = 3},
    {name = "Small Emerald", chance = 6604, maxCount = 3},
    {name = "Gold Ingot", chance = 3861},
    {id = 281, chance = 4030},
    {name = "Suspicious Device", chance = 780},
    {name = "Mycological Bow", chance = 1560},
    {name = "Mushroom Backpack", chance = 1950},
    {name = "life fuild from another multiverse", chance = 810},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "evil helmet", chance = 1680},
    {name = "shield of fire ice", chance = 770},
    {name = "full warrior armor", chance = 770}
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
