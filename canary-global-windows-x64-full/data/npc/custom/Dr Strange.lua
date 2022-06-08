dofile('data/npc/custom/multivers.lua')

local internalNpcName = "Dr Strange"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}
local playerSayCiudad = ""	
local playerSectorID = ""
local tigerr = 0
local disteffect = CONST_ANI_FIRE

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1871,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{text = 'Requires volunteers to stop the monsters of the multiverse.'}
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



local function Aura(cid)	
		
	local player = Player(cid)
	if player ~= nil then	
		if tigerr < 5 then			
			local pos = player:getPosition()
			Position(pos.x+2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y-1, pos.z), disteffect)
			Position(pos.x+2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y-2, pos.z), disteffect)
			Position(pos.x+1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y-2, pos.z), disteffect)
			Position(pos.x-1, pos.y-2, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y-1, pos.z), disteffect)
			Position(pos.x-2, pos.y-1, pos.z):sendDistanceEffect(Position(pos.x-2, pos.y+1, pos.z), disteffect)
			Position(pos.x-2, pos.y+1, pos.z):sendDistanceEffect(Position(pos.x-1, pos.y+2, pos.z), disteffect)
			Position(pos.x-1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+1, pos.y+2, pos.z), disteffect)
			Position(pos.x+1, pos.y+2, pos.z):sendDistanceEffect(Position(pos.x+2, pos.y+1, pos.z), disteffect)		
							
			tigerr = tigerr +1
			addEvent(Aura, 200, player.uid)	
		else
			
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:teleportTo(destination[playerSectorID].position)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)			
		end
	end
	
end




local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()
		
	
	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, 'noob') then
			npcHandler:say('Chupas', npc, creature)
	end	
	
	if  MsgContains(message, "help") then			
	    npcHandler:say({
						"The land of tibia is very extensive and the help i need is too many ... do you want to help in?...",
						"{Ab'Dendriel}, {Ankrahmun}, {Carlin}, {Darashia}, {Edron}, {Farmine}, {Feyrist}, {Gnomes}, {Goroma}, {Gray Island}, {Issavi}, {Kazordoon}, {Krailos}, {Liberty Bay}, {Oramond}, {Port Hope}, {Roshamuul}, {Svargrond}, {Thais}, {Venore} or {Yalahar}?"
					}, npc, creature)
	    npcHandler:setTopic(playerId, 2)
	
	
	elseif(npcHandler:getTopic(playerId) == 2) then
			
		if MsgContains(message, "Ab'Dendriel") then playerSayCiudad = "Ab'Dendriel"
		elseif MsgContains(message, "Ankrahmun") then playerSayCiudad = "Ankrahmun" 
		elseif MsgContains(message, "Carlin") then playerSayCiudad = "Carlin" 
		elseif MsgContains(message, "Darashia") then playerSayCiudad = "Darashia" 
		elseif MsgContains(message, "Edron") then playerSayCiudad = "Edron" 
		elseif MsgContains(message, "Farmine") then playerSayCiudad = "Farmine" 
		elseif MsgContains(message, "Feyrist") then playerSayCiudad = "Feyrist" 
		elseif MsgContains(message, "Gnomes") then playerSayCiudad = "Gnomes" 
		elseif MsgContains(message, "Goroma") then playerSayCiudad = "Goroma"
		elseif MsgContains(message, "Gray Island") then playerSayCiudad = "Gray Island" 
		elseif MsgContains(message, "Issavi") then playerSayCiudad = "Issavi" 
		elseif MsgContains(message, "Kazordoon") then playerSayCiudad = "Kazordoon" 
		elseif MsgContains(message, "Krailos") then playerSayCiudad = "Krailos" 
		elseif MsgContains(message, "Liberty Bay") then playerSayCiudad = "Liberty Bay" 
		elseif MsgContains(message, "Oramond") then playerSayCiudad = "Oramond" 
		elseif MsgContains(message, "Port Hope") then playerSayCiudad = "Port Hope" 
		elseif MsgContains(message, "Roshamuul") then playerSayCiudad = "Roshamuul" 
		elseif MsgContains(message, "Svargrond") then playerSayCiudad = "Svargrond" 
		elseif MsgContains(message, "Thais") then playerSayCiudad = "Thais" 
		elseif MsgContains(message, "Venore") then playerSayCiudad = "Venore" 
		elseif MsgContains(message, "Yalahar") then playerSayCiudad = "Yalahar" end
		
		
		
		if playerSayCiudad == "" then
			npcHandler:say({
						"I never heard about that place...What do you want to talk about? ", 
						"{Ab'Dendriel}, {Ankrahmun}, {Carlin}, {Darashia}, {Edron}, {Farmine}, {Feyrist}, {Gnomes}, {Goroma}, {Gray Island}, {Issavi}, {Kazordoon}, {Krailos}, {Liberty Bay}, {Oramond}, {Port Hope}, {Roshamuul}, {Svargrond}, {Thais}, {Venore} or {Yalahar}?"
					}, npc, creature)			
		else
			ShowModal(player, playerSayCiudad)		
			npcHandler:setTopic(playerId, 4)				
		end
		
	elseif  npcHandler:getTopic(playerId) == 3 then			
		playerSectorID = -1
		for i = 0, #destination do
			if destination[i].clave:lower() == message:lower() then
				playerSectorID = i
			end
		end
		
		if playerSectorID == -1 then
			npcHandler:say({"I never heard about that place... "}, npc, creature)			
		else
			npcHandler:say({'Do you want to go to ' .. destination[playerSectorID].description .. '? {correct}?'}, npc, creature)
			npcHandler:setTopic(playerId, 4)		
		end
		
		
		
	elseif  MsgContains(message, "sector") then			
		npcHandler:say({'Tell me the sector you want to go. ej. {A02}'}, npc, creature)
		npcHandler:setTopic(playerId, 3)
	

    elseif	MsgContains(message, "correct") then		
		if npcHandler:getTopic(playerId) == 4 then
			tigerr = 0
			Aura(player)			
		end
	end


	
	
	return true
end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = "I protect your reality."})

npcHandler:setMessage(MESSAGE_GREET, "Welcome |PLAYERNAME|! {help} me to stop the monsters of the multiverse... or just tell me the {sector} you want to go... don't call me {noob}..")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye and come again, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye and come again.")


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcType:register(npcConfig)
