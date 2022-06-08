local internalNpcName = "Tothdral"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 65
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

npcHandler:addModule(FocusModule:new())

npcConfig.shop = {
	{ itemName = "black hood", clientId = 9645, sell = 190 },
	{ itemName = "book of necromantic rituals", clientId = 10320, sell = 180 },
	{ itemName = "book of prayers", clientId = 9646, sell = 120 },
	{ itemName = "broken key ring", clientId = 11652, sell = 8000 },
	{ itemName = "broken ring of ending", clientId = 12737, sell = 4000 },
	{ itemName = "cultish mask", clientId = 9638, sell = 280 },
	{ itemName = "cultish robe", clientId = 9639, sell = 150 },
	{ itemName = "cultish symbol", clientId = 11455, sell = 500 },
	{ itemName = "dark rosary", clientId = 10303, sell = 48 },
	{ itemName = "elvish talisman", clientId = 9635, sell = 45 },
	{ itemName = "flask of embalming fluid", clientId = 11466, sell = 30 },
	{ itemName = "strange symbol", clientId = 3058, sell = 200 },
	{ itemName = "unholy bone", clientId = 10316, sell = 480 },
	{ itemName = "witch broom", clientId = 9652, sell = 60 }
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

npcType:register(npcConfig)
