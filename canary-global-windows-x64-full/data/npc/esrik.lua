local internalNpcName = "Esrik"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 71
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.shop = {
	{ itemName = "Broken Slicer", clientId = 11661, sell = 120 },
	{ itemName = "Elite Draken Mail", clientId = 11651, sell = 50000 },
	{ itemName = "axe", clientId = 3274, sell = 7 },
	{ itemName = "battle axe", clientId = 3266, sell = 80 },
	{ itemName = "battle hammer", clientId = 3305, sell = 120 },
	{ itemName = "battle shield", clientId = 3305, sell = 95 },
	{ itemName = "bone shoulderplate", clientId = 10404, sell = 150 },
	{ itemName = "brass armor", clientId = 3359, sell = 150 },
	{ itemName = "brass helmet", clientId = 3354, sell = 30 },
	{ itemName = "brass legs", clientId = 3372, sell = 49 },
	{ itemName = "brass shield", clientId = 3411, sell = 25 },
	{ itemName = "broken draken mail", clientId = 11660, sell = 340 },
	{ itemName = "broken halberd", clientId = 10418, sell = 100 },
	{ itemName = "broken slicer", clientId = 11661, sell = 120 },
	{ itemName = "carlin sword", clientId = 3283, sell = 118 },
	{ itemName = "chain armor", clientId = 3358, sell = 70 },
	{ itemName = "chain helmet", clientId = 3352, sell = 17 },
	{ itemName = "chain legs", clientId = 3558, sell = 25 },
	{ itemName = "club", clientId = 3270, sell = 1 },
	{ itemName = "coat", clientId = 3562, sell = 1 },
	{ itemName = "crowbar", clientId = 3304, sell = 50 },
	{ itemName = "cursed shoulder spikes", clientId = 10410, sell = 320 },
	{ itemName = "dagger", clientId = 3267, sell = 2 },
	{ itemName = "doublet", clientId = 3379, sell = 3 },
	{ itemName = "drachaku", clientId = 10391, sell = 10000 },
	{ itemName = "draken boots", clientId = 4033, sell = 40000 },
	{ itemName = "draken wristbands", clientId = 11659, sell = 430 },
	{ itemName = "drakinata", clientId = 10388, sell = 10000 },
	{ itemName = "durable exercise axe", clientId = 35280, buy = 945000, count = 1800 },
	{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, count = 1800 },
	{ itemName = "durable exercise club", clientId = 35281, buy = 945000, count = 1800 },
	{ itemName = "durable exercise sword", clientId = 35279, buy = 945000, count = 1800 },
	{ itemName = "dwarven shield", clientId = 3425, sell = 100 },
	{ itemName = "elite draken mail", clientId = 11651, sell = 50000 },
	{ itemName = "exercise axe", clientId = 28553, buy = 262500, count = 500 },
	{ itemName = "exercise bow", clientId = 28555, buy = 262500, count = 500 },
	{ itemName = "exercise club", clientId = 28554, buy = 262500, count = 500 },
	{ itemName = "exercise sword", clientId = 28552, buy = 262500, count = 500 },
	{ itemName = "guardian boots", clientId = 10323, sell = 35000 },
	{ itemName = "hand axe", clientId = 3268, sell = 4 },
	{ itemName = "high guard's shoulderplates", clientId = 10416, sell = 130 },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise club", clientId = 35287, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 7560000, count = 14400 },
	{ itemName = "leather armor", clientId = 3361, sell = 12 },
	{ itemName = "leather boots", clientId = 3552, sell = 2 },
	{ itemName = "leather helmet", clientId = 3355, sell = 9 },
	{ itemName = "leather legs", clientId = 3559, sell = 9 },
	{ itemName = "lizard weapon rack kit", clientId = 10209, buy = 500 },
	{ itemName = "longsword", clientId = 3285, sell = 51 },
	{ itemName = "mace", clientId = 3286, sell = 30 },
	{ itemName = "morning star", clientId = 3282, sell = 100 },
	{ itemName = "plate armor", clientId = 3357, sell = 400 },
	{ itemName = "plate shield", clientId = 3410, sell = 45 },
	{ itemName = "rapier", clientId = 3272, sell = 5 },
	{ itemName = "sabre", clientId = 3273, sell = 12 },
	{ itemName = "sais", clientId = 10389, sell = 16500 },
	{ itemName = "scale armor", clientId = 3377, sell = 75 },
	{ itemName = "short sword", clientId = 3294, sell = 10 },
	{ itemName = "sickle", clientId = 3293, sell = 3 },
	{ itemName = "soldier helmet", clientId = 3375, sell = 16 },
	{ itemName = "spear", clientId = 3277, sell = 3 },
	{ itemName = "spike sword", clientId = 3271, sell = 240 },
	{ itemName = "spiked iron ball", clientId = 10408, sell = 100 },
	{ itemName = "steel helmet", clientId = 3351, sell = 293 },
	{ itemName = "steel shield", clientId = 3409, sell = 80 },
	{ itemName = "studded armor", clientId = 3378, sell = 25 },
	{ itemName = "studded helmet", clientId = 3376, sell = 20 },
	{ itemName = "studded legs", clientId = 3362, sell = 15 },
	{ itemName = "studded shield", clientId = 3426, sell = 16 },
	{ itemName = "swampling club", clientId = 17824, sell = 40 },
	{ itemName = "sword", clientId = 3264, sell = 25 },
	{ itemName = "throwing knife", clientId = 3298, buy = 25 },
	{ itemName = "twiceslicer", clientId = 11657, sell = 28000 },
	{ itemName = "twin hooks", clientId = 10392, sell = 500 },
	{ itemName = "two handed sword", clientId = 3265, sell = 450 },
	{ itemName = "wailing widow's necklace", clientId = 10412, sell = 3000 },
	{ itemName = "warmaster's wristguards", clientId = 10405, sell = 200 },
	{ itemName = "wooden shield", clientId = 3412, sell = 3 },
	{ itemName = "zaoan armor", clientId = 10384, sell = 14000 },
	{ itemName = "zaoan halberd", clientId = 10406, sell = 500 },
	{ itemName = "zaoan helmet", clientId = 10385, sell = 45000 },
	{ itemName = "zaoan legs", clientId = 10387, sell = 14000 },
	-- 3 tomes
	{itemName = "lizard weapon rack kit", clientId = 10209, buy = 500},
	-- 9 tomes
	{itemName = "bone shoulderplate", clientId = 10404, sell = 150},
	{itemName = "broken draken mail", clientId = 11660, sell = 340},
	{itemName = "broken halberd", clientId = 10418, sell = 100},
	{itemName = "Broken Slicer", clientId = 11661, sell = 120},
	{itemName = "cursed shoulder spikes", clientId = 10410, sell = 320},
	{itemName = "drachaku", clientId = 10391, sell = 10000},
	{itemName = "draken boots", clientId = 4033, sell = 40000},
	{itemName = "draken wristbands", clientId = 11659, sell = 430},
	{itemName = "drakinata", clientId = 10388, sell = 10000},
	{itemName = "Elite Draken Mail", clientId = 11651, sell = 50000},
	{itemName = "guardian boots", clientId = 10323, sell = 35000},
	{itemName = "high guard's shoulderplates", clientId = 10416, sell = 130},
	{itemName = "sais", clientId = 10389, sell = 16500},
	{itemName = "spiked iron ball", clientId = 10408, sell = 100},
	{itemName = "twiceslicer", clientId = 11657, sell = 28000},
	{itemName = "twin hooks", clientId = 10392, buy = 1100, sell = 500},
	{itemName = "wailing widow's necklace", clientId = 10412, sell = 3000},
	{itemName = "warmaster's wristguards", clientId = 10405, sell = 200},
	{itemName = "zaoan armor", clientId = 10384, sell = 14000},
	{itemName = "zaoan halberd", clientId = 10406, buy = 1200, sell = 500},
	{itemName = "zaoan helmet", clientId = 10385, sell = 45000},
	{itemName = "zaoan legs", clientId = 10387, sell = 14000},
	{itemName = "zaoan shoes", clientId = 10386, sell = 5000},
	{itemName = "zaoan sword", clientId = 10390, sell = 30000},
	{itemName = "zaogun's shoulderplates", clientId = 10414, sell = 150}
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello, |PLAYERNAME| and welcome to my little forge.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Bye.')

npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
