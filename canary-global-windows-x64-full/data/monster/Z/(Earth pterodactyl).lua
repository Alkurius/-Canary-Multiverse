local mType = Game.createMonsterType("(Earth pterodactyl)")
local monster = {}

monster.description = "a earth pterodactyl"
monster.experience = 1320
monster.health = 1450
monster.maxHealth = 1450
monster.race = "blood"
monster.corpse = 41744
monster.speed = 306
monster.manaCost = 0
monster.raceId = 2651

monster.outfit = {
    lookType = 1980,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 6750, maxCount = 135},
    {name = "gold coin", chance = 5940, maxCount = 119},
    {name = "small amethyst", chance = 6615, maxCount = 4},
    {name = "platinum coin", chance = 5522, maxCount = 3},
    {name = "yellow gem", chance = 1350},
    {id = 3052, chance = 1040},
    {name = "terra rod", chance = 1351},
    {name = "wand of inferno", chance = 1998},
    {name = "lizard leather", chance = 1323},
    {name = "lizard scale", chance = 1526},
    {name = "strong mana potion", chance = 16349},
    {name = "great mana potion", chance = 10719},
    {name = "focus cape", chance = 891},
    {name = "bunch of ripe rice", chance = 1296},
    {name = "Zaoan shoes", chance = 608},
    {name = "Zaoan robe", chance = 405},
    {name = "dragon priest's wandtip", chance = 13378},
    {name = "charm extra death shot", chance = 1490},
    {name = "reflect water rune", chance = 3340}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -125, maxDamage = -190, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -320, maxDamage = -400, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 200, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 45},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
