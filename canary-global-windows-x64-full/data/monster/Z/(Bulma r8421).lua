local mType = Game.createMonsterType("(Bulma r8421)")
local monster = {}

monster.description = "a bulma r8421"
monster.experience = 12034
monster.health = 18500
monster.maxHealth = 18500
monster.race = "undead"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2304

monster.outfit = {
    lookType = 1633,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "Platinum Coin", chance = 100000, maxCount = 38},
    {id = 28569, chance = 1215, maxCount = 11},
    {id = 28570, chance = 1215, maxCount = 9},
    {name = "Ultimate Health Potion", chance = 13500, maxCount = 9},
    {name = "Ultimate Mana Potion", chance = 13500, maxCount = 9},
    {name = "Energy Ball", chance = 1215, maxCount = 9},
    {id = 28566, chance = 1080, maxCount = 9},
    {name = "Lightning Pendant", chance = 675},
    {name = "Lightning Boots", chance = 675},
    {name = "Lightning Headband", chance = 675},
    {name = "Might Ring", chance = 675},
    {name = "Spellweaver's Robe", chance = 473},
    {name = "Wand of Defiance", chance = 473},
    {name = "Haunted Blade", chance = 742},
    {name = "Lightning Legs", chance = 473},
    {name = "bulma backpack", chance = 1170},
    {name = "great sapphire", chance = 2400},
    {name = "ultimate missile fire rune", chance = 4000},
    {name = "samurai boots", chance = 1280},
    {name = "corrupted demon axe", chance = 1300},
    {name = "ancestral esmeralda axe", chance = 790}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -505, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
    	{name ="combat", interval = 1500, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_STUN, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 100},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
