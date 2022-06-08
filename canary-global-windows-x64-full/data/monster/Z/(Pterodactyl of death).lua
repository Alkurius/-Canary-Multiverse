local mType = Game.createMonsterType("(Pterodactyl of death)")
local monster = {}

monster.description = "a pterodactyl of death"
monster.experience = 3050
monster.health = 3000
monster.maxHealth = 3000
monster.race = "venom"
monster.corpse = 41744
monster.speed = 284
monster.manaCost = 0
monster.raceId = 2649

monster.outfit = {
    lookType = 1978,
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
    {name = "golden mug", chance = 3731},
    {name = "small sapphire", chance = 15600},
    {name = "gold coin", chance = 41990, maxCount = 130},
    {name = "gold coin", chance = 41990, maxCount = 130},
    {name = "gold coin", chance = 41990, maxCount = 51},
    {id = 3051, chance = 767},
    {id = 3052, chance = 8125},
    {name = "life crystal", chance = 1040},
    {name = "snakebite rod", chance = 1209},
    {name = "warrior helmet", chance = 728},
    {name = "strange helmet", chance = 871},
    {name = "crown armor", chance = 663},
    {name = "royal helmet", chance = 182},
    {name = "tower shield", chance = 1196},
    {name = "power bolt", chance = 8060},
    {name = "green mushroom", chance = 23660},
    {name = "charmer's tiara", chance = 234},
    {name = "mercenary sword", chance = 2691},
    {name = "noble axe", chance = 975},
    {name = "great mana potion", chance = 2600},
    {name = "swamplair armor", chance = 117},
    {name = "spellbook of mind control", chance = 117},
    {name = "snake skin", chance = 19240},
    {name = "winged tail", chance = 1248},
    {name = "charm extra death shot", chance = 1490},
    {name = "reflect water rune", chance = 3340}
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
