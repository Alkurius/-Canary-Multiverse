local mType = Game.createMonsterType("(Rainbow jelly)")
local monster = {}

monster.description = "a rainbow jelly"
monster.experience = 5900
monster.health = 8500
monster.maxHealth = 8500
monster.race = "venom"
monster.corpse = 41747
monster.speed = 290
monster.manaCost = 0
monster.raceId = 2351

monster.outfit = {
    lookType = 1680,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Slime",
    race = BESTY_RACE_SLIME,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "ML fire backpack", chance = 1060},
    {name = "fine ruby", chance = 1610},
    {name = "ultimate fire rune", chance = 2580},
    {name = "lava legs", chance = 870},
    {name = "mythical crown shield", chance = 1560},
    {name = "Medusa armor", chance = 440}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -473, condition = {type = CONDITION_POISON, totalDamage = 450, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -200, range = 7, shootEffect = CONST_ANI_POISON, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -390, radius = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -220, maxDamage = -270, radius = 3, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
    	defense = 0,
    	armor = 48,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 250, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="outfit", interval = 5000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 6000, outfitMonster = "rat"},
    	{name ="outfit", interval = 5000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 6000, outfitMonster = "larva"},
    	{name ="outfit", interval = 5000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 6000, outfitMonster = "scorpion"},
    	{name ="outfit", interval = 5000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 6000, outfitMonster = "slime"}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
