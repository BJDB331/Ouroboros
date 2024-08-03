-- scripts/commands/summonmob.lua

local commandObj = {}

commandObj.cmdprops = {
    permission = 1, -- Set the appropriate permission level
    parameters = "i" -- The command expects an integer parameter (mobID)
}

local mob_summon = require("scripts/globals/mob_summon")

-- Function to handle the command trigger
function commandObj.onTrigger(player, mobID)
    if not mobID then
        player:PrintToPlayer("You must provide a mob ID.")
        return
    end

    if type(mobID) ~= "number" or mobID <= 0 then
        player:PrintToPlayer("Invalid mob ID. Please provide a valid positive integer.")
        return
    end

    -- Assuming mob_summon.summonMobAtPlayer handles invalid mobIDs internally
    mob_summon.summonMobAtPlayer(player, mobID)
    player:PrintToPlayer(string.format("Summoned mob with ID %d.", mobID))
end

return commandObj
