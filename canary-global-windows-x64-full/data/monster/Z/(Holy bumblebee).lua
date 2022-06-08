local mType = Game.createMonsterType("(Holy bumblebee)")
local monster = {}

monster.description = "a holy bumblebee"
monster.experience = 2900
monster.health = 3800
monster.maxHealth = 3800
monster.race = "undead"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2277

monster.outfit = {
    lookType = 1606,
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
    illusionable = true,
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
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "gold coin", chance = 100000, maxCount = 127},
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {id = 3053, chance = 1300},
    {name = "tower shield", chance = 806},
    {name = "titan axe", chance = 2002},
    {name = "bonebreaker", chance = 1495},
    {name = "strong health potion", chance = 18570, maxCount = 3},
    {name = "strong mana potion", chance = 19500, maxCount = 3},
    {name = "great mana potion", chance = 20696, maxCount = 3},
    {name = "great health potion", chance = 19500, maxCount = 3},
    {name = "mana potion", chance = 18570, maxCount = 4},
    {name = "terra boots", chance = 3705},
    {name = "crystalline armor", chance = 299},
    {name = "battle stone", chance = 16198},
    {id = 12600, chance = 7800},
    {name = "green crystal splinter", chance = 5096, maxCount = 3},
    {name = "green crystal fragment", chance = 7397, maxCount = 3},
    {name = "crystalline spikes", chance = 18902},
    {name = "drill bolt", chance = 10000, maxCount = 6},
    {name = "envenomed arrow", chance = 13299, maxCount = 13},
    {name = "Arcane water backpack", chance = 1150},
    {name = "crystal ruby", chance = 2570},
    {name = "mana leach holy rune", chance = 3970},
    {name = "bushi legs", chance = 50},
    {name = "the crystal boots", chance = 880},
    {name = "ancestral esmeralda gun", chance = 990}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    	{name ="drunk", interval = 2000, chance = 15, radius = 4, effect = CONST_ME_FIREAREA, target = true, duration = 5000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -430, maxDamage = -550, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -200, maxDamage = -400, radius = 4, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 15},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
