----------------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
----------------------------------------

local m = Module:new("skiprankmission")

    local function skip_cop (player)
    local missionCoP = {101, 110, 118, 128, 138, 218, 228, 238, 248, 257, 258, 318, 325, 335, 341, 350, 358, 368, 418, 428, 438, 448,
                        518, 530, 543, 552, 560, 568, 578, 618, 628, 638, 648, 718, 728, 738, 748, 758, 800, 818, 828, 840, 850}
    for i = 1, #missionCoP do
        player:addMission(6, missionCoP[i])
        player:completeMission(6, missionCoP[i])
    end
        player:addMission(6, 850) -- 
        player:addKeyItem(708) -- Mysterious Amulet
        player:addKeyItem(591) -- Light of Dem
        player:addKeyItem(590) -- Light of Holla
        player:addKeyItem(592) -- Light of Mea
        player:addKeyItem(604) -- Pso'Xja Pass
        player:addKeyItem(593) -- Light of Vahzl
        player:addKeyItem(594) -- Light of Al'Taieu
    end

    local function skip_roz (player)
    local missionZM = {0, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 23, 24, 26, 27, 28, 30}
    for i = 1, #missionZM do
        player:addMission(3, missionZM[i])
        player:completeMission(3, missionZM[i])
    end
        player:addMission(3, 31) -- RoZ: Awakening
        player:addKeyItem(238) -- Sacrifical Chamber Key
        player:addKeyItem(247) -- Prismatic Fragment
        player:addKeyItem(452) -- Cerulean Crystal
    end

    local function skip_toau (player)
    local missionTOAU = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                       30 ,31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
    for i = 1, #missionTOAU do
        player:addMission(4, missionTOAU[i])
        player:completeMission(4, missionTOAU[i])
    end
        player:addMission(4, 47) -- 
        player:addKeyItem(780) -- PSC Wildcat Badge
        player:addKeyItem(783) -- PFC Wildcat Badge
        player:addKeyItem(784) -- SP Wildcat Badge
        player:addKeyItem(794) -- LC Wildcat Badge
        player:addKeyItem(795) -- C Wildcat Badge
        player:addKeyItem(825) -- S Wildcat Badge
        player:addKeyItem(826) -- SM Wildcat Badge
        player:addKeyItem(827) -- CS Wildcat Badge
        player:addKeyItem(894) -- SL Wildcat Badge
        player:addKeyItem(900) -- FL Wildcat Badge
        player:addKeyItem(909) -- CAPTAIN Wildcat Badge
        player:addKeyItem(812) -- Astral Compass

    end

    local function skip_wotg (player)
    local missionWOTG = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                       30 ,31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53}
    for i = 1, #missionWOTG do
        player:addMission(5, missionWOTG[i])
        player:completeMission(5, missionWOTG[i])
    end
        player:addMission(5, 53) -- 
        player:addKeyItem(910) -- Pure White Feather
    end

    local function skip_rov (player)
    local missionROV = {0, 2, 3, 4, 6, 10, 12, 18, 20, 22, 26, 28, 30, 32, 34, 36, 40, 42, 44, 46, 48, 50, 52, 54, 56, 60, 62, 64, 66,
                        68, 70, 72, 78, 80, 83, 86, 92, 94, 96, 98, 100, 102, 103, 104, 106, 108, 110, 114, 116, 118, 120, 122, 124,
                        126, 130, 132, 136, 142, 144, 146, 150, 152, 154, 155, 156, 158, 160, 161, 162, 164, 166, 170, 172, 174, 178,
                        180, 184, 188, 190, 192, 194, 196, 198, 200, 202, 206, 210, 212, 216, 218, 220, 222, 224, 226}
    for i = 1, #missionROV do
        player:addMission(13, missionROV[i])
        player:completeMission(13, missionROV[i])
    end
        player:addMission(13, 226) -- 
        player:addKeyItem(2884) -- Rhapsody of white
        player:addKeyItem(2885) -- Rhapsody of umber
        player:addKeyItem(2886) -- Rhapsody of azure
        player:addKeyItem(2887) -- Rhapsody of crimson
        player:addKeyItem(2888) -- Rhapsody of emerald
        player:addKeyItem(2889) -- Rhapsody of mauve
        player:addKeyItem(2890) -- Rhapsody of fuchsia
        player:addKeyItem(2891) -- Rhapsody of puce
        player:addKeyItem(2892) -- Rhapsody of ochre
        player:addKeyItem(2989) -- dimensional compass
        player:addKeyItem(2893) -- scintillating phapsody
        player:addKeyItem(3026) -- Phoenix Blessing

    end

    local function skip_srank (player)
    local missionSR = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23}
        for i = 1, #missionSR do
             player:addMission(0, missionSR[i])
             player:completeMission(0, missionSR[i])
        end
            player:setRank(10)
            player:addMission(0, 23) -- 
            player:addKeyItem(35) -- Adventurers Certificate
            player:addKeyItem(8) -- Airship pass
    end

    local function skip_brank (player)
    local missionBR = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23}
         for i = 1, #missionBR do
             player:addMission(1, missionBR[i])
             player:completeMission(1, missionBR[i])
        end
            player:setRank(10)
            player:addMission(1, 23) -- 
            player:addKeyItem(35) -- Adventurers Certificate
            player:addKeyItem(8) -- Airship pass
    end

    local function skip_wrank (player)
    local missionWR = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23}
        for i = 1, #missionWR do
             player:addMission(2, missionWR[i])
             player:completeMission(2, missionWR[i])
        end
            player:setRank(10)
            player:addMission(2, 23) -- 
            player:addKeyItem(35) -- Adventurers Certificate
            player:addKeyItem(8) -- Airship pass
            player:addKeyItem(195) -- Portal Charm
            player:addKeyItem(36) -- Starway stairway bauble
    end

