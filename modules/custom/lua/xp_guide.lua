-----------------------------------
-- XP / Merit Books
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('xp_guide')

-- Forward declarations (required)
local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local page5 = {}
local page6 = {}
local page7 = {}
local page8 = {}
local page9 = {}
local page10 = {}
local page11 = {}

local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'Where would you like to go?',
    options = {},
}

page1 =
{
    {
        'No where!',
        function(player)
        end
    },
    {
        'Lvl 1-14  East Ronfaure', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(86.4610, -59.6994, 241.4913, 29, xi.zone.EAST_RONFAURE)
        end,
    },
    {
        'Lvl 1-14  South Gustaberg', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(548.8903, -0.7633, -316.1219, 60, xi.zone.SOUTH_GUSTABERG)
        end,
    },
    {
        'Lvl 1-14  West Sarutabaruta', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(150.0148, -0.3757, -316.7338, 135, xi.zone.WEST_SARUTABARUTA)
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
        'Lvl 14-21 Valkurm Dunes', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(135.2247, -7.4763, 96.4053, 33, xi.zone.VALKURM_DUNES)
        end,
    },
    {
        'Lvl 21-35 Qufim Island', -- - Page 2 RoE
        function(playerArg)
            playerArg:setPos(-258.3347, -20.0000, 300.8070, 238, xi.zone.QUFIM_ISLAND)
        end,
    },
    {
        'Lvl 35-55 Crawlers Nest', -- - Page 1 / 4 RoE
        function(playerArg)
            playerArg:setPos(354.3741, -32.2071, -22.5341, 175, xi.zone.CRAWLERS_NEST)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page1
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end,
    },
}

page3 = 
{
    {
        'Lvl 55-66 Cape Teriggan', --  - Page 1 RoE
        function(playerArg)
            playerArg:setPos(-187.5810, 8.0470, -73.6966, 210, xi.zone.CAPE_TERIGGAN)
        end,
    },
    {
        'Lvl 55-65 Wajaom Woodlands', --  - Page 1 RoE
        function(playerArg)
            playerArg:setPos(-200.1854, -10.0000, 91.8009, 53, xi.zone.WAJAOM_WOODLANDS)
        end,
    },
   {
        'Lvl 55-69 The Boyahda Tree', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(339.7918, 8.6358, -69.4237, 181, xi.zone.THE_BOYAHDA_TREE)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page2
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page4
            delaySendMenu(playerArg)
        end,
    },
}
page4 = 
{
   {
        'Lvl 68-76 RuAun Gardens', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(-0.6167, -44.0130, -165.7867, 185, xi.zone.RUAUN_GARDENS)
        end,
    },
   {
        'Lvl 68-80 Misareaux Coast', -- - Page 1 RoE
        function(playerArg)
            playerArg:setPos(-44.6588, -32.3265, 274.5248, 230, xi.zone.MISAREAUX_COAST)
        end,
    },
   {
        'Lvl 70-82 The Shrine of RuAvitau', -- - 
        function(playerArg)
            playerArg:setPos(4.7311, -15.5148, -2.4892, 68, xi.zone.THE_SHRINE_OF_RUAVITAU)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page9
            delaySendMenu(playerArg)
        end,
    },
}
page9 =
{
   {
        'Lvl 73-82 The Shrine of RuAvitau', -- - Pa
        function(playerArg)
            playerArg:setPos(740.4669, -99.6000, -655.9205, 230, xi.zone.THE_SHRINE_OF_RUAVITAU)
        end,
    },
  {
        'Lvl 80-90 Dangruf Wadi', -- - Page 8 RoE
        function(playerArg)
            playerArg:setPos(-16.6683, -0.2101, -0.0809, 146, xi.zone.DANGRUF_WADI)
        end,
    },
   {
        'Lvl 80-90 Mount Zhayolm', -- - Page 8 RoE
        function(playerArg)
            playerArg:setPos(-580.4277, -23.6067, -34.7014, 64, xi.zone.MOUNT_ZHAYOLM)
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
        'Next Page',
        function(playerArg)
            menu.options = page10
            delaySendMenu(playerArg)
        end,
    },

}
page10 =
{
   {
        'Lvl 82-96 Crawlers Nest', -- - 
        function(playerArg)
            playerArg:setPos(12.6418, -0.3837, -299.6174, 16, xi.zone.CRAWLERS_NEST)
        end,
    },
   {
        'Lvl 85-95 Garlaige Citadel', -- - Page 8 RoE
        function(playerArg)
            playerArg:setPos(-378.7412, -5.9991, 361.1081, 62, xi.zone.GARLAIGE_CITADEL)
        end,
    },
    {
        'Lvl 90-99 Gustav Tunnel', --  - Page 8 RoE
        function(playerArg)
            playerArg:setPos(-60.2877, -10.6451, -135.5146, 195, xi.zone.GUSTAV_TUNNEL)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page9
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page11
            delaySendMenu(playerArg)
        end,
    },

}
page11 =
{
    {
        'Lvl 90-99 Ceizak Battlegrounds', 
        function(playerArg)
            playerArg:setPos(329.6800, 0.3515, 126.9239, 72, xi.zone.CEIZAK_BATTLEGROUNDS)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page10
            delaySendMenu(playerArg)
        end,
    },
}

