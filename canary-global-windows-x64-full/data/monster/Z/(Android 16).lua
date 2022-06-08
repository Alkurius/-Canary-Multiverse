local mType = Game.createMonsterType("(Android 16)")
local monster = {}

monster.description = "a android 16"
monster.experience = 10773
monster.health = 16200
monster.maxHealth = 16200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2719

monster.outfit = {
    lookType = 2048,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3582, chance = 94608, maxCount = 11},
    {name = "Soul Orb", chance = 47250},
    {name = "Great Mana Potion", chance = 44550, maxCount = 4},
    {name = "Great Health Potion", chance = 44550, maxCount = 4},
    {name = "flask of demonic blood", chance = 40500, maxCount = 5},
    {name = "Small Amethyst", chance = 33682, maxCount = 4},
    {name = "Assassin Star", chance = 33304, maxCount = 14},
    {name = "Small Diamond", chance = 21195, maxCount = 4},
    {name = "Small Ruby", chance = 20700, maxCount = 4},
    {name = "Small Emerald", chance = 20398, maxCount = 4},
    {name = "Onyx Arrow", chance = 19548, maxCount = 20},
    {name = "Small Topaz", chance = 6183, maxCount = 4},
    {name = "Titan Axe", chance = 4050},
    {id = 282, chance = 4050},
    {name = "Spiked Squelcher", chance = 2970},
    {name = "Knight Armor", chance = 2673},
    {name = "Falcon Crest", chance = 1688},
    {name = "War Axe", chance = 1660},
    {name = "Violet Gem", chance = 1431},
    {name = "Damaged Armor Plates", chance = 1336},
    {name = "Green Gem", chance = 1188},
    {name = "Golden Armor", chance = 1134},
    {name = "Mastermind Shield", chance = 837},
    {name = "Heavy Mace", chance = 621},
    {id = 3481, chance = 500},
    {id = 3019, chance = 135},
    {name = "complete topaz", chance = 760},
    {name = "reflect ice rune", chance = 3450},
    {name = "plague legs", chance = 1290},
    {name = "nightmare wand", chance = 410},
    {name = "decay axe", chance = 20},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -500, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -290, maxDamage = -360, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.defenses = {
    	defense = 86,
    	armor = 86
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 55}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
