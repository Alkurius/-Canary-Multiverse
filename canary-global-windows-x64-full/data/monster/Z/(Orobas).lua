local mType = Game.createMonsterType("(Orobas)")
local monster = {}

monster.description = "a orobas"
monster.experience = 500
monster.health = 700
monster.maxHealth = 700
monster.race = "undead"
monster.corpse = 41562
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2369

monster.outfit = {
    lookType = 1698,
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
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3007, chance = 1236},
    {name = "gold coin", chance = 60000, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 12},
    {name = "platinum amulet", chance = 145},
    {name = "boots of haste", chance = 145},
    {name = "protection amulet", chance = 1016},
    {name = "shadow herb", chance = 5713},
    {name = "haunted blade", chance = 382},
    {name = "chaos mace", chance = 145},
    {name = "strong mana potion", chance = 1934},
    {name = "spirit cloak", chance = 624},
    {name = "crystal of balance", chance = 152},
    {name = "semi-perfect diamond", chance = 2500},
    {name = "summon rune L", chance = 3320},
    {name = "meteoro energy rune", chance = 3060}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90, condition = {type = CONDITION_POISON, totalDamage = 80, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -60, maxDamage = -170, range = 7, effect = CONST_ME_HOLYAREA, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, effect = CONST_ME_SLEEP, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 240, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_YELLOW_RINGS},
    	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "nightstalker"},
    	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "werewolf"},
    	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "the count ="},
    	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "grim reaper"},
    	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "tarantula"},
    	{name ="outfit", interval = 5000, chance = 1, target = false, duration = 4000, outfitMonster = "ferumbras"}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
