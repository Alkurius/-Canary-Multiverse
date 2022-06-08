local mType = Game.createMonsterType("(Ginyu)")
local monster = {}

monster.description = "a ginyu"
monster.experience = 2400
monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 41744
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2715

monster.outfit = {
    lookType = 2044,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 7},
    {name = "Great Spirit Potion", chance = 100000, maxCount = 3},
    {name = "Small Enchanted Ruby", chance = 6750, maxCount = 3},
    {name = "Meat", chance = 6750, maxCount = 3},
    {name = "Crystal Sword", chance = 6750},
    {name = "Lion's Mane", chance = 6750},
    {name = "Silver Brooch", chance = 2025},
    {name = "Small Diamond", chance = 2025, maxCount = 3},
    {name = "War Hammer", chance = 2025},
    {name = "Doublet", chance = 2025},
    {name = "Dark Shield", chance = 2025},
    {name = "Titan Axe", chance = 2025},
    {name = "Spiked Squelcher", chance = 2025},
    {name = "Glorious Axe", chance = 2025},
    {name = "Spirit Cloak", chance = 2025},
    {name = "Onyx Chip", chance = 2025},
    {name = "Coral Brooch", chance = 2025},
    {name = "Ivory Carving", chance = 2025},
    {name = "Rainbow Quartz", chance = 2025},
    {name = "Noble Axe", chance = 675},
    {name = "White Silk Flower", chance = 675},
    {name = "Lion Figurine", chance = 135},
    {name = "charm extra holy shot", chance = 2210},
    {name = "reflect ice rune", chance = 3450}
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
