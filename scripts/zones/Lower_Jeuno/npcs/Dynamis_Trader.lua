-----------------------------------
-- Dynamis Currency Trade NPC
-----------------------------------
require('scripts/globals/common')
require('scripts/globals/npc_util')
local ID = require('scripts/zones/Lower_Jeuno/IDs')

-- Define the text messages
local text = {
    ITEM_OBTAINED           = 6390,  -- You obtain: <item>.
    ITEM_CANNOT_BE_OBTAINED = 6384,  -- You cannot obtain the item. Come back after sorting your inventory.
    NPC_TRADE_INSTRUCTIONS  = 15000, -- Trade me 10 of any 10,000 dynamis currency to receive a crystal of murky astral detritus. You can also store and withdraw them with me.
}

-- Define the currency types and required amount for the trade
local currencyTypes = {
    { currencyID = 1457, currencyName = "10,000 Byne Bill", requiredAmount = 10 },
    { currencyID = 1454, currencyName = "Ranperre Goldpiece", requiredAmount = 10 },
    { currencyID = 1451, currencyName = "Rimilala Stripshell", requiredAmount = 10 },
}

function onTrade(player, npc, trade)
    for i = 1, #currencyTypes do
        local currency = currencyTypes[i]
        if npcUtil.tradeHasExactly(trade, { { currency.currencyID, currency.requiredAmount } }) then
            player:tradeComplete()
            player:addItem(9876)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 9876)
            return
        end
    end
    player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED)
end

function onTrigger(player, npc)
    player:messageSpecial(ID.text.NPC_TRADE_INSTRUCTIONS)
end

function onEventUpdate(player, csid, option)
    -- No event update required for this NPC
end

function onEventFinish(player, csid, option)
    -- No event finish actions required for this NPC
end