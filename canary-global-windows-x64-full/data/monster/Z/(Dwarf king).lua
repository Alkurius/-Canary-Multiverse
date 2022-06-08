local mType = Game.createMonsterType("(Dwarf king)")
local monster = {}

monster.description = "a dwarf king"
monster.experience = 2700
monster.health = 3800
monster.maxHealth = 3800
monster.race = "blood"
monster.corpse = 41747
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2548

monster.outfit = {
    lookType = 1877,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 62500, maxCount = 124},
    {name = "gold coin", chance = 62500, maxCount = 62},
    {name = "small emerald", chance = 12862, maxCount = 2},
    {name = "small amethyst", chance = 13350, maxCount = 2},
    {name = "platinum coin", chance = 100000, maxCount = 8},
    {id = 3092, chance = 1938},
    {name = "war hammer", chance = 6312},
    {name = "warrior helmet", chance = 725},
    {name = "guardian shield", chance = 2875},
    {name = "tower shield", chance = 238},
    {name = "ancient shield", chance = 4612},
    {name = "brown mushroom", chance = 18938, maxCount = 2},
    {name = "iron ore", chance = 13838},
    {name = "titan axe", chance = 1462},
    {name = "sapphire hammer", chance = 100},
    {name = "spiked squelcher", chance = 100},
    {name = "glorious axe", chance = 2425},
    {name = "great mana potion", chance = 8325, maxCount = 2},
    {name = "great health potion", chance = 9950},
    {name = "shiny stone", chance = 5825},
    {id = 12600, chance = 975},
    {name = "green crystal shard", chance = 2188},
    {name = "green crystal splinter", chance = 3888},
    {name = "brown crystal splinter", chance = 7038, maxCount = 2},
    {name = "red crystal fragment", chance = 4612},
    {name = "drill bolt", chance = 4612, maxCount = 6},
    {name = "mana redbull", chance = 1990},
    {name = "ultimate missile death rune", chance = 3470},
    {name = "special tornado energy rune", chance = 3720},
    {name = "lost demon helmet", chance = 350},
    {name = "general dwarf armor", chance = 1270},
    {name = "general dwarf legs", chance = 1450},
    {name = "general dwarf club", chance = 1390},
    {name = "royal dwarf helmet", chance = 730},
    {name = "royal dwarf shield", chance = 470},
    {name = "royal dwarf club", chance = 1120},
    {name = "dwarf volcano helmet", chance = 1570},
    {name = "dwarf volcano legs", chance = 1190},
    {name = "dwarf volcano bow", chance = 1940}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -501},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -340, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -250, range = 7, radius = 3, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="drunk", interval = 2000, chance = 20, radius = 5, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000},
    	{name ="enslaved dwarf skill reducer 1", interval = 2000, chance = 5, target = false},
    	{name ="enslaved dwarf skill reducer 2", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 396, maxDamage = 478, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 1},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
