local internalNpcName = "Captain Haba"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 98,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
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

	if MsgContains(message, "mission") then
		if player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) <= 1 then
			npcHandler:say("Ya wanna join the hunt fo' the sea serpent? Be warned ya may pay with ya life! Are ya in to it?", npc, creature)
			npcHandler:setTopic(playerId, 1)
		end
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 1 then
			npcHandler:say("A'right, we are here to resupply our stock of baits to catch the sea serpent. Your first task is to bring me 5 fish they are easy to catch. When you got them ask me for the bait again.", npc, creature)
			player:setStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba, 2)
			npcHandler:setTopic(playerId, 0)
		elseif npcHandler:getTopic(playerId) == 7 then
			npcHandler:say("Let's go fo' a hunt and bring the beast down!", npc, creature)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:teleportTo(Position(31947, 31045, 6), false)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			npcHandler:setTopic(playerId, 8)
		end
	elseif MsgContains(message, "bait") then
		if player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) == 2 then
			if player:removeItem(3578, 5) then
				npcHandler:say("Excellent, now bring me 5 northern pike.", npc, creature)
				player:setStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba, 3)
				npcHandler:setTopic(playerId, 3)
			end
		elseif player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) == 3 then
			if player:removeItem(3580, 5) then
				npcHandler:say("Excellent, now bring me 5 green perch.", npc, creature)
				player:setStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba, 4)
				npcHandler:setTopic(playerId, 4)
			end
		elseif player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) == 4 then
			if player:removeItem(7159, 5) then
				npcHandler:say("Excellent, now bring me 5 rainbow trout.", npc, creature)
				player:setStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba, 5)
				npcHandler:setTopic(playerId, 5)
			end
		elseif player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) == 5 then
			if player:removeItem(7158, 5) then
				npcHandler:say("Excellent, that should be enough fish to make the bait. Tell me when ya're ready fo' the hunt.", npc, creature)
				player:setStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba, 6)
				npcHandler:setTopic(playerId, 6)
			end
		end
	elseif MsgContains(message, "hunt") then
		if player:getStorageValue(Storage.TheHuntForTheSeaSerpent.CaptainHaba) == 6 then
			npcHandler:say("A'right, wanna put out to sea?", npc, creature)
			npcHandler:setTopic(playerId, 7)
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, "Harrr, landlubber wha'd ya want?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Bye.")

npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
