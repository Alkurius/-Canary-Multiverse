local mType = Game.createMonsterType("(Blood ogre gruntz christmas)")
local monster = {}

monster.description = "a blood ogre gruntz christmas"
monster.experience = 3050
monster.health = 3000
monster.maxHealth = 3000
monster.race = "venom"
monster.corpse = 41323
monster.speed = 284
monster.manaCost = 0
monster.raceId = 2444

monster.outfit = {
    lookType = 1773,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "golden mug", chance = 3157},
    {name = "small sapphire", chance = 13200},
    {name = "gold coin", chance = 35530, maxCount = 110},
    {name = "gold coin", chance = 35530, maxCount = 110},
    {name = "gold coin", chance = 35530, maxCount = 43},
    {id = 3051, chance = 649},
    {id = 3052, chance = 6875},
    {name = "life crystal", chance = 880},
    {name = "snakebite rod", chance = 1023},
    {name = "warrior helmet", chance = 616},
    {name = "strange helmet", chance = 737},
    {name = "crown armor", chance = 561},
    {name = "royal helmet", chance = 154},
    {name = "tower shield", chance = 1012},
    {name = "power bolt", chance = 6820},
    {name = "green mushroom", chance = 20020},
    {name = "charmer's tiara", chance = 198},
    {name = "mercenary sword", chance = 2277},
    {name = "noble axe", chance = 825},
    {name = "great mana potion", chance = 2200},
    {name = "swamplair armor", chance = 99},
    {name = "spellbook of mind control", chance = 99},
    {name = "snake skin", chance = 16280},
    {name = "winged tail", chance = 1056},
    {name = "ultimate death rune", chance = 4130},
    {name = "summon rune V", chance = 3320},
    {name = "atonement rune", chance = 3040}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -252},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -80, maxDamage = -300, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitItem = 3976},
    	{name ="speed", interval = 2000, chance = 25, speedChange = -850, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 12000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 340, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
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
