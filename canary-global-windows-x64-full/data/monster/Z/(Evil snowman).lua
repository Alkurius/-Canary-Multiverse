local mType = Game.createMonsterType("(Evil snowman)")
local monster = {}

monster.description = "a evil snowman"
monster.experience = 862
monster.health = 805
monster.maxHealth = 805
monster.race = "blood"
monster.corpse = 41744
monster.speed = 242
monster.manaCost = 0
monster.raceId = 2779

monster.outfit = {
    lookType = 2108,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 169},
    {name = "necrotic rod", chance = 3900},
    {name = "boots of haste", chance = 273},
    {name = "skull staff", chance = 169},
    {name = "mystic turban", chance = 1027},
    {name = "white piece of cloth", chance = 1092},
    {name = "red piece of cloth", chance = 650},
    {name = "noble axe", chance = 13},
    {name = "strong mana potion", chance = 7267},
    {name = "spellbook of enlightenment", chance = 1027},
    {name = "book of necromantic rituals", chance = 12142},
    {name = "charm fire aura", chance = 1780},
    {name = "tornado earth rune", chance = 4360}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -158, condition = {type = CONDITION_POISON, totalDamage = 80, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -100, radius = 4, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -600, radius = 4, effect = CONST_ME_BLOCKHIT, target = true, duration = 15000},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 15, minDamage = -120, maxDamage = -160, radius = 6, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 70, maxDamage = 90, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="effect", interval = 2000, chance = 10, radius = 1, effect = CONST_ME_INSECTS, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
