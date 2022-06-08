local mType = Game.createMonsterType("(Orc knight)")
local monster = {}

monster.description = "a orc knight"
monster.experience = 1920
monster.health = 2240
monster.maxHealth = 2240
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2832

monster.outfit = {
    lookType = 2161,
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
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 2815, chance = 72000},
    {id = 2949, chance = 2624},
    {name = "piggy bank", chance = 128},
    {id = 3003, chance = 3504},
    {name = "wedding ring", chance = 7856},
    {name = "gold coin", chance = 95200, maxCount = 160},
    {name = "might ring", chance = 752},
    {name = "two handed sword", chance = 2400},
    {name = "war hammer", chance = 1392},
    {name = "fire sword", chance = 880},
    {name = "bow", chance = 21280},
    {name = "crown armor", chance = 784},
    {name = "crown legs", chance = 1056},
    {name = "crown helmet", chance = 720},
    {name = "crown shield", chance = 448},
    {name = "arrow", chance = 41600, maxCount = 21},
    {name = "green tunic", chance = 12800},
    {name = "scarf", chance = 1776},
    {name = "meat", chance = 13120, maxCount = 5},
    {name = "grapes", chance = 31760},
    {name = "red rose", chance = 32720},
    {name = "red piece of cloth", chance = 3210},
    {name = "sniper arrow", chance = 18240, maxCount = 6},
    {name = "great health potion", chance = 1152},
    {name = "small notebook", chance = 1488},
    {name = "scroll of heroic deeds", chance = 8000},
    {name = "charm ice aura", chance = 1130},
    {name = "reflect earth rune", chance = 3130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -120, range = 7, shootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 40},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
