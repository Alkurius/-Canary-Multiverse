local mType = Game.createMonsterType("(Strong fire devil)")
local monster = {}

monster.description = "a strong fire devil"
monster.experience = 1400
monster.health = 1200
monster.maxHealth = 1200
monster.race = "fire"
monster.corpse = 41405
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2489

monster.outfit = {
    lookType = 1818,
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
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "small ruby", chance = 7320, maxCount = 2},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 30000, maxCount = 120},
    {name = "gold coin", chance = 30000, maxCount = 14},
    {name = "wand of inferno", chance = 2688},
    {name = "fire sword", chance = 636},
    {name = "magma amulet", chance = 1560},
    {name = "magma boots", chance = 672},
    {name = "magma legs", chance = 252},
    {id = 8895, chance = 1596},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune O", chance = 2840},
    {name = "special life leach holy rune", chance = 3460}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -700, length = 7, spread = 3, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -250, radius = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="massive fire elemental soulfire", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
