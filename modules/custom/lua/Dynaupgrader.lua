-----------------------------------
-- Relic Weapon Upgrade NPC
-----------------------------------
require('scripts/globals/common')
require('scripts/globals/npc_util')
local ID = require('scripts/zones/Lower_Jeuno/IDs')

local m = Module:new('Relic_Upgrade_NPC')

local trades = {
    {item = 20480, upgrade = 20509, required = 9543}, -- Spharai -> Spharai (stronger) 
    {item = 20555, upgrade = 20583, required = 9543}, -- Mandau -> Mandau (stronger) 
    {item = 20645, upgrade = 20685, required = 9543}, -- Excalibur -> Excalibur (stronger) 
    {item = 20745, upgrade = 21683, required = 9543}, -- Ragnarok -> Ragnarok (stronger) 
    {item = 20790, upgrade = 21750, required = 9543}, -- Guttler -> Guttler (stronger) 
    {item = 20835, upgrade = 21756, required = 9543}, -- Bravura -> Bravura (stronger) 
    {item = 20880, upgrade = 21808, required = 9543}, -- Apocalypse -> Apocalypse (stronger) 
    {item = 20925, upgrade = 21857, required = 9543}, -- Gungnir -> Gungnir (stronger) 
    {item = 20970, upgrade = 21906, required = 9543}, -- Kikoku -> Kikoku (stronger) 
    {item = 21015, upgrade = 21954, required = 9543}, -- Amanomurakumo -> Amanomurakumo (stronger) 
    {item = 21060, upgrade = 21077, required = 9543}, -- Mjollnir -> Mjollnir (stronger) 
    {item = 21135, upgrade = 22060, required = 9543}, -- Claustrum -> Claustrum (stronger) 
    {item = 21210, upgrade = 22115, required = 9543}, -- Yoichinoyumi -> Yoichinoyumi (stronger) 
    {item = 21260, upgrade = 21267, required = 9543}  -- Annihilator -> Annihilator (stronger) 
}

local function onTradeFunc(player, npc, trade)
    for _, tradeItem in ipairs(trades) do
        if npcUtil.tradeHasExactly(trade, {tradeItem.item, tradeItem.required}) then
            player:confirmTrade()
            player:addItem(tradeItem.upgrade)
            player:messageSpecial(ID.text.ITEM_OBTAINED, tradeItem.upgrade)
            return
        end
    end
    player:printToPlayer("I cannot upgrade this item. Ensure you are trading the correct relic weapon and a Demon's Medal.", xi.msg.channel.SYSTEM_1)
end

local function onTriggerFunc(player, npc)
    player:printToPlayer("Trade me a base 119 relic weapon and a Demon's Medal for a glowing effect...", xi.msg.channel.SYSTEM_1)
end

m:addOverride('xi.zones.Lower_Jeuno.Zone.onInitialize', function(zone)
    super(zone)
    zone:insertDynamicEntity({
        objtype   = xi.objType.NPC,
        name      = 'Dynamis Upgrader',
        look      = 2290, -- Replace with the appropriate NPC model ID
        x         = 4.9,
        y         = 0.000,
        z         = -4.823,
        rotation  = 0,
        widescan  = 1,
        onTrigger = onTriggerFunc,
        onTrade   = onTradeFunc,
    })
end)

return m