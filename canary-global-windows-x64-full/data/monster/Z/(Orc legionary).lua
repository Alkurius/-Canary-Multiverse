local mType = Game.createMonsterType("(Orc legionary)")
local monster = {}

monster.description = "a orc legionary"
monster.experience = 1280
monster.health = 1600
monster.maxHealth = 1600
monster.race = "undead"
monster.corpse = 41744
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2566

monster.outfit = {
    lookType = 1895,
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
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 70400, maxCount = 160},
    {name = "gold coin", chance = 80800, maxCount = 77},
    {id = 3049, chance = 48},
    {name = "protection amulet", chance = 3520},
    {name = "two handed sword", chance = 3040},
    {name = "throwing star", chance = 25120, maxCount = 29},
    {id = 3307, chance = 18048},
    {name = "knight axe", chance = 448},
    {name = "plate armor", chance = 2720},
    {name = "brass armor", chance = 7520},
    {name = "brass legs", chance = 8800},
    {name = "dark helmet", chance = 2336},
    {name = "crusader helmet", chance = 160},
    {name = "plate legs", chance = 3910},
    {name = "hunting spear", chance = 6720},
    {name = "flask of warrior's sweat", chance = 336},
    {name = "health potion", chance = 560},
    {name = "belted cape", chance = 8000},
    {name = "broken gladiator shield", chance = 8320},
    {name = "ultimate missile energy rune", chance = 4060},
    {name = "life leach death rune", chance = 3040},
    {name = "special ultimate energy rune", chance = 4250}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -135, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
