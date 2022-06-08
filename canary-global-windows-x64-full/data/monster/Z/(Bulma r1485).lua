local mType = Game.createMonsterType("(Bulma r1485)")
local monster = {}

monster.description = "a bulma r1485"
monster.experience = 1600
monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2300

monster.outfit = {
    lookType = 1629,
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
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "Gold Coin", chance = 100000, maxCount = 270},
    {name = "Platinum Coin", chance = 5468, maxCount = 3},
    {name = "Fox Paw", chance = 5468, maxCount = 3},
    {name = "Werefox Tail", chance = 5468, maxCount = 3},
    {name = "Strong Mana Potion", chance = 5468, maxCount = 3},
    {name = "Great Mana Potion", chance = 5468, maxCount = 3},
    {name = "Mana Potion", chance = 5468, maxCount = 3},
    {name = "Small Enchanted Emerald", chance = 5468, maxCount = 3},
    {name = "Emerald Bangle", chance = 5468, maxCount = 3},
    {name = "Moonlight Rod", chance = 675},
    {name = "Troll Green", chance = 675, maxCount = 3},
    {name = "Assassin Star", chance = 405, maxCount = 7},
    {name = "Platinum Amulet", chance = 176},
    {id = 3098, chance = 270},
    {name = "Werewolf Amulet", chance = 68},
    {id = 27706, chance = 40},
    {name = "semi-perfect amethyst", chance = 2590},
    {name = "charm cancel invisibility", chance = 710},
    {name = "meteoro fire rune", chance = 3260}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -200, shootEffect = CONST_ANI_GREENSTAR, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -225, range = 7, radius = 4, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -700, length = 5, spread = 3, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 40,
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 145, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 1},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 90},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
