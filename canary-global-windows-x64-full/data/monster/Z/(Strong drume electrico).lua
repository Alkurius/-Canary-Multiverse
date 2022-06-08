local mType = Game.createMonsterType("(Strong drume electrico)")
local monster = {}

monster.description = "a strong drume electrico"
monster.experience = 4000
monster.health = 5000
monster.maxHealth = 5000
monster.race = "venom"
monster.corpse = 41747
monster.speed = 444
monster.manaCost = 0
monster.raceId = 2707

monster.outfit = {
    lookType = 2036,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    {name = "small ruby", chance = 31428, maxCount = 7},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "platinum coin", chance = 60750, maxCount = 8},
    {name = "violet gem", chance = 1512},
    {id = 6299, chance = 6048},
    {name = "titan axe", chance = 1944},
    {name = "great mana potion", chance = 27540, maxCount = 3},
    {id = 281, chance = 4104},
    {name = "ultimate health potion", chance = 12488, maxCount = 3},
    {name = "spidris mandible", chance = 37044},
    {name = "compound eye", chance = 17834},
    {name = "calopteryx cape", chance = 1728},
    {name = "carapace shield", chance = 1580},
    {name = "hive scythe", chance = 1877},
    {name = "complete topaz", chance = 760},
    {name = "mana leach ice rune", chance = 2490},
    {name = "plague robe", chance = 870},
    {name = "nightmare legs", chance = 560},
    {name = "decay shield", chance = 1380},
    {name = "exp boost x 10", chance = 2200}
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