local menu  = {}
local page1 = {}
local delaySendMenu = function(player)
      player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'Skip Missions?',
    options = {},
}
page1 =
{
    {
        'Let me think about it!',
        function(player)
            player:addItem(xi.item.CARBUNCLES_RUBY)
        end,
    },
    {
        'Of Course!',
         function(player)
         local playnat = player:getNation()
          player:printToPlayer('Epstein didnt kill himself!!!!!!!', 0, 'SkippySkipSkip')
                player:setCharVar('NaMiSkip', 0)
                player:setCharVar('NaMiSkipy', 0)
                player:setCharVar('NaMiSkipper', 0)
                player:setCharVar('NaMiSkipComp',1)
                if playnat == 0 then
                    skip_srank(player)
                elseif playnat == 1 then
                    skip_brank(player)
                elseif playnat == 2 then
                    skip_wrank(player)
                end
                skip_roz(player)
                skip_cop(player)
                skip_toau(player)
                skip_wotg(player)
                skip_rov(player)

         end,
    },
}

m:addOverride('xi.zones.Northern_San_dOria.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local Skip = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Skip',
        look = 114,
        x = 85.0033,
        y = 0.0000,
        z = 14.1545,
        rotation = 225,
        widescan = 1,

        onSpawn = function(npc)
        end,

        onTrade = function(player, npc, trade)
          if npcUtil.tradeHasExactly(trade, xi.item.SAN_DORIAN_CARROT) then -- 4389 xi.item.SAN_DORIAN_CARROT
            if player:getCharVar('NaMiSkip') == 0 then
                       player:setCharVar('NaMiSkip', 1)
                       player:confirmTrade()
                       player:printToPlayer('You have given me what i seek!', 0, npc:getPacketName())
                  if player:getCharVar('NaMiSkip') == 1 and
                     player:getCharVar('NaMiSkipy') == 0 and
                     player:getCharVar('NaMiSkipper') == 0 then
                     player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skipy or Skipper', 0, npc:getPacketName())
                     player:printToPlayer('They were in Bastok and Windurst last i seen.', 0, npc:getPacketName())
                  elseif player:getCharVar('NaMiSkip') == 1 and
                     player:getCharVar('NaMiSkipy') == 1 and
                     player:getCharVar('NaMiSkipper') == 0 then
                     player:printToPlayer('I see you found Skipy, go find Skipper for more information', 0, npc:getPacketName())
                     player:printToPlayer('He was in Bastok last i saw hime.', 0, npc:getPacketName())
                  elseif player:getCharVar('NaMiSkip') == 1 and
                     player:getCharVar('NaMiSkipper') == 1 and
                     player:getCharVar('NaMiSkipy') == 0 then
                     player:printToPlayer('I see you found Skipper, go find Skipy for more information', 0, npc:getPacketName())
                     player:printToPlayer('He was in Windurst last i saw him.', 0, npc:getPacketName())
                  elseif player:getCharVar('NaMiSkip') == 1 and
                       player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkipper') == 1 then
                       player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
                       player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
                       player:printToPlayer('........', 0, npc:getPacketName())
                       player:printToPlayer('............', 0, npc:getPacketName())
                       player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
                       player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
                  end
            else
             player:printToPlayer('You have already traded me that item..', 0, npc:getPacketName())
            end
          end
        end,

        onTrigger = function(player, npc)
        if player:getCharVar('NaMiSkip') == 0 and
           player:getCharVar('NaMiSkipComp') == 0 then
             player:printToPlayer('So... you want to know how to skip dont ya?', 0, npc:getPacketName())
             player:printToPlayer('Bring me a Sandorian Carrot and i will tell you whom might know?', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 0 and
               player:getCharVar('NaMiSkipper') == 0 then
             player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skipy or Skipper', 0, npc:getPacketName())
             player:printToPlayer('They were in Bastok and Windurst last i seen.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkipper') == 0 then
             player:printToPlayer('I see you found Skipy, go find Skipper for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Bastok last i saw hime.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipper') == 1 and
               player:getCharVar('NaMiSkipy') == 0 then
             player:printToPlayer('I see you found Skipper, go find Skipy for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Windurst last i saw him.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkipper') == 1 then
             player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
             player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
             player:printToPlayer('........', 0, npc:getPacketName())
             player:printToPlayer('............', 0, npc:getPacketName())
             player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
             player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
        end
        end,
    })
    utils.unused(Skip)
