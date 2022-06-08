local mType = Game.createMonsterType("(Weird behemoth)")
local monster = {}

monster.description = "a weird behemoth"
monster.experience = 3500
monster.health = 5600
monster.maxHealth = 5600
monster.race = "blood"
monster.corpse = 41284
monster.speed = 390
monster.manaCost = 0
monster.raceId = 2429

monster.outfit = {
    lookType = 1758,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Giant",
    race = BESTY_RACE_GIANT,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 2893, chance = 180},
    {name = "crystal necklace", chance = 4554},
    {name = "gold coin", chance = 100000, maxCount = 180},
    {name = "gold coin", chance = 72000, maxCount = 178},
    {name = "small amethyst", chance = 11484, maxCount = 9},
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {name = "strange symbol", chance = 1350},
    {id = 3116, chance = 1206},
    {name = "two handed sword", chance = 10764},
    {name = "double axe", chance = 18918},
    {name = "giant sword", chance = 1811},
    {name = "crowbar", chance = 180},
    {name = "war axe", chance = 90},
    {name = "plate armor", chance = 7074},
    {name = "dark armor", chance = 7866},
    {id = 3456, chance = 1170},
    {name = "steel boots", chance = 684},
    {name = "meat", chance = 54000, maxCount = 11},
    {name = "perfect behemoth fang", chance = 1962},
    {name = "behemoth claw", chance = 774},
    {name = "assassin star", chance = 17550, maxCount = 9},
    {id = 7396, chance = 306},
    {name = "titan axe", chance = 162},
    {name = "great health potion", chance = 9216},
    {name = "battle stone", chance = 25200},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune I", chance = 3950},
    {name = "ultimate energy rune", chance = 4200},
    {name = "evil boots", chance = 1080},
    {name = "helmet of eternal flames", chance = 1150},
    {name = "full warrior shield", chance = 1520}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
