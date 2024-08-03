-----------------------------------
-- func: unlockhomepoints()
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
    player:printToPlayer('!unlockhomepoints <player>')
end

commandObj.onTrigger = function(player, target)
    local targ
    if (target == nil) then
        targ = player
    else
        targ = GetPlayerByName(target)
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target))
            return
        end
    end
    
    -- validate target
    if targ == nil then
        error(player, 'You must supply target to unlock hompoints..')
    else
        print(string.format("[CMD] Target = (%s)", targ))
        unlockHomepoints(targ)
        player:printToPlayer(string.format("Unlocked hompoints for player: (%s)!", targ:getName()))
    end
end

return commandObj