end)
m:addOverride('xi.zones.Windurst_Walls.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local Skipy = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Skipy',
        look = 166,
        x = 53.2246,
        y = -7.5000,
        z = 224.2847,
        rotation = 217,
        widescan = 1,

        onSpawn = function(npc)
        end,

        onTrade = function(player, npc, trade)
          if npcUtil.tradeHasExactly(trade, xi.item.CLUMP_OF_WINDURSTIAN_TEA_LEAVES) then -- 635 xi.item.CLUMP_OF_WINDURSTIAN_TEA_LEAVES
            if player:getCharVar('NaMiSkipy') == 0 then
                       player:setCharVar('NaMiSkipy', 1)
                       player:confirmTrade()
                       player:printToPlayer('You have given me what i seek!', 0, npc:getPacketName())
                if player:getCharVar('NaMiSkipy') == 1 and
                   player:getCharVar('NaMiSkip') == 0 and
                   player:getCharVar('NaMiSkipper') == 0 then
                   player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skip or Skipper', 0, npc:getPacketName())
                   player:printToPlayer('They were in Sandoria and Bastok last i seen.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkip') == 1 and
                       player:getCharVar('NaMiSkipper') == 0 then
                       player:printToPlayer('I see you found Skip, go find Skipper for more information', 0, npc:getPacketName())
                       player:printToPlayer('He was in Bastok last i saw hime.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkipper') == 1 and
                       player:getCharVar('NaMiSkip') == 0 then
                       player:printToPlayer('I see you found Skipper, go find Skip for more information', 0, npc:getPacketName())
                       player:printToPlayer('He was in Sandoria last i saw him.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkip') == 1 and
                       player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkipper') == 1 then
                       player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
                       player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
                       player:printToPlayer('........', 0, npc:getPacketName())
                       player:printToPlayer('............', 0, npc:getPacketName())
                       player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
                       player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
                end
            else
             player:printToPlayer('You have already traded me that item..', 0, npc:getPacketName())
            end
          end
        end,

        onTrigger = function(player, npc)
        if player:getCharVar('NaMiSkipy') == 0 and
           player:getCharVar('NaMiSkipComp') == 0 then
             player:printToPlayer('So... you want to know how to skip dont ya?', 0, npc:getPacketName())
             player:printToPlayer('Bring me a Windurstian tea leave and i will tell you whom might know?', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkip') == 0 and
               player:getCharVar('NaMiSkipper') == 0 then
             player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skip or Skipper', 0, npc:getPacketName())
             player:printToPlayer('They were in Sandoria and Bastok last i seen.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipper') == 0 then
             player:printToPlayer('I see you found Skip, go find Skipper for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Bastok last i saw hime.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkipper') == 1 and
               player:getCharVar('NaMiSkip') == 0 then
             player:printToPlayer('I see you found Skipper, go find Skip for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Sandoria last i saw him.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkipper') == 1 then
             player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
             player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
             player:printToPlayer('........', 0, npc:getPacketName())
             player:printToPlayer('............', 0, npc:getPacketName())
             player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
             player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
        end
        end,
    })
    utils.unused(Skipy)
