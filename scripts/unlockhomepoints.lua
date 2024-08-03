-----------------------------------
-- func: unlockHomepoints()
-- desc: Unlocks all homepoints for a player
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 's'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!unlockHomepoints <player>')
end

commandObj.onTrigger = function(player, target)
    -- validate target
    if target == nil then
        error(player, 'You must supply target to unlock hompoints..')
    else
        unlockHomepoints(target)
    end
end

return commandObj