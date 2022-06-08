local mType = Game.createMonsterType("(Hydro giran)")
local monster = {}

monster.description = "a hydro giran"
monster.experience = 6100
monster.health = 6200
monster.maxHealth = 6200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2670

monster.outfit = {
    lookType = 1999,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "Platinum Coin", chance = 100000, maxCount = 4},
    {name = "Envenomed Arrow", chance = 91800, maxCount = 47},
    {name = "Terra Rod", chance = 14715},
    {name = "Goanna Meat", chance = 13230},
    {name = "Snakebite Rod", chance = 12150},
    {name = "Blue Goanna Scale", chance = 10665},
    {name = "Goanna Claw", chance = 5805},
    {name = "Serpent Sword", chance = 5400},
    {name = "Leaf Star", chance = 5130, maxCount = 4},
    {name = "Silver Amulet", chance = 5130},
    {name = "Springsprout Rod", chance = 3645},
    {name = "Scared Frog", chance = 2835},
    {name = "Terra Amulet", chance = 1485},
    {name = "Lizard Heart", chance = 1080},
    {name = "Sacred Tree Amulet", chance = 1080},
    {name = "Small Tortoise", chance = 742},
    {name = "Fur Armor", chance = 364},
    {name = "Terra Hood", chance = 338},
    {name = "perfect ruby", chance = 2300},
    {name = "arcane ice rune", chance = 2740},
    {name = "leopard boots", chance = 1250},
    {name = "cyclops boots", chance = 520},
    {name = "platinum thief sword", chance = 1100},
    {name = "Earth legs", chance = 720}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230, condition = {type = CONDITION_POISON, totalDamage = 15, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -490, range = 3, radius = 1, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_EXPLOSIONHIT, target = true}
}

monster.defenses = {
    	defense = 78,
    	armor = 78,
    	{name ="speed", interval = 2000, chance = 5, speedChange = 350, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
