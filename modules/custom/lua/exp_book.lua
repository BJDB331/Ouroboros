-----------------------------------
-- Experience Book custom in Lower Jeuno (zone 245)
-----------------------------------
require('modules/module_utils')
require('scripts/zones/Lower_Jeuno/Zone')
-----------------------------------
local m = Module:new('test_npcs_in_lower_jeuno')

-- Forward declarations (required)
local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local page5 = {}

-- We need just a tiny delay to let the previous menu context be cleared out
-- 'New pages' are actually just whole new menus!
local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'Choose your destination',
    options = {},
}

page1 =
{
    {
        'Valkurm Dunes (12-18)',
         function(playerArg)
             playerArg:setPos(128.163, -7.320, 95.083, 0, 103) -- Valkurm Dunes
         end,
    },
    {
        "Qufim Island (19-22)",
         function(playerArg)
             playerArg:setPos(-54.956, -20.000, 63.757, 0, 126) -- Qufim Pond
         end,
    },
    {
         "Qufim Island (23-25)",
         function(playerArg)
             playerArg:setPos(-31.682, -20.026, 258.653, 0, 126) -- Qufim Pugils
         end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page2
            delaySendMenu(playerArg)
        end,
    },
}

page2 =
{
    {
        "Yuh. Jungle (26-28)",
         function(playerArg)
             playerArg:setPos(-224.635, -0.255, 503.703, 0, 123) -- Yuhtunga Jungle
         end,
    },
    {
        "Yhoator Jungle (29 - 32)",
        function(playerArg)
            playerArg:setPos(-278.584, 8.300, 140.543, 0, 124) -- Yhoator Jungle
        end,
    }, 
    {
        "Garlaige Citadel (33-36)",
        function(playerArg)
            playerArg:setPos(-341.194, -3.250, 340.712, 0, 200) -- Garlaige Citadel
        end,
    },
	{
        'Next Page',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end,
	},
	{
	    'Previous Page',
        function(playerArg)
            menu.options = page1
            delaySendMenu(playerArg)
        end,
    },
}	

page3 =
{
	{	
        "Crawler's Nest (37-43)",
        function(playerArg)
            playerArg:setPos(345.456, -32.374, -19.874, 0, 197) -- Crawler's Nest
        end,
	},
	{
        "Western Altepa Desert (44-50)",
        function(playerArg)
            playerArg:setPos(-140.079, -13.407, 19.703, 0, 125) -- Western Altepa Desert
        end,
	},
	{
        "Lab. of Onzozo (51-54)",
        function(playerArg)
            playerArg:setPos(-16.756, 0.000, -181.055, 0, 213) -- Labyrinth of Onzozo
        end,
	},
	{
        'Next Page',
        function(playerArg)
            menu.options = page4
            delaySendMenu(playerArg)
        end,
	},
	{
	    'Previous Page',
        function(playerArg)
            menu.options = page2
            delaySendMenu(playerArg)
        end,
    },
}

page4 =
{
    {	
        "Wajaom Woodlands (55-59)",
        function(playerArg)
            playerArg:setPos(-237.550, -15.855, 86.347, 0, 51) -- Wajaom Woodlands 
        end,
	},
    {
        "Lab. of Onzozo (60-69)",
        function(playerArg)
            playerArg:setPos(-33.094, 4.770, 139.340, 0, 213) -- Labyrinth of Onzozo
        end,
	},
	{
        "Kuftal Tunnel (70-75)",
        function(playerArg)
            playerArg:setPos(17.172, -10.547, 8.043, 0, 174) -- Kuftal Tunnel
        end,
	},
    {
        'Next Page',
        function(playerArg)
            menu.options = page5
            delaySendMenu(playerArg)
        end,
	},
	{
	    'Previous Page',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end,
    },
}	

page5 =
{
    {	
        "Bhaflau Thickets (99-119)",
        function(playerArg)
            playerArg:setPos(-514.809, -12.156, -81.485, 171, 52) -- Bhaflau Thickets (Tandjana Islet)
        end,
	},							
    {
        'Previous Page',
        function(playerArg)
            menu.options = page4
            delaySendMenu(playerArg)
        end,
    },
    {
        "Exit",
        function(playerArg)
            return
        end,
    },
}

m:addOverride('xi.zones.Lower_Jeuno.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    -- Menu NPC Example
    zone:insertDynamicEntity({
        objtype   = xi.objType.NPC,
        name      = 'Traveler Book',
        look      = 2290,
        x         = -3.1883,
        y         = 0.000,
        z         = -11.3937,
        rotation  = 0,
        widescan  = 1,
        onTrigger  = function(player, npc)
            menu.options = page1
            delaySendMenu(player)
        end,
    })
end)

return m