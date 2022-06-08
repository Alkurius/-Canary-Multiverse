local mType = Game.createMonsterType("(Ice devil)")
local monster = {}

monster.description = "a ice devil"
monster.experience = 900
monster.health = 1250
monster.maxHealth = 1250
monster.race = "venom"
monster.corpse = 41744
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2239

monster.outfit = {
    lookType = 1568,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3007, chance = 1794},
    {name = "crystal necklace", chance = 1886},
    {name = "gold coin", chance = 100000, maxCount = 115},
    {name = "gold coin", chance = 100000, maxCount = 106},
    {id = 3053, chance = 1702},
    {name = "platinum amulet", chance = 150},
    {name = "steel helmet", chance = 5980},
    {name = "plate armor", chance = 11492},
    {name = "knight armor", chance = 644},
    {name = "knight legs", chance = 874},
    {name = "jewelled backpack", chance = 92},
    {name = "spider silk", chance = 2312},
    {name = "shard", chance = 851},
    {name = "sniper arrow", chance = 6716, maxCount = 7},
    {name = "sapphire hammer", chance = 161},
    {name = "crystal sword", chance = 2864},
    {name = "strong mana potion", chance = 17192},
    {name = "glacier mask", chance = 770},
    {name = "imperfect ruby", chance = 2620},
    {name = "charm paralyze", chance = 2230},
    {name = "ultimate missile holy rune", chance = 4030}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250, condition = {type = CONDITION_POISON, totalDamage = 160, interval = 4000}},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, range = 7, radius = 6, effect = CONST_ME_POFF, target = false, duration = 15000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -50, maxDamage = -100, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -600, range = 7, shootEffect = CONST_ANI_SNOWBALL, target = true, duration = 10000}
}

monster.defenses = {
    	defense = 0,
    	armor = 43,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 250, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
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
