local mType = Game.createMonsterType("(Ecuadorian)")
local monster = {}

monster.description = "a ecuadorian"
monster.experience = 1680
monster.health = 1960
monster.maxHealth = 1960
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2445

monster.outfit = {
    lookType = 1774,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
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
    {id = 2815, chance = 58500},
    {id = 2949, chance = 2132},
    {name = "piggy bank", chance = 104},
    {id = 3003, chance = 2847},
    {name = "wedding ring", chance = 6383},
    {name = "gold coin", chance = 77350, maxCount = 130},
    {name = "might ring", chance = 611},
    {name = "two handed sword", chance = 1950},
    {name = "war hammer", chance = 1131},
    {name = "fire sword", chance = 715},
    {name = "bow", chance = 17290},
    {name = "crown armor", chance = 637},
    {name = "crown legs", chance = 858},
    {name = "crown helmet", chance = 585},
    {name = "crown shield", chance = 364},
    {name = "arrow", chance = 33800, maxCount = 17},
    {name = "green tunic", chance = 10400},
    {name = "scarf", chance = 1443},
    {name = "meat", chance = 10660, maxCount = 4},
    {name = "grapes", chance = 25805},
    {name = "red rose", chance = 26585},
    {name = "red piece of cloth", chance = 2608},
    {name = "sniper arrow", chance = 14820, maxCount = 5},
    {name = "great health potion", chance = 936},
    {name = "small notebook", chance = 1209},
    {name = "scroll of heroic deeds", chance = 6500},
    {name = "ultimate death rune", chance = 4130},
    {name = "summon rune V", chance = 3320},
    {name = "atonement rune", chance = 3040}
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
