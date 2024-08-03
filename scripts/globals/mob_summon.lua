-- scripts/globals/mob_summon.lua

local mob_summon = {}

-- Function to summon a mob at the player's location
function mob_summon.summonMobAtPlayer(player, mobID)
    -- Check if mobID is valid (this should be customized based on your game's logic)
    if not isValidMobID(mobID) then
        player:printToPlayer("Invalid mob ID.")
        return
    end

    -- Get player's current position
    local x, y, z = player:getXPos(), player:getYPos(), player:getZPos()

    -- Create the mob at the player's position
    local mob = player:getZone():getNPCByID(mobID)
    if mob then
        mob:spawn(x, y, z)
        mob:setStatus(tpz.status.NORMAL) -- Assuming `tpz.status.NORMAL` is the status to make the mob active
        player:printToPlayer(string.format("Mob with ID %d has been summoned at your location.", mobID))
    else
        player:printToPlayer("Failed to summon the mob. Mob ID may be incorrect.")
    end
end

-- Helper function to validate the mobID
function isValidMobID(mobID)
    -- Implement validation logic here
    -- For example, check if the mobID exists in your game's database or list
    return true -- Placeholder for actual validation
end

return mob_summon

