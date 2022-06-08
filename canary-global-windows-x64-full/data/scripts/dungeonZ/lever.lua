dofile('data/scripts/dungeonZ/multivers.lua')
local addGem = MoveEvent()
local storage =  64205 				--Action
local storageT =  64206 			--GlobalTime
local storageC =  64207 			--Globaltype
local auxTRI = 0
local auxEAS = 0
local auxMED = 0
local auxHAR = 0
local auxCHA = 0
local auxType = 0
local auxTEAM = 0
local dungeonBOSS = Position(1186, 1114, 7)


local function clearArea()
	local upConer = {x = 1106, y = 971, z = 7}       -- upLeftCorner
	local downConer = {x = 1229, y = 1148, z = 7}     -- downRightCorner

	for i=upConer.x, downConer.x do
		for j=upConer.y, downConer.y do
        	for k= upConer.z, downConer.z do
		        local room = {x=i, y=j, z=k}
				local tile = Tile(room)
				if tile then
					local creatures = tile:getCreatures()
					if creatures and #creatures > 0 then
						for _, c in pairs(creatures) do
							if isPlayer(c) then
								c:teleportTo({x = 1130, y = 961, z = 8})
							elseif isMonster(c) then
								c:remove()
							end
						end
					end
				end
			end
		end
	end
end

local function BuscarMoustro(dificult, team)	
	
	local salida = ""
	while( salida == "")
	do
	   local aux = math.random(1, #dungeonMON)
	   
	   --Normal
	   if dungeonMON[aux].team == team and dungeonMON[aux].dificult == dificult then
			salida = dungeonMON[aux].name
	   end
	   
	   
	   --2 Colores
	   if team == "VERDEROJO"  then
			if dungeonMON[aux].team == "VERDE" or dungeonMON[aux].team == "ROJO"  then
				if  dungeonMON[aux].dificult == dificult then
					salida = dungeonMON[aux].name
			   end
			end
	   end
	   
	   if team == "MORADOAMARILLO"  then
			if dungeonMON[aux].team == "MORADO" or dungeonMON[aux].team == "AMARILLO"  then
				if  dungeonMON[aux].dificult == dificult then
					salida = dungeonMON[aux].name
			   end
			end
	   end
	   
	   --Todos
	   if team == "ALL"  then
			if  dungeonMON[aux].dificult == dificult then
				salida = dungeonMON[aux].name
			end
	   end
	   
	end
	
	return salida
end


local function crearSpawn(position, tirv, easy, med, hard, chal, team)
		local auxmoustroname = ""
		if tirv > 0 then
			for i = 1, tirv do
				auxmoustroname = BuscarMoustro("Trivial", team)				
				Game.createMonster(auxmoustroname, position)
			end	
		end
		
		if easy > 0 then
			for i = 1, easy do
				auxmoustroname = BuscarMoustro("Easy", team)				
				Game.createMonster(auxmoustroname, position)
			end	
		end
		
		if med > 0 then
			for i = 1, med do
				auxmoustroname = BuscarMoustro("Medium", team)				
				Game.createMonster(auxmoustroname, position)
			end	
		end
		
		if hard > 0 then
			for i = 1, hard do
				auxmoustroname = BuscarMoustro("Hard", team)				
				Game.createMonster(auxmoustroname, position)
			end	
		end	
		
		if chal > 0 then
			for i = 1, chal do
				auxmoustroname = BuscarMoustro("Challenging", team)				
				Game.createMonster(auxmoustroname, position)
			end	
		end
		
		
		
	
	
end

function addGem.onAddItem(moveitem, tileitem, position)	
	
	--1 Validar GEMA
	local tile = dungeonGEM[moveitem.itemid]
	if not tile then
		position:sendMagicEffect(CONST_ME_POFF)
		return true
	end
	
	--2 Saber si cumple con regla de 15 min como minimo	
	if Game.getStorageValue(storageT) >= os.time() then
		position:sendMagicEffect(CONST_ME_POFF)
		return true
	end
	
	position:sendMagicEffect(CONST_ME_MORTAREA)
	Game.setStorageValue(storageT, os.time()+ 15 * 60)	
	Item(moveitem.uid):remove(1)
	
	--3 Sacar a todos los que esten adentro
	clearArea()
	
	
	-- Colocar moustros & Boss
	auxTRI = 0 auxEAS = 0 auxMED = 0 auxHAR = 0 auxCHA = 0
	auxTEAM = dungeonGEM[moveitem.itemid].team
	if(dungeonGEM[moveitem.itemid].dificult == "Easy") then 			auxTRI = 5 auxEAS = 3 auxMED = 0 auxHAR = 0 auxCHA = 0 auxType = 1  crearSpawn(dungeonBOSS, 2, 2, 1, 0, 0, auxTEAM)
	elseif (dungeonGEM[moveitem.itemid].dificult == "Medium") then 		auxTRI = 0 auxEAS = 5 auxMED = 3 auxHAR = 0 auxCHA = 0 auxType = 2	crearSpawn(dungeonBOSS, 0, 2, 2, 1, 0, auxTEAM)
	elseif (dungeonGEM[moveitem.itemid].dificult == "Hard") then 		auxTRI = 0 auxEAS = 0 auxMED = 5 auxHAR = 3 auxCHA = 0 auxType = 3	crearSpawn(dungeonBOSS, 0, 0, 2, 3, 0, auxTEAM)
	elseif (dungeonGEM[moveitem.itemid].dificult == "Challenging") then auxTRI = 0 auxEAS = 0 auxMED = 3 auxHAR = 5 auxCHA = 0 auxType = 4	crearSpawn(dungeonBOSS, 0, 0, 0, 0, 1, auxTEAM)
	end
	Game.setStorageValue(storageC, auxType)
	
	
	for i = 0, #dungeonRES do		
		crearSpawn(dungeonRES[i].position, auxTRI, auxEAS, auxMED, auxHAR, auxCHA, auxTEAM) 
	end
	
	
end

addGem:type("additem")
addGem:aid(64205)
addGem:register()
