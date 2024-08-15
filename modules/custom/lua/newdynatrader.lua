-----------------------------------
-- Dynamis Currency Converter/Trader NPC with Paginated Custom Menu
-----------------------------------
require('scripts/globals/common')
require('scripts/globals/npc_util')
local ID = require('scripts/zones/Lower_Jeuno/IDs')

local m = Module:new('Dynamis_Trade_NPC')

-- You can ignore these, just for reference.
local text = {
    ITEM_OBTAINED           = 6390,  -- You obtain: <item>.
    ITEM_CANNOT_BE_OBTAINED = 6384,  -- You cannot obtain the item. Come back after sorting your inventory.
    -- Trade me 1 of any 10,000 dynamis currency to receive a crystal of murky astral detritus. You can also store and withdraw them with me.
}

-- Define the currency types and required amount for the trade
local currencyTypes = {
    { currencyID = 1457, currencyName = "10,000 Byne Bill", requiredAmount = 1 },
    { currencyID = 1454, currencyName = "Ranperre Goldpiece", requiredAmount = 1 },
    { currencyID = 1451, currencyName = "Rimilala Stripshell", requiredAmount = 1 },
}

local function onTradeFunc(player, npc, trade)
    -- Trading for crystal of murky astral detritus
    for i = 1, #currencyTypes do
        local currency = currencyTypes[i]
        if npcUtil.tradeHasExactly(trade, { { currency.currencyID, currency.requiredAmount } }) then
            player:tradeComplete()
            player:addItem(9876)
            player:messageSpecial(text.ITEM_OBTAINED, 9876)
            return
        end
    end

    -- Storing crystals of murky astral detritus
    if npcUtil.tradeHasExactly(trade, { { 9876, trade:getItemQty(9876) } }) then
        local storedCrystals = player:getCharVar("StoredMurkyAstralDetritus") + trade:getItemQty(9876)
        player:setCharVar("StoredMurkyAstralDetritus", storedCrystals)
        player:tradeComplete()
        player:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
        return
    end

    player:printToPlayer('Incorrect trade!', xi.msg.channel.SYSTEM_1)
end

-- Forward declarations (required)
local menu  = {}
local withdrawPage1 = {}
local tradePage1 = {}
local tradePage2 = {}
local tradePage3 = {}
local tradePage4 = {}
local tradePage5 = {}
local tradePage6 = {}

-- We need just a tiny delay to let the previous menu context be cleared out
-- 'New pages' are actually just whole new menus!
local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'Main Menu',
    options = {
        {
            'Withdraw Crystals',
            function(playerArg)
                menu.options = withdrawPage1
                delaySendMenu(playerArg)
            end,
        },
        {
            'Trade Crystals for Items',
            function(playerArg)
                menu.options = tradePage1
                delaySendMenu(playerArg)
            end,
        },
    },
    onStart = function(playerArg)
        playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
    end,
    onCancelled = function(playerArg)
        playerArg:printToPlayer('Action cancelled.', xi.msg.channel.SYSTEM_1)
    end,
    onEnd = function(playerArg)
        
    end,
}

-- Withdraw Crystals menu
withdrawPage1 = {
    {
        '1 Crystal',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 1 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(9876, 1)
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 1)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 9876)
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        '5 Crystals',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 5 then
                playerArg:addItem(9876, 5)
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 5)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 9876)
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        '10 Crystals',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 10 and playerArg:getFreeSlotsCount() >= 10 then
                playerArg:addItem(9876, 10)
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 9876)
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        'Back to Main Menu',
        function(playerArg)
            menu.options = {
                {
                    'Withdraw Crystals',
                    function(playerArg)
                        menu.options = withdrawPage1
                        delaySendMenu(playerArg)
                    end,
                },
                {
                    'Trade Crystals for Items',
                    function(playerArg)
                        menu.options = tradePage1
                        delaySendMenu(playerArg)
                    end,
                },
            }
            delaySendMenu(playerArg)
        end,
    },
}

