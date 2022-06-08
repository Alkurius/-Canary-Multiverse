local mType = Game.createMonsterType("(Pterodactyl)")
local monster = {}

monster.description = "a pterodactyl"
monster.experience = 2400
monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 41744
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2655

monster.outfit = {
    lookType = 1984,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "Platinum Coin", chance = 100000, maxCount = 6},
    {name = "Great Spirit Potion", chance = 100000, maxCount = 3},
    {name = "Small Enchanted Ruby", chance = 6500, maxCount = 3},
    {name = "Meat", chance = 6500, maxCount = 3},
    {name = "Crystal Sword", chance = 6500},
    {name = "Lion's Mane", chance = 6500},
    {name = "Silver Brooch", chance = 1950},
    {name = "Small Diamond", chance = 1950, maxCount = 3},
    {name = "War Hammer", chance = 1950},
    {name = "Doublet", chance = 1950},
    {name = "Dark Shield", chance = 1950},
    {name = "Titan Axe", chance = 1950},
    {name = "Spiked Squelcher", chance = 1950},
    {name = "Glorious Axe", chance = 1950},
    {name = "Spirit Cloak", chance = 1950},
    {name = "Onyx Chip", chance = 1950},
    {name = "Coral Brooch", chance = 1950},
    {name = "Ivory Carving", chance = 1950},
    {name = "Rainbow Quartz", chance = 1950},
    {name = "Noble Axe", chance = 650},
    {name = "White Silk Flower", chance = 650},
    {name = "Lion Figurine", chance = 130},
    {name = "charm extra death shot", chance = 1490},
    {name = "reflect water rune", chance = 3340}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    	{name ="werelion wave", interval = 2000, chance = 20, minDamage = -150, maxDamage = -250, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -350, range = 3, shootEffect = CONST_ANI_HOLY, target = true}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 25},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -25},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
