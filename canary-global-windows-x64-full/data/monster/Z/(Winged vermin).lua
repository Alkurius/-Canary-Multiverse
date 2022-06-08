local mType = Game.createMonsterType("(Winged vermin)")
local monster = {}

monster.description = "a winged vermin"
monster.experience = 2600
monster.health = 3700
monster.maxHealth = 3700
monster.race = "venom"
monster.corpse = 41267
monster.speed = 440
monster.manaCost = 0
monster.raceId = 2421

monster.outfit = {
    lookType = 1750,
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
    {name = "small ruby", chance = 15470, maxCount = 6},
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 130},
    {name = "platinum coin", chance = 58500, maxCount = 5},
    {name = "violet gem", chance = 1001},
    {id = 6299, chance = 3510},
    {name = "titan axe", chance = 1196},
    {name = "great mana potion", chance = 14950, maxCount = 3},
    {id = 281, chance = 2210},
    {name = "ultimate health potion", chance = 8125, maxCount = 3},
    {name = "spidris mandible", chance = 19448},
    {name = "compound eye", chance = 16250},
    {name = "calopteryx cape", chance = 481},
    {name = "carapace shield", chance = 936},
    {name = "hive scythe", chance = 897},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune R", chance = 4380},
    {name = "reflect energy rune", chance = 3960},
    {name = "evil boots", chance = 1080},
    {name = "helmet of eternal flames", chance = 1150},
    {name = "axe of mythical justice", chance = 440}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -298},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -310, range = 7, radius = 3, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
