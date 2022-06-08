local mType = Game.createMonsterType("(Yamcha)")
local monster = {}

monster.description = "a yamcha"
monster.experience = 400
monster.health = 430
monster.maxHealth = 430
monster.race = "blood"
monster.corpse = 41741
monster.speed = 240
monster.manaCost = 0
monster.raceId = 2271

monster.outfit = {
    lookType = 1600,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
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
    {id = 2828, chance = 1269},
    {name = "small ruby", chance = 432},
    {name = "gold coin", chance = 88452, maxCount = 81},
    {id = 3053, chance = 567},
    {name = "silver amulet", chance = 1377},
    {name = "hailstorm rod", chance = 297},
    {name = "clerical mace", chance = 1701},
    {name = "red robe", chance = 108},
    {name = "pirate voodoo doll", chance = 2336},
    {id = 6089, chance = 945},
    {name = "lunar staff", chance = 162},
    {name = "amber staff", chance = 918},
    {name = "cultish robe", chance = 13608},
    {name = "cultish symbol", chance = 122},
    {name = "rope belt", chance = 13500},
    {name = "broken key ring", chance = 162}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90, condition = {type = CONDITION_POISON, totalDamage = 2, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -70, maxDamage = -150, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true, duration = 4000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 3000, chance = 20, type = COMBAT_HEALING, minDamage = 45, maxDamage = 60, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_YELLOW_RINGS}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
