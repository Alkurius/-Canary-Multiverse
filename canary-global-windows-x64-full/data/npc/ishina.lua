local internalNpcName = "Ishina"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 150,
	lookHead = 95,
	lookBody = 9,
	lookLegs = 87,
	lookFeet = 95,
	lookAddons = 0
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end


	if MsgContains(message, 'outfit') then
		if player:getSex() == PLAYERSEX_MALE then
			npcHandler:say('My jewelled belt? <giggles> That\'s not very manly. Maybe you\'d prefer a scimitar like Habdel has.', npc, creature)
			return true
		end

		if player:getStorageValue(Storage.OutfitQuest.firstOrientalAddon) < 1 then
			npcHandler:say('My jewelled belt? Of course I could make one for you, but I have a small request. Would you fulfil a task for me?', npc, creature)
			npcHandler:setTopic(playerId, 1)
		end
	elseif MsgContains(message, 'comb') then
		if player:getSex() == PLAYERSEX_MALE then
			npcHandler:say('Comb? This is a jewellery shop.', npc, creature)
			return true
		end

		if player:getStorageValue(Storage.OutfitQuest.firstOrientalAddon) == 1 then
			npcHandler:say('Have you brought me a mermaid\'s comb?', npc, creature)
			npcHandler:setTopic(playerId, 3)
		end
	elseif MsgContains(message, 'yes') then
		if npcHandler:getTopic(playerId) == 1 then
			npcHandler:say({
				'Listen, um... I have been wanting a comb for a long time... not just any comb, but a mermaid\'s comb. Having a mermaid\'s comb means never having split ends again! ...',
				'You know what that means to a girl! Could you please bring me such a comb? I really would appreciate it.'
			}, npc, creature)
			npcHandler:setTopic(playerId, 2)
		elseif npcHandler:getTopic(playerId) == 2 then
			player:setStorageValue(Storage.OutfitQuest.DefaultStart, 1)
			player:setStorageValue(Storage.OutfitQuest.firstOrientalAddon, 1)
			npcHandler:say('Yay! I will wait for you to return with a mermaid\'s comb then.', npc, creature)
			npcHandler:setTopic(playerId, 0)
		elseif npcHandler:getTopic(playerId) == 3 then
			if not player:removeItem(5945, 1) then
				npcHandler:say('No... that\'s not it.', npc, creature)
				npcHandler:setTopic(playerId, 0)
				return true
			end

			player:setStorageValue(Storage.OutfitQuest.firstOrientalAddon, 2)
			player:addOutfitAddon(150, 1)
			player:addOutfitAddon(146, 1)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			npcHandler:say('Yeah! That\'s it! I can\'t wait to comb my hair! Oh - but first, I\'ll fulfil my promise: Here is your jewelled belt! Thanks again!', npc, creature)
			npcHandler:setTopic(playerId, 0)
		end
	elseif MsgContains(message, 'no') and npcHandler:getTopic(playerId) ~= 0 then
		npcHandler:say('Oh... okay.', npc, creature)
		npcHandler:setTopic(playerId, 0)
	end

	return true
end

keywordHandler:addKeyword({'need'}, StdModule.say, {npcHandler = npcHandler, text = 'I am a jeweller. Maybe you want to have a look at my wonderful {offers}.'})
keywordHandler:addKeyword({'offers'}, StdModule.say, {npcHandler = npcHandler, text = 'Well, I sell gems and {goblets}. If you\'d like to see my offers, ask me for a {trade}.'})
keywordHandler:addKeyword({'goblets'}, StdModule.say, {npcHandler = npcHandler, text = 'Ah, our newest import! We have golden goblets, silver goblets and bronze goblets. All of them have space for a hand-written dedication.'})

