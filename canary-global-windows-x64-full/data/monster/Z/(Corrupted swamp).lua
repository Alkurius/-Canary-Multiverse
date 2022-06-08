local mType = Game.createMonsterType("(Corrupted swamp)")
local monster = {}

monster.description = "a corrupted swamp"
monster.experience = 5500
monster.health = 7500
monster.maxHealth = 7500
monster.race = "venom"
monster.corpse = 41365
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2469

monster.outfit = {
    lookType = 1798,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small ruby", chance = 21600, maxCount = 3},
    {name = "gold coin", chance = 54000, maxCount = 135},
    {name = "gold coin", chance = 78300, maxCount = 132},
    {name = "platinum coin", chance = 100000, maxCount = 8},
    {name = "steel boots", chance = 742},
    {name = "great mana potion", chance = 24300},
    {id = 281, chance = 8100},
    {name = "ultimate health potion", chance = 16200},
    {name = "gold ingot", chance = 39150},
    {name = "kollos shell", chance = 37800},
    {name = "compound eye", chance = 21600},
    {name = "calopteryx cape", chance = 1120},
    {name = "carapace shield", chance = 1242},
    {name = "hive scythe", chance = 2228},
    {name = "gooey mass", chance = 17550, maxCount = 3},
    {name = "hive bow", chance = 1120},
    {name = "life fuild from another multiverse", chance = 810},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "heaven boots", chance = 1660},
    {name = "hammer of eternal flames", chance = -20},
    {name = "full warrior double axe", chance = 90}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -80, radius = 4, effect = CONST_ME_POISONAREA, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -600, maxDamage = -1000, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 500, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 70},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
