local mType = Game.createMonsterType("(The man with the sack)")
local monster = {}

monster.description = "a the man with the sack"
monster.experience = 1200
monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2508

monster.outfit = {
    lookType = 1837,
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
    {id = 2815, chance = 100000},
    {id = 2949, chance = 18024},
    {name = "piggy bank", chance = 879},
    {id = 3003, chance = 24068},
    {name = "wedding ring", chance = 53961},
    {name = "gold coin", chance = 100000, maxCount = 1099},
    {name = "might ring", chance = 5165},
    {name = "two handed sword", chance = 16485},
    {name = "war hammer", chance = 9561},
    {name = "fire sword", chance = 6044},
    {name = "bow", chance = 100000},
    {name = "crown armor", chance = 5385},
    {name = "crown legs", chance = 7253},
    {name = "crown helmet", chance = 4946},
    {name = "crown shield", chance = 3077},
    {name = "arrow", chance = 100000, maxCount = 143},
    {name = "green tunic", chance = 87920},
    {name = "scarf", chance = 12199},
    {name = "meat", chance = 90118, maxCount = 33},
    {name = "grapes", chance = 100000},
    {name = "red rose", chance = 100000},
    {name = "red piece of cloth", chance = 22046},
    {name = "sniper arrow", chance = 100000, maxCount = 44},
    {name = "great health potion", chance = 7913},
    {name = "small notebook", chance = 10221},
    {name = "scroll of heroic deeds", chance = 54950},
    {name = "special meteoro ice rune", chance = 2770},
    {name = "summon rune XX", chance = 3260},
    {name = "special mana leach holy rune", chance = 3930}
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
