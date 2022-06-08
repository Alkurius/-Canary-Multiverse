local mType = Game.createMonsterType("(Crystal beetle)")
local monster = {}

monster.description = "a crystal beetle"
monster.experience = 4000
monster.health = 5000
monster.maxHealth = 5000
monster.race = "venom"
monster.corpse = 41265
monster.speed = 444
monster.manaCost = 0
monster.raceId = 2420

monster.outfit = {
    lookType = 1749,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    pushable = true,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small ruby", chance = 30264, maxCount = 6},
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "platinum coin", chance = 58500, maxCount = 8},
    {name = "violet gem", chance = 1456},
    {id = 6299, chance = 5824},
    {name = "titan axe", chance = 1872},
    {name = "great mana potion", chance = 26520, maxCount = 3},
    {id = 281, chance = 3952},
    {name = "ultimate health potion", chance = 12025, maxCount = 3},
    {name = "spidris mandible", chance = 35672},
    {name = "compound eye", chance = 17173},
    {name = "calopteryx cape", chance = 1664},
    {name = "carapace shield", chance = 1521},
    {name = "hive scythe", chance = 1807},
    {name = "necklaces backpack", chance = 1530},
    {name = "summon rune R", chance = 4380},
    {name = "reflect energy rune", chance = 3960},
    {name = "evil legs", chance = 710},
    {name = "black spirit rod", chance = 1560},
    {name = "axe of mythical justice", chance = 440}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -349}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
