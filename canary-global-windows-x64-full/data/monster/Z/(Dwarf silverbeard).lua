local mType = Game.createMonsterType("(Dwarf silverbeard)")
local monster = {}

monster.description = "a dwarf silverbeard"
monster.experience = 2880
monster.health = 2560
monster.maxHealth = 2560
monster.race = "blood"
monster.corpse = 41744
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2822

monster.outfit = {
    lookType = 2151,
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
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 80000, maxCount = 160},
    {name = "platinum coin", chance = 93872, maxCount = 3},
    {name = "fire axe", chance = 528},
    {name = "skull staff", chance = 448},
    {name = "guardian shield", chance = 1328},
    {name = "tower shield", chance = 704},
    {name = "brown mushroom", chance = 23872, maxCount = 3},
    {name = "spiked squelcher", chance = 80},
    {name = "strong health potion", chance = 17680, maxCount = 5},
    {name = "great mana potion", chance = 17232, maxCount = 3},
    {name = "terra legs", chance = 80},
    {name = "terra boots", chance = 1408},
    {name = "small topaz", chance = 15648},
    {name = "clay lump", chance = 800},
    {id = 12600, chance = 17488},
    {name = "buckle", chance = 13088},
    {name = "buckle", chance = 1232},
    {name = "bonecarving knife", chance = 13616},
    {name = "wimp tooth chain", chance = 14320},
    {name = "skull shatterer", chance = 19712},
    {name = "red hair dye", chance = 13616},
    {name = "basalt figurine", chance = 13696},
    {name = "charm ice aura", chance = 1130},
    {name = "mana leach earth rune", chance = 3180}
}

monster.attacks = {
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, length = 6, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -250, radius = 5, effect = CONST_ME_BLACKSMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -200, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 2, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_MAGIC_GREEN, target = true},
    	{name ="drunk", interval = 2000, chance = 10, radius = 4, effect = CONST_ME_SOUND_RED, target = false, duration = 6000}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 92, effect = CONST_ME_YELLOWENERGY, target = false},
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_TELEPORT}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 40},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
