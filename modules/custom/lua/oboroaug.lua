-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("OboroNPC")

-- Define augment paths, focusing on Masamune (itemID 21956)
local augmentPaths = {
    [1] = {
        trade = {21956, {9543, 1}},  -- Trade Masamune and 1 Demon's Medal for 1 rank increase
        reward = 21956,  -- The item ID remains the same since it's an augmentation
        augments = {
            [1] = {287, 1},  -- DMG +1
            [5] = {287, 5},  -- DMG +5
            [10] = {287, 8}, -- DMG +8
            [15] = {287, 11},-- DMG +11 (R15 Max)
            [6] = {18, 5},   -- STR +5 at level 6
            [12] = {18, 20}, -- STR +20 at level 12 (R15 Max)
            [6] = {19, 5},   -- AGI +5 at level 6
            [12] = {19, 20}, -- AGI +20 at level 12 (R15 Max)
            [15] = {840, 10} -- Tachi: Fudo: Damage +10% (R15 Max)
        }
    },
    -- Additional items and paths can be added here
}

m:addOverride("xi.zones.Port_Jeuno.npcs.Oboro.onTrade", function(player, npc, trade)
    local tradedCombo = 0
    local itrade = 0

    -- Check for augment trades specific to Masamune using Demon's Medals
    if tradedCombo == 0 then
        for k, v in pairs(augmentPaths) do
            if npcUtil.tradeHasExactly(trade, v.trade) then
                tradedCombo = k
                itrade = v.trade[1]
                player:setCharVar('OboroAugment', tradedCombo)
                break
            end
        end
    end

    -- Handle the trade and provide feedback via printToPlayer
    if tradedCombo > 0 then
        player:printToPlayer("Oboro : I will begin the process of augmenting your Masamune.", xi.msg.channel.NS_SAY)
    else
        player:printToPlayer("Oboro : I cannot accept these items.", xi.msg.channel.NS_SAY)
    end
end)

m:addOverride("xi.zones.Port_Jeuno.npcs.Oboro.onEventFinish", function(player, csid, option, npc)
    local augmentType = player:getCharVar('OboroAugment')

    -- Process augment completion for Masamune
    if augmentType > 0 then
        local info = augmentPaths[augmentType]
        player:confirmTrade()

        -- Determine the current rank based on the number of Demon's Medals traded
        local rank = trade:getItemQty(9543)
        local maxRank = 15

        if rank > maxRank then rank = maxRank end -- Ensure rank does not exceed 15

        -- Apply all augments up to the current rank
        for level, augment in pairs(info.augments) do
            if level <= rank then
                npcUtil.addItemMod(player, augment[1], augment[2])
            end
        end

        player:setCharVar('OboroAugment', 0)
        player:printToPlayer("Oboro : Your Masamune has been successfully augmented to Rank " .. rank .. "!", xi.msg.channel.NS_SAY)
    else
        player:printToPlayer("Oboro : There is nothing more I can do for your weapon.", xi.msg.channel.NS_SAY)
    end
end)

return m
