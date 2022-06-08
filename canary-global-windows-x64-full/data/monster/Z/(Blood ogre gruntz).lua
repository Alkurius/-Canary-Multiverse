local mType = Game.createMonsterType("(Blood ogre gruntz)")
local monster = {}

monster.description = "a blood ogre gruntz"
monster.experience = 2500
monster.health = 2700
monster.maxHealth = 2700
monster.race = "blood"
monster.corpse = 41323
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2443

monster.outfit = {
    lookType = 1772,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    {name = "small diamond", chance = 4400, maxCount = 6},
    {name = "gold coin", chance = 100000, maxCount = 191},
    {name = "platinum coin", chance = 27665, maxCount = 3},
    {name = "crossbow", chance = 10659},
    {name = "dragon ham", chance = 35662, maxCount = 2},
    {name = "soul orb", chance = 6578},
    {name = "dragonbone staff", chance = 110},
    {name = "shadow sceptre", chance = 341},
    {name = "strong health potion", chance = 19481},
    {name = "strong mana potion", chance = 23023},
    {name = "lightning pendant", chance = 572},
    {name = "lightning boots", chance = 341},
    {name = "lightning legs", chance = 1023},
    {name = "lightning robe", chance = 341},
    {name = "composite hornbow", chance = 341},
    {name = "focus cape", chance = 110},
    {name = "wand of starstorm", chance = 451},
    {name = "wand of draconia", chance = 2200},
    {name = "shockwave amulet", chance = 110},
    {name = "wyrm scale", chance = 17578},
    {name = "ultimate death rune", chance = 4130},
    {name = "summon rune V", chance = 3320},
    {name = "ultimate energy rune", chance = 4200}
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
