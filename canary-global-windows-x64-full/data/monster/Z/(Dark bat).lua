local mType = Game.createMonsterType("(Dark bat)")
local monster = {}

monster.description = "a dark bat"
monster.experience = 615
monster.health = 900
monster.maxHealth = 900
monster.race = "blood"
monster.corpse = 41744
monster.speed = 236
monster.manaCost = 0
monster.raceId = 2760

monster.outfit = {
    lookType = 2089,
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
    canWalkOnPoison = true
}

monster.loot = {
    {name = "black pearl", chance = 1008, maxCount = 4},
    {name = "gold coin", chance = 74200, maxCount = 70},
    {name = "gold coin", chance = 56000, maxCount = 98},
    {name = "small amethyst", chance = 700, maxCount = 3},
    {id = 3051, chance = 1386},
    {name = "battle shield", chance = 10864},
    {name = "black shield", chance = 98},
    {name = "star herb", chance = 10164},
    {name = "star herb", chance = 7084},
    {name = "bat wing", chance = 6860, maxCount = 3},
    {name = "mercenary sword", chance = 154},
    {id = 8894, chance = 17542},
    {id = 8895, chance = 17542, maxCount = 3},
    {name = "batwing hat", chance = 112},
    {name = "mutated bat ear", chance = 6860},
    {name = "charm posion aura", chance = 1860},
    {name = "ultimate missile earth rune", chance = 3550}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -168, condition = {type = CONDITION_POISON, totalDamage = 120, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -70, maxDamage = -180, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -30, maxDamage = -90, radius = 6, effect = CONST_ME_SOUND_WHITE, target = false},
    	{name ="mutated bat curse", interval = 2000, chance = 10, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -190, maxDamage = -240, length = 4, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
