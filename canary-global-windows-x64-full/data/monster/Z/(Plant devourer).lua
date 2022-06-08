local mType = Game.createMonsterType("(Plant devourer)")
local monster = {}

monster.description = "a plant devourer"
monster.experience = 3555
monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 41541
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2336

monster.outfit = {
    lookType = 1665,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Plant",
    race = BESTY_RACE_PLANT,
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
    illusionable = true,
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
    {name = "emerald bangle", chance = 460},
    {name = "silver brooch", chance = 2700},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 54000, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 88},
    {name = "small amethyst", chance = 6750, maxCount = 4},
    {name = "platinum coin", chance = 9642, maxCount = 3},
    {id = 3092, chance = 5868},
    {id = 3093, chance = 6427},
    {name = "piece of iron", chance = 27000},
    {name = "mouldy cheese", chance = 67500},
    {id = 3122, chance = 81000},
    {name = "two handed sword", chance = 27000},
    {name = "war hammer", chance = 2871},
    {name = "morning star", chance = 39150},
    {name = "battle hammer", chance = 27000},
    {name = "hammer of wrath", chance = 1285},
    {name = "knight legs", chance = 8438},
    {name = "steel shield", chance = 27000},
    {name = "steel boots", chance = 1516},
    {name = "piece of royal steel", chance = 1666},
    {name = "piece of hell steel", chance = 1364},
    {name = "piece of draconian steel", chance = 1390},
    {name = "soul orb", chance = 15000},
    {name = "demonic essence", chance = 12195},
    {name = "onyx arrow", chance = 10384, maxCount = 5},
    {name = "great health potion", chance = 13500},
    {id = 8896, chance = 729},
    {name = "meteoro fire backpack", chance = 1240},
    {name = "fine ruby", chance = 1610},
    {name = "mana leach fire rune", chance = 3950},
    {name = "lava boots", chance = 780},
    {name = "mythical crown shield", chance = 1560},
    {name = "Gorgon armor", chance = -20}
}

monster.attacks = {
    	{name ="melee", interval = 1500, chance = 100, minDamage = 0, maxDamage = -539, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -114, radius = 4, effect = CONST_ME_POISONAREA, target = false},
    	{name ="plaguesmith wave", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 4, effect = CONST_ME_POISONAREA, target = false, duration = 30000}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 200, maxDamage = 280, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