-- Trade Crystals for Items menu
tradePage1 = {
    {
        'Spharai (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20480)  -- Insert item ID Potion
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 5)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20480)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        'Mandau (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20555)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20555)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Excalibur (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20645)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20645)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Ragnarok (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20745)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20745)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Guttler (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20790)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20790)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Bravura (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20835)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20835)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
            'Next page',
            function(playerArg)
                menu.options = tradePage2
                delaySendMenu(playerArg)
            end,
        },
	}
tradePage2 = {
	    {
        'Apocalypse (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20880)  -- Insert item ID
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 5)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20880)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        'Gungnir (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20925)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20925)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Kikoku (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20970)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20970)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Amanomurakumo (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21015)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21015)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Mjollnir (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21060)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21060)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Claustrum (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21135)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21135)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
		{
            'Next page',
            function(playerArg)
                menu.options = tradePage3
                delaySendMenu(playerArg)
            end,
        },
		{
            'previous page',
            function(playerArg)
                menu.options = tradePage1
                delaySendMenu(playerArg)
            end,
        },
		}
tradePage3 = {
	    {
        'Yoichinoyumi (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21210)  -- Insert item ID
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 5)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21210)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
    {
        'Annihilator (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21260)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21260)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Kikoku (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(20970)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 20970)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Amanomurakumo (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21015)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21015)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Mjollnir (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21060)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21060)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
	{
        'Claustrum (5)',
        function(playerArg)
            local storedCrystals = playerArg:getCharVar("StoredMurkyAstralDetritus")
            if storedCrystals >= 5 and playerArg:getFreeSlotsCount() >= 1 then
                playerArg:addItem(21135)  -- Insert item ID Onion Sword
                playerArg:setCharVar("StoredMurkyAstralDetritus", storedCrystals - 10)
                playerArg:messageSpecial(text.ITEM_OBTAINED, 21135)-- Insert item ID
				playerArg:printToPlayer(string.format("You have %d stored crystal(s) of murky astral detritus.", storedCrystals), xi.msg.channel.SYSTEM_1)
            else
                playerArg:printToPlayer('Not enough crystals or inventory space.', xi.msg.channel.SYSTEM_1)
            end
        end,
    },
		{
            'Next page',
            function(playerArg)
                menu.options = tradePage4
                delaySendMenu(playerArg)
            end,
        },
		{
            'previous page',
            function(playerArg)
                menu.options = tradePage2
                delaySendMenu(playerArg)
            end,
        },

    {
        'Back to Main Menu',
        function(playerArg)
            menu.options = {
                {
                    'Withdraw Crystals',
                    function(playerArg)
                        menu.options = withdrawPage1
                        delaySendMenu(playerArg)
                    end,
                },
                {
                    'Trade Crystals for Items',
                    function(playerArg)
                        menu.options = tradePage1
                        delaySendMenu(playerArg)
                    end,
                },
            }
            delaySendMenu(playerArg)
        end,
    },
}

local function onTriggerFunc(player, npc)
    player:printToPlayer("Trade me 1 of any 10,000 dynamis currency to receive a crystal of murky astral detritus. You can also store and withdraw them with me.")
    menu.options = {
        {
            'Withdraw Crystals',
            function(playerArg)
                menu.options = withdrawPage1
                delaySendMenu(playerArg)
            end,
        },
        {
            'Trade Crystals for Items',
            function(playerArg)
                menu.options = tradePage1
                delaySendMenu(playerArg)
            end,
        },
    }
    delaySendMenu(player)
end

m:addOverride('xi.zones.Lower_Jeuno.Zone.onInitialize', function(zone)
    super(zone)
    zone:insertDynamicEntity({
        objtype   = xi.objType.NPC,
        name      = 'Dynamis Trader',
        look      = 2290, -- Replace with the appropriate NPC model ID
        x         = 6.700,
        y         = 0.000,
        z         = -3.419,
        rotation  = 0,
        widescan  = 1,
        onTrigger = onTriggerFunc,
        onTrade   = onTradeFunc,
    })
end)

return m
