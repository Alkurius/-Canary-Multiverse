local mType = Game.createMonsterType("(Zombie gargoyle)")
local monster = {}

monster.description = "a zombie gargoyle"
monster.experience = 4800
monster.health = 7200
monster.maxHealth = 7200
monster.race = "undead"
monster.corpse = 41224
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2402

monster.outfit = {
    lookType = 1731,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 127},
    {name = "platinum coin", chance = 100000, maxCount = 13},
    {name = "yellow gem", chance = 1339},
    {id = 3097, chance = 6058},
    {name = "knight legs", chance = 2483},
    {name = "crown armor", chance = 481},
    {name = "crown helmet", chance = 1157},
    {name = "iron ore", chance = 19500},
    {name = "magic sulphur", chance = 3900},
    {name = "titan axe", chance = 3380},
    {name = "glorious axe", chance = 2431},
    {name = "strong health potion", chance = 20280, maxCount = 3},
    {name = "strong mana potion", chance = 18200, maxCount = 3},
    {name = "great mana potion", chance = 18200, maxCount = 3},
    {name = "mana potion", chance = 18200, maxCount = 5},
    {name = "ultimate health potion", chance = 12350, maxCount = 3},
    {name = "crystalline armor", chance = 728},
    {name = "small topaz", chance = 21450, maxCount = 4},
    {name = "shiny stone", chance = 17810},
    {name = "sulphurous stone", chance = 26910},
    {name = "wand of defiance", chance = 1690},
    {name = "green crystal shard", chance = 10400},
    {name = "blue crystal splinter", chance = 20800, maxCount = 3},
    {name = "cyan crystal fragment", chance = 16900},
    {name = "pulverized ore", chance = 26650},
    {name = "vein of ore", chance = 19500},
    {name = "prismatic bolt", chance = 20150, maxCount = 6},
    {name = "crystal crossbow", chance = 390},
    {name = "rings backpack", chance = 2440},
    {name = "summon rune U", chance = 3330},
    {name = "life leach energy rune", chance = 3360},
    {name = "evil armor", chance = 1900},
    {name = "black spirit legs", chance = 1310},
    {name = "sword of mythical justice", chance = 1200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    	{name ="orewalker wave", interval = 2000, chance = 15, minDamage = -296, maxDamage = -700, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1500, length = 6, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -800, maxDamage = -1080, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_SMALLPLANTS, target = true},
    	{name ="drunk", interval = 2000, chance = 15, radius = 4, effect = CONST_ME_SOUND_PURPLE, target = false, duration = 6000},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 2, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}

monster.defenses = {
    	defense = 45,
    	armor = 45
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 65},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
