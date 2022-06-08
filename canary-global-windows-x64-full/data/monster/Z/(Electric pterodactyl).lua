local mType = Game.createMonsterType("(Electric pterodactyl)")
local monster = {}

monster.description = "a electric pterodactyl"
monster.experience = 2500
monster.health = 2700
monster.maxHealth = 2700
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2650

monster.outfit = {
    lookType = 1979,
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
    illusionable = false,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 5200, maxCount = 6},
    {name = "gold coin", chance = 100000, maxCount = 226},
    {name = "platinum coin", chance = 32695, maxCount = 4},
    {name = "crossbow", chance = 12597},
    {name = "dragon ham", chance = 42146, maxCount = 3},
    {name = "soul orb", chance = 7774},
    {name = "dragonbone staff", chance = 130},
    {name = "shadow sceptre", chance = 403},
    {name = "strong health potion", chance = 23023},
    {name = "strong mana potion", chance = 27209},
    {name = "lightning pendant", chance = 676},
    {name = "lightning boots", chance = 403},
    {name = "lightning legs", chance = 1209},
    {name = "lightning robe", chance = 403},
    {name = "composite hornbow", chance = 403},
    {name = "focus cape", chance = 130},
    {name = "wand of starstorm", chance = 533},
    {name = "wand of draconia", chance = 2600},
    {name = "shockwave amulet", chance = 130},
    {name = "wyrm scale", chance = 20774},
    {name = "charm extra death shot", chance = 1490},
    {name = "reflect water rune", chance = 3340}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -360},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -90, maxDamage = -150, radius = 4, effect = CONST_ME_TELEPORT, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -140, maxDamage = -250, radius = 5, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -180, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="elder wyrm wave", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 25},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
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
