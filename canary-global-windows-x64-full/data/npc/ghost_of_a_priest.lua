local internalNpcName = "Ghost Of A Priest"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 355
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

	if MsgContains(message, "mission") then
		if player:getStorageValue(Storage.WrathoftheEmperor.Questline) == 10 then
			if player:getPosition().z == 12 and player:getStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest01) < 1 and npcHandler:getTopic(playerId) ~= 1 then
				npcHandler:say({
					"Although we are willing to hand this item to you, there is something you have to understand: There is no such thing as 'the' sceptre. ...",
					"Those sceptres are created for special purposes each time anew. Therefore you will have to create one on your own. It will be your {mission} to find us three keepers and to get the three parts of the holy sceptre. ...",
					"Then go to the holy altar and create a new one."
				}, npc, creature)
				npcHandler:setTopic(playerId, 1)
			elseif npcHandler:getTopic(playerId) == 1 then
				npcHandler:say({
					"Even though we are spirits, we can't create anything out of thin air. You will have to donate some precious metal which we can drain for energy and substance. ...",
					"The equivalent of 5000 gold will do. Are you willing to make such a donation?"
				}, npc, creature)
				npcHandler:setTopic(playerId, 2)
			elseif player:getPosition().z == 13 and player:getStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest02) < 1 then
				npcHandler:say({
					"Even though we are spirits, we can't create anything out of thin air. You will have to donate some precious metal which we can drain for energy and substance. ...",
					"The equivalent of 5000 gold will do. Are you willing to make such a donation?"
				}, npc, creature)
				npcHandler:setTopic(playerId, 3)
			elseif player:getPosition().z == 14 and player:getStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest03) < 1 then
				npcHandler:say({
					"Even though we are spirits, we can't create anything out of thin air. You will have to donate some precious metal which we can drain for energy and substance. ...",
					"The equivalent of 5000 gold will do. Are you willing to make such a donation?"
				}, npc, creature)
				npcHandler:setTopic(playerId, 4)
			end
		end
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 2 then
			if player:getMoney() + player:getBankBalance() >= 5000 then
				player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest01, 1)
				player:removeMoneyBank(5000)
				player:addItem(11368, 1)
				npcHandler:say("So be it! Here is my part of the sceptre. Combine it with the other parts on the altar of the Great Snake in the depths of this temple.", npc, creature)
				npcHandler:setTopic(playerId, 0)
			end
		elseif npcHandler:getTopic(playerId) == 3 then
			if player:getMoney() + player:getBankBalance() >= 5000 then
				player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest02, 1)
				player:removeMoneyBank(5000)
				player:addItem(11369, 1)
				npcHandler:say("So be it! Here is my part of the sceptre. Combine it with the other parts on the altar of the Great Snake in the depths of this temple.", npc, creature)
				npcHandler:setTopic(playerId, 0)
			end
		elseif npcHandler:getTopic(playerId) == 4 then
			if player:getMoney() + player:getBankBalance() >= 5000 then
				player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest03, 1)
				player:removeMoneyBank(5000)
				player:addItem(11370, 1)
				npcHandler:say("So be it! Here is my part of the sceptre. Combine it with the other parts on the altar of the Great Snake in the depths of this temple.", npc, creature)
				npcHandler:setTopic(playerId, 0)
			end
		end
	elseif MsgContains(message, "no") and npcHandler:getTopic(playerId) then
		npcHandler:say("No deal then.", npc, creature)
		npcHandler:setTopic(playerId, 0)
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
