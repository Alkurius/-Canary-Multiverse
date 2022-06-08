local mType = Game.createMonsterType("(Royalist)")
local monster = {}

monster.description = "a royalist"
monster.experience = 1900
monster.health = 1955
monster.maxHealth = 1955
monster.race = "blood"
monster.corpse = 41400
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2484

monster.outfit = {
    lookType = 1813,
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
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 310},
    {id = 3053, chance = 1080},
    {name = "platinum amulet", chance = 1174},
    {name = "stone skin amulet", chance = 1350},
    {name = "halberd", chance = 4050},
    {name = "epee", chance = 756},
    {name = "plate shield", chance = 13959},
    {name = "brown mushroom", chance = 9369},
    {name = "troll green", chance = 2565},
    {name = "wolf paw", chance = 7020},
    {name = "relic sword", chance = 648},
    {name = "dreaded cleaver", chance = 216},
    {name = "bonebreaker", chance = 540},
    {name = "berserk potion", chance = 1620},
    {name = "strong health potion", chance = 6750},
    {name = "ultimate health potion", chance = 3240},
    {id = 8895, chance = 284},
    {id = 22052, chance = 20250},
    {name = "werewolf fur", chance = 14378},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune O", chance = 2840},
    {name = "special ultimate holy rune", chance = 3910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
    	{name ="outfit", interval = 2000, chance = 1, radius = 1, effect = CONST_ME_SOUND_BLUE, target = true, duration = 2000, outfitMonster = "werewolf"},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -200, length = 4, spread = 2, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, radius = 3, effect = CONST_ME_SOUND_WHITE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, radius = 1, effect = CONST_ME_SOUND_GREEN, target = false},
    	{name ="werewolf skill reducer", interval = 2000, chance = 15, range = 1, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 120, maxDamage = 225, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 400, range = 7, effect = CONST_ME_SOUND_PURPLE, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 65},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
