local mType = Game.createMonsterType("(Mefisto)")
local monster = {}

monster.description = "a mefisto"
monster.experience = 50000
monster.health = 340000
monster.maxHealth = 340000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 510
monster.manaCost = 0
monster.raceId = 2576

monster.outfit = {
    lookType = 1905,
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
    Stars = 5,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 16206, chance = 100000},
    {id = 16163, chance = 11666},
    {id = 16161, chance = 10266},
    {id = 16175, chance = 7466},
    {id = 16160, chance = 9332},
    {id = 16164, chance = 8768},
    {id = 16155, chance = 3856},
    {id = 16162, chance = 3856},
    {name = "cobra mana potion", chance = 1250},
    {name = "Uliaarthar Doll", chance = 1280},
    {name = "special ultimate earth rune", chance = 2680},
    {name = "legendary warrior helmet", chance = 1020},
    {name = "pharaonic wand (Fire)", chance = 600},
    {name = "olimpic armor", chance = 1210},
    {name = "rod of RA", chance = 270}
}

monster.attacks = {
    	{name ="melee", interval = 3000, chance = 100, skill = 300, attack = 150},
    	-- energy damage
    	{name ="condition", type = CONDITION_ENERGY, interval = 1000, chance = 10, minDamage = -800, maxDamage = -800, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -1600, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="abyssador poison wave", interval = 1000, chance = 20, minDamage = -1000, maxDamage = -1800, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 15,
    	{name ="combat", interval = 1000, chance = 1, type = COMBAT_HEALING, minDamage = 0, maxDamage = 300000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 5000, chance = 30, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 25, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 15},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
