local rope = Action()

function rope.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return onUseRope(player, item, fromPosition, target, toPosition, isHotkey)
end

rope:id(3003, 646)
rope:register()