page5 =
{
    {
        'No where!',
        function(player)
        end
    },
    {
        'King Ranperres Tomb', 
        function(playerArg)
            playerArg:setPos(21.4849, 0.0000, -277.3308, 57, xi.zone.KING_RANPERRES_TOMB)
        end,
    },
    {
        'Bhaflau Thickets', 
        function(playerArg)
            playerArg:setPos(-574.0469, -8.2500, 40.2076, 63, xi.zone.BHAFLAU_THICKETS)
        end,
    },
    {
        'DHO Gate Camp 1', 
        function(playerArg)
            playerArg:setPos(-41.7247, 0.0000, -58.5082, 54, xi.zone.DHO_GATES)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page6
            delaySendMenu(playerArg)
        end,
    },
}
 page6 = 
{
    {
        'MOH Gate Camp 1', 
        function(playerArg)
            playerArg:setPos(391.1106, 30.0812, -10.6432, 74, xi.zone.MOH_GATES)
        end,
    }, 
   {
        'SIH Gate Camp 1', 
        function(playerArg)
            playerArg:setPos(-21.8246, 0.0151, -228.8976, 195, xi.zone.SIH_GATES)
        end,
    },
   {
        'SIH Gate Camp 2',
        function(playerArg)
            playerArg:setPos(94.2589, 0.0572, -262.3954, 20, xi.zone.SIH_GATES) ----------
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page5
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page7
            delaySendMenu(playerArg)
        end,
    },
}
 page7 = 
{
    {
        'SIH Gate Camp 3', 
        function(playerArg)
            playerArg:setPos(-1.1026, 0.0000, -259.4783, 6, xi.zone.SIH_GATES)
        end,
    }, 
   {
        'Reisenjima', 
        function(playerArg)
            playerArg:setPos(-499.8680, -19.0587, -488.1039, 192, xi.zone.REISENJIMA)
        end,
    },
   {
        'RaKaznar Inner Court',
        function(playerArg)
            playerArg:setPos(-339.9206, -431.1964, 299.9980, 1, xi.zone.RAKAZNAR_INNER_COURT)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page6
            delaySendMenu(playerArg)
        end,
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page8
            delaySendMenu(playerArg)
        end,
    },
}
 page8 = 
{
    {
        'Escha Zitah Camp 1', 
        function(playerArg)
            playerArg:setPos(-323.7006, 0.0000, 361.2220, 190, xi.zone.ESCHA_ZITAH)
        end,
    }, 
   {
        'Escha Zitah Camp 2', 
        function(playerArg)
            playerArg:setPos(526.1202, 2.4993, -179.8479, 6, xi.zone.ESCHA_ZITAH)
        end,
    },
    {
        'Previous Page',
        function(playerArg)
            menu.options = page7
            delaySendMenu(playerArg)
        end,
    },
}













m:addOverride('xi.zones.Bastok_Mines.Zone.onInitialize', function(zone)
    super(zone)
    local exp_guidetwo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'EXP Guide',
        look = 2433,
        x         = 20.0531,
        y         = 0.0000,
        z         = -111.4293,
        rotation = 3,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page1
     delaySendMenu(player)
        end,
    })
    local mrt_guidetwo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Merit Guide',
        look = 2433,
        x         = 20.5386,
        y         = 0.0000,
        z         = -107.9352,
        rotation = 3,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page5
     delaySendMenu(player)
        end,
    })
end)

m:addOverride('xi.zones.Northern_San_dOria.Zone.onInitialize', function(zone)
    super(zone)
    local exp_guideone = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'EXP Guide',
        look = 2433,
        x         = 78.7980,
        y         = 0.000,
        z         = 7.0669,
        rotation = 100,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page1
     delaySendMenu(player)
        end,
    })
    local mrt_guideone = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Merit Guide',
        look = 2433,
        x         = 80.2230,
        y         = 0.0000,
        z         = 5.5288,
        rotation = 100,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page5
     delaySendMenu(player)
        end,
    })
end)

m:addOverride('xi.zones.Port_Windurst.Zone.onInitialize', function(zone)
    super(zone)
    local exp_guidethree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'EXP Guide',
        look = 2433,
        x         = -221.9980,
        y         = -8.1233,
        z         = 178.3394,
        rotation = 59,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page1
     delaySendMenu(player)
        end,
    })
    local mrt_guidethree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Merit Guide',
        look = 2433,
        x         = -226.1122,
        y         = -8.2927,
        z         = 177.9062,
        rotation = 59,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page5
     delaySendMenu(player)
        end,
    })
end)

m:addOverride('xi.zones.RuLude_Gardens.Zone.onInitialize', function(zone)
    super(zone)
    local exp_guidefour = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'EXP Guide',
        look = 2433,
        x         = 42.8837,
        y         = 10.0000,
        z         = -70.9866,
        rotation = 127,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page1
     delaySendMenu(player)
        end,
    })
    local mrt_guidefour = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Merit Guide',
        look = 2433,
        x         = 42.9253,
        y         = 10.0000,
        z         = -73.0407,
        rotation = 127,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
     menu.options = page5
     delaySendMenu(player)
        end,
    })
end)
return m