end)
m:addOverride('xi.zones.Port_Bastok.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local Skipper = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Skipper',
        look = 180,
        x = 32.5838,
        y = 7.5000,
        z = -58.5599,
        rotation = 123,
        widescan = 1,

        onSpawn = function(npc)
        end,

        onTrade = function(player, npc, trade)
          if npcUtil.tradeHasExactly(trade, xi.item.GALKAN_SAUSAGE) then -- 4395 xi.item.GALKAN_SAUSAGE
            if player:getCharVar('NaMiSkipper') == 0 then
                       player:setCharVar('NaMiSkipper', 1)
                       player:confirmTrade()
                       player:printToPlayer('You have given me what i seek!', 0, npc:getPacketName())
                if player:getCharVar('NaMiSkipper') == 1 and
                   player:getCharVar('NaMiSkip') == 0 and
                   player:getCharVar('NaMiSkipy') == 0 then
                   player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skip or Skipy', 0, npc:getPacketName())
                   player:printToPlayer('They were in Sandoria and Windurst last i seen.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkipper') == 1 and
                       player:getCharVar('NaMiSkip') == 1 and
                       player:getCharVar('NaMiSkipy') == 0 then
                       player:printToPlayer('I see you found Skip, go find Skipy for more information', 0, npc:getPacketName())
                       player:printToPlayer('He was in Windurst last i saw hime.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkipper') == 1 and
                       player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkip') == 0 then
                       player:printToPlayer('I see you found Skipy, go find Skip for more information', 0, npc:getPacketName())
                       player:printToPlayer('He was in Sandoria last i saw him.', 0, npc:getPacketName())
                elseif player:getCharVar('NaMiSkip') == 1 and
                       player:getCharVar('NaMiSkipy') == 1 and
                       player:getCharVar('NaMiSkipper') == 1 then
                       player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
                       player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
                       player:printToPlayer('........', 0, npc:getPacketName())
                       player:printToPlayer('............', 0, npc:getPacketName())
                       player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
                       player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
                end
            else
             player:printToPlayer('You have already traded me that item..', 0, npc:getPacketName())
            end
          end
        end,

        onTrigger = function(player, npc)
        if player:getCharVar('NaMiSkipper') == 0 and
           player:getCharVar('NaMiSkipComp') == 0 then
             player:printToPlayer('So... you want to know how to skip dont ya?', 0, npc:getPacketName())
             player:printToPlayer('Bring me a Galkan Sausage and i will tell you whom might know?', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipper') == 1 and
               player:getCharVar('NaMiSkip') == 0 and
               player:getCharVar('NaMiSkipy') == 0 then
             player:printToPlayer('Maybe one of my brothas from another motha knows, go find Skip or Skipy', 0, npc:getPacketName())
             player:printToPlayer('They were in Sandoria and Windurst last i seen.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipper') == 1 and
               player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 0 then
             player:printToPlayer('I see you found Skip, go find Skipy for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Windurst last i saw hime.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkipper') == 1 and
               player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkip') == 0 then
             player:printToPlayer('I see you found Skipy, go find Skip for more information', 0, npc:getPacketName())
             player:printToPlayer('He was in Sandoria last i saw him.', 0, npc:getPacketName())
        elseif player:getCharVar('NaMiSkip') == 1 and
               player:getCharVar('NaMiSkipy') == 1 and
               player:getCharVar('NaMiSkipper') == 1 then
             player:printToPlayer('My big brother is fishing off the coast of ...', 0, npc:getPacketName())
             player:printToPlayer('O Man! i forgot where he was fishing at', 0, npc:getPacketName())
             player:printToPlayer('........', 0, npc:getPacketName())
             player:printToPlayer('............', 0, npc:getPacketName())
             player:printToPlayer('O now i remember, look for my big brother fishing off the docks in', 0, npc:getPacketName())
             player:printToPlayer('Bibiki Bay, he can assist you', 0, npc:getPacketName())
        end
        end,
    })
    utils.unused(Skipper)
end)
m:addOverride('xi.zones.Bibiki_Bay.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local npc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'SkippySkipSkip',
        look = '01000b0300100820083000400850006000700000',
        x = 452.0818,
        y = -3.0024,
        z = 710.6868,
        rotation = 127,
        widescan = 1,

        onTrade = function(player, npc, trade)
          if npcUtil.tradeHasExactly(trade, xi.item.CARBUNCLES_RUBY) then -- 1125
             if player:getCharVar('NaMiSkip') == 1 and
                player:getCharVar('NaMiSkipy') == 1 and
                player:getCharVar('NaMiSkipper') == 1 then
                player:confirmTrade()
                player:printToPlayer('You have given me what i seek!', 0, npc:getPacketName())
                player:printToPlayer('There is no going back after i tell you, so choose wisley!', 0, npc:getPacketName())
                menu.options = page1
                delaySendMenu(player)
             else
                player:printToPlayer('Leave me be! I am fishing for mah dinner!', 0, npc:getPacketName())
             end
          end
        end,

        onTrigger = function(player, npc)
       
        if player:getCharVar('NaMiSkip') == 1 and
           player:getCharVar('NaMiSkipy') == 1 and
           player:getCharVar('NaMiSkipper') == 1 then
             player:printToPlayer('So... you want to know my secret huh?', 0, npc:getPacketName())
             player:printToPlayer('I will let you know the secret if you bring me a nice shiny ruby.', 0, npc:getPacketName())
        else
             player:printToPlayer('Leave me be! I am fishing for mah dinner!', 0, npc:getPacketName())
        end
        end,

    })
    npcUtil.fishingAnimation(npc, 2)

    utils.unused(Skipperz)
end)
return m