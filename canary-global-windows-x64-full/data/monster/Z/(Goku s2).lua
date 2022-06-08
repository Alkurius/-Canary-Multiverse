local mType = Game.createMonsterType("(Goku s2)")
local monster = {}

monster.description = "a goku s2"
monster.experience = 3200
monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2245

monster.outfit = {
    lookType = 1574,
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
    rewardBoss = true,
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
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 100000, maxCount = 14},
    {name = "assassin star", chance = 100000, maxCount = 12},
    {name = "black pearl", chance = 100000, maxCount = 3},
    {name = "great mana potion", chance = 100000, maxCount = 3},
    {name = "great spirit potion", chance = 100000, maxCount = 3},
    {name = "small enchanted emerald", chance = 100000, maxCount = 3},
    {name = "ultimate mana potion", chance = 100000, maxCount = 3},
    {name = "ultimate spirit potion", chance = 100000, maxCount = 3},
    {name = "fox paw", chance = 100000, maxCount = 3},
    {name = "moonlight rod", chance = 100000},
    {id = 3049, chance = 100000},
    {name = "werefox tail", chance = 100000},
    {name = "green gem", chance = 540},
    {name = "troll green", chance = 540},
    {name = "werewolf amulet", chance = 540},
    {name = "composite hornbow", chance = 338},
    {name = "sai", chance = 338},
    {name = "silver token", chance = 338},
    {id = 27706, chance = 338},
    {name = "foxtail", chance = 135},
    {name = "wolf backpack", chance = 135},
    {name = "silver token", chance = 135},
    {name = "DF Backpack", chance = 1660},
    {name = "crystal emerald", chance = 1890},
    {name = "tornado holy rune", chance = 3270},
    {name = "volcano wand", chance = 970},
    {name = "crystal shield", chance = 1620},
    {name = "ancestral rubi twin-axe", chance = 380},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290},
    	{name ="combat", interval = 1000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 720, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000},
    	{name ="combat", interval = 1000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -700, length = 5, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="outfit", interval = 1000, chance = 1, radius = 1, target = true, duration = 2000, outfitMonster = "werewolf"}
}

monster.defenses = {
    	defense = 45,
    	armor = 40,
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 345, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -40},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
