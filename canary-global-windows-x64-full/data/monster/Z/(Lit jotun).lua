local mType = Game.createMonsterType("(Lit jotun)")
local monster = {}

monster.description = "a lit jotun"
monster.experience = 580
monster.health = 650
monster.maxHealth = 650
monster.race = "blood"
monster.corpse = 41107
monster.speed = 278
monster.manaCost = 0
monster.raceId = 2357

monster.outfit = {
    lookType = 1686,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Giant",
    race = BESTY_RACE_GIANT,
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
    canPushCreatures = false,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 37038, maxCount = 112},
    {name = "clerical mace", chance = 1150},
    {name = "mystic turban", chance = 538},
    {name = "green mushroom", chance = 1638},
    {name = "shard", chance = 662},
    {name = "diamond sceptre", chance = 412},
    {id = 7441, chance = 12500},
    {name = "crystal sword", chance = 500},
    {name = "pair of earmuffs", chance = 112},
    {name = "strong mana potion", chance = 1025},
    {name = "glacier shoes", chance = 350},
    {name = "semi-perfect topaz", chance = 830},
    {name = "summon rune A", chance = 3650},
    {name = "ultimate fire rune", chance = 2580}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    	{name ="outfit", interval = 2000, chance = 1, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitItem = 7172},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -60, maxDamage = -130, length = 5, spread = 2, effect = CONST_ME_ICETORNADO, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -55, maxDamage = -115, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false, duration = 20000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 90, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
