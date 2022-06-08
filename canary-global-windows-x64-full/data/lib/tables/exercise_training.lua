ExerciseWeaponsTable = {
	-- MELE
	[28540] = { skill = SKILL_SWORD, extraExP = 56 },
	[28552] = { skill = SKILL_SWORD, extraExP = 56 },
	[35279] = { skill = SKILL_SWORD, extraExP = 445 },
	[35285] = { skill = SKILL_SWORD, extraExP = 1667 },
	[28553] = { skill = SKILL_AXE, extraExP = 56 },
	[28541] = { skill = SKILL_AXE, extraExP = 56 },
	[35280] = { skill = SKILL_AXE, extraExP = 445 },
	[35286] = { skill = SKILL_AXE, extraExP = 1667 },
	[28554] = { skill = SKILL_CLUB, extraExP = 56 },
	[28542] = { skill = SKILL_CLUB, extraExP = 56 },
	[35281] = { skill = SKILL_CLUB, extraExP = 445 },
	[35287] = { skill = SKILL_CLUB, extraExP = 1667 },
	-- ROD
	[28544] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true, extraExP = 56 },
	[28556] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true, extraExP = 56 },
	[35283] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true, extraExP = 445 },
	[35289] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true, extraExP = 1667 },
	-- RANGE
	[28543] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true, extraExP = 56 },
	[28555] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true, extraExP = 56 },
	[35282] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true, extraExP = 445 },
	[35288] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true, extraExP = 1667 },
	-- WAND
	[28545] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true, extraExP = 56 },
	[28557] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true, extraExP = 56 },
	[35284] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true, extraExP = 445 },
	[35290] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true, extraExP = 1667 }
}

FreeDummies = {28558, 28565}
MaxAllowedOnADummy = configManager.getNumber(configKeys.MAX_ALLOWED_ON_A_DUMMY)
HouseDummies = {28559, 28560, 28561, 28562, 28563, 28564}

local magicLevelRate = configManager.getNumber(configKeys.RATE_MAGIC)
local skillLevelRate = configManager.getNumber(configKeys.RATE_SKILL)

function LeaveTraining(playerId)
	if onExerciseTraining[playerId] then
		stopEvent(onExerciseTraining[playerId].event)
		onExerciseTraining[playerId] = nil
	end

	local player = Player(playerId)
	if player then
		player:setTraining(false)
	end
	return
end

function ExerciseEvent(playerId, tilePosition, weaponId, dummyId)
	local player = Player(playerId)
	if not player then
		return LeaveTraining(playerId)
	end

	if player:isTraining() == 0 then
		return LeaveTraining(playerId)
	end

	if not Tile(tilePosition):getItemById(dummyId) then
		player:sendTextMessage(MESSAGE_FAILURE, "Someone has moved the dummy, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local playerPosition = player:getPosition()
	if not playerPosition:isProtectionZoneTile() then
		player:sendTextMessage(MESSAGE_FAILURE, "You are no longer in a protection zone, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	if player:getItemCount(weaponId) <= 0 then
		player:sendTextMessage(MESSAGE_FAILURE, "You need the training weapon in the backpack, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local weapon = player:getItemById(weaponId, true)
	if not weapon:isItem() or not weapon:hasAttribute(ITEM_ATTRIBUTE_CHARGES) then
		player:sendTextMessage(MESSAGE_FAILURE, "The selected item is not a training weapon, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local weaponCharges = weapon:getAttribute(ITEM_ATTRIBUTE_CHARGES)
	if not weaponCharges or weaponCharges <= 0 then
		weapon:remove(1) -- ??
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your training weapon has disappeared.")
		LeaveTraining(playerId)
		return false
	end

	local isMagic = false
	local bonusDummy = table.contains(HouseDummies, weaponId) or nil
	local skillToTraining = skillsStages or nil
	local skillRateDefault = skillLevelRate
	local skillLevel = player:getSkillLevel(ExerciseWeaponsTable[weaponId].skill)

	if ExerciseWeaponsTable[weaponId].skill == SKILL_MAGLEVEL then
		skillToTraining = magicLevelStages or nil
		skillRateDefault = magicLevelRate
		skillLevel = player:getBaseMagicLevel()
		isMagic = true
	end

	local expRate = getRateFromTable(skillToTraining, skillLevel, skillRateDefault)
	if bonusDummy then bonusDummy = 1.1 else bonusDummy = 1 end

	if isMagic then
		player:addManaSpent(math.ceil(500 * expRate) * bonusDummy)
	else
		player:addSkillTries(ExerciseWeaponsTable[weaponId].skill, (7 * expRate) * bonusDummy)
	end

	weapon:setAttribute(ITEM_ATTRIBUTE_CHARGES, (weaponCharges - 1))
	tilePosition:sendMagicEffect(CONST_ME_HITAREA)

	if ExerciseWeaponsTable[weaponId].effect then
		playerPosition:sendDistanceEffect(tilePosition, ExerciseWeaponsTable[weaponId].effect)
	end

	if weapon:getAttribute(ITEM_ATTRIBUTE_CHARGES) <= 0 then
		weapon:remove(1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your training weapon has disappeared.")
		LeaveTraining(playerId)
		return false
	end
	
	--Extra EXP
	local expStage = getRateFromTable(experienceStages, player:getLevel(), configManager.getNumber(configKeys.RATE_EXP))
	player:addExperience(ExerciseWeaponsTable[weaponId].extraExP * expStage, false)
	
	
	local vocation = player:getVocation()
	onExerciseTraining[playerId].event = addEvent(ExerciseEvent, vocation:getBaseAttackSpeed() / configManager.getFloat(configKeys.RATE_EXERCISE_TRAINING_SPEED), playerId, tilePosition, weaponId, dummyId)
	return true
end
