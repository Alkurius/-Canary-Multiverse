local mType = Game.createMonsterType("(Dwarf slayer)")
local monster = {}

monster.description = "a dwarf slayer"
monster.experience = 2880
monster.health = 2560
monster.maxHealth = 2560
monster.race = "blood"
monster.corpse = 39756
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2387

monster.outfit = {
    lookType = 1716,
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
    {name = "gold coin", chance = 100000, maxCount = 320},
    {name = "platinum coin", chance = 96384, maxCount = 3},
    {name = "strong health potion", chance = 17520, maxCount = 3},
    {name = "great mana potion", chance = 13328, maxCount = 3},
    {name = "brown mushroom", chance = 27040, maxCount = 3},
    {id = 12600, chance = 20960},
    {name = "holy ash", chance = 20960},
    {name = "small topaz", chance = 16384},
    {name = "lost husher's staff", chance = 11040},
    {name = "skull shatterer", chance = 12192},
    {name = "wimp tooth chain", chance = 19040},
    {name = "red hair dye", chance = 20192},
    {name = "basalt fetish", chance = 12960},
    {name = "bonecarving knife", chance = 12960},
    {name = "basalt figurine", chance = 12960},
    {name = "bone fetish", chance = 14210},
    {id = 3097, chance = 1669},
    {name = "guardian shield", chance = 2288},
    {name = "buckle", chance = 3040},
    {name = "clay lump", chance = 1136},
    {name = "knight axe", chance = 1520},
    {name = "terra boots", chance = 384},
    {name = "suspicious device", chance = 400},
    {name = "tower shield", chance = 384},
    {name = "terra legs", chance = 384},
    {name = "fire axe", chance = 1136},
    {name = "skull staff", chance = 768},
    {name = "spiked squelcher", chance = 384},
    {name = "semi-perfect opalo", chance = 2330},
    {name = "summon rune K", chance = 4280},
    {name = "tornado energy rune", chance = 3790}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -150, maxDamage = -350, range = 3, length = 6, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -250, range = 3, length = 5, spread = 5, effect = CONST_ME_SMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -290, range = 3, length = 5, spread = 5, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_POISONAREA, target = false},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -70, maxDamage = -250, range = 7, target = false},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 5000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 160, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = -30},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