npcHandler:setMessage(MESSAGE_GREET, 'Be greeted, |PLAYERNAME|. Which of my fine gems do you {need}?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Daraman\'s blessings and good bye.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Daraman\'s blessings and good bye.')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcConfig.shop = {
	{ itemName = "amber", clientId = 32626, sell = 20000 },
	{ itemName = "amber with a bug", clientId = 32624, sell = 41000 },
	{ itemName = "amber with a dragonfly", clientId = 32625, sell = 56000 },
	{ itemName = "ancient coin", clientId = 24390, sell = 350 },
	{ itemName = "black pearl", clientId = 3027, buy = 560, sell = 280 },
	{ itemName = "blue crystal shard", clientId = 16119, sell = 1500 },
	{ itemName = "blue crystal splinter", clientId = 16124, sell = 400 },
	{ itemName = "bronze goblet", clientId = 5807, buy = 2000 },
	{ itemName = "brown crystal splinter", clientId = 16123, sell = 400 },
	{ itemName = "brown giant shimmering pearl", clientId = 282, sell = 3000 },
	{ itemName = "coral brooch", clientId = 24391, sell = 750 },
	{ itemName = "crunor idol", clientId = 30055, sell = 30000 },
	{ itemName = "cyan crystal fragment", clientId = 16125, sell = 800 },
	{ itemName = "dragon figurine", clientId = 30053, sell = 45000 },
	{ itemName = "gemmed figurine", clientId = 24392, sell = 3500 },
	{ itemName = "giant amethyst", clientId = 30061, sell = 60000 },
	{ itemName = "giant emerald", clientId = 30060, sell = 90000 },
	{ itemName = "giant ruby", clientId = 30059, sell = 70000 },
	{ itemName = "giant sapphire", clientId = 30061, sell = 50000 },
	{ itemName = "giant topaz", clientId = 32623, sell = 80000 },
	{ itemName = "gold ingot", clientId = 9058, sell = 5000 },
	{ itemName = "gold nugget", clientId = 3040, sell = 850 },
	{ itemName = "golden amulet", clientId = 3013, buy = 6600 },
	{ itemName = "golden goblet", clientId = 5805, buy = 5000 },
	{ itemName = "green crystal fragment", clientId = 16127, sell = 800 },
	{ itemName = "green crystal shard", clientId = 16121, sell = 1500 },
	{ itemName = "green crystal splinter", clientId = 16122, sell = 400 },
	{ itemName = "green giant shimmering pearl", clientId = 281, sell = 3000 },
	{ itemName = "lion figurine", clientId = 33781, sell = 10000 },
	{ itemName = "onyx chip", clientId = 22193, sell = 400 },
	{ itemName = "opal", clientId = 22194, sell = 500 },
	{ itemName = "ornate locket", clientId = 30056, sell = 18000 },
	{ itemName = "prismatic quartz", clientId = 24962, sell = 450 },
	{ itemName = "red crystal fragment", clientId = 16126, sell = 800 },
	{ itemName = "ruby necklace", clientId = 3016, buy = 3560 },
	{ itemName = "silver goblet", clientId = 5806, buy = 3000 },
	{ itemName = "skull coin", clientId = 32583, sell = 12000 },
	{ itemName = "small amethyst", clientId = 3033, buy = 400, sell = 200 },
	{ itemName = "small diamond", clientId = 3028, buy = 600, sell = 300 },
	{ itemName = "small emerald", clientId = 3032, buy = 500, sell = 250 },
	{ itemName = "small enchanted amethyst", clientId = 678, sell = 200 },
	{ itemName = "small enchanted emerald", clientId = 677, sell = 250 },
	{ itemName = "small enchanted ruby", clientId = 676, sell = 250 },
	{ itemName = "small enchanted sapphire", clientId = 675, sell = 250 },
	{ itemName = "small ruby", clientId = 3030, buy = 500, sell = 250 },
	{ itemName = "small sapphire", clientId = 3029, buy = 500, sell = 250 },
	{ itemName = "small topaz", clientId = 9057, sell = 200 },
	{ itemName = "tiger eye", clientId = 24961, sell = 350 },
	{ itemName = "unicorn figurine", clientId = 30054, sell = 50000 },
	{ itemName = "violet crystal shard", clientId = 16120, sell = 1500 },
	{ itemName = "white silk flower", clientId = 34008, sell = 9000 },
	{ itemName = "wedding ring", clientId = 3004, buy = 990 },
	{ itemName = "white pearl", clientId = 3026, buy = 320 }
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
