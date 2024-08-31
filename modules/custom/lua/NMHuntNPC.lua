----------------------------------------------
require("modules/module_utils")
----------------------------------------------
local m = Module:new("NMHuntNPC")

local menu  = {}
local page1 = {} -- list of options page 1
local page2 = {} -- list of options page 2
local page3 = {} -- list of options page 3
local page4 = {} -- Trust shop page 1
local page5 = {} -- Style Lock weapons page 1
local page6 = {} -- style lock armor page 1
local page7 = {} -- JSE Ambuscade Cape page 1
local page8 = {} -- JSE Reive/Incursion Cape page 1
local page9 = {} -- JSE Neck page 1
local page10 = {} -- JSE Ambuscade Cape yes or no
local page11 = {} -- Free Relic page 1
local page12 = {} -- Free Relic page 2
local page13 = {} -- Free Relic page 3
local page14 = {} -- Free Relic yes or no
local page15 = {} -- JSE Ambuscade Cape page 2
local page16 = {} -- JSE Ambuscade Cape page 3
local page17 = {} -- JSE Ambuscade Cape page 4
local page18 = {} -- JSE Reive/Incursion Cape page 2
local page19 = {} -- JSE Reive/Incursion Cape page 3
local page20 = {} -- JSE Reive/Incursion Cape page 4
local page21 = {} -- JSE Reive/Incursion Cape yes or no
local page22 = {} -- JSE Neck page 2
local page23 = {} -- JSE Neck page 3
local page24 = {} -- JSE Neck page 4
local page25 = {} -- JSE Neck yes or no
local page26 = {} -- Trust shop page 2
local page27 = {} -- Trust shop page 3
local page28 = {} -- Trust shop page 4
local page29 = {} -- Style Lock weapons page 2
local page30 = {} -- Style Lock weapons page 3
local page31 = {} -- Style Lock weapons page 4
local page32 = {} -- Style Lock weapons page 5
local page33 = {} -- style lock armor page 2
local page34 = {} -- style lock armor page 3
local page35 = {} -- style lock armor page 4
local page36 = {} -- Trusts Yes or No
local page37 = {} -- Style Lock Weapons Yes or No
local page38 = {} -- Style Lock Armor Yes or No
local page39 = {} -- Style lock weapons page 6
local page40 = {} -- JSE Neck page 5
local page41 = {} -- JSE Reive/Incursion Cape page 5
local page42 = {} -- JSE Ambuscade Cape page 5
local page43 = {} --  Tier 1 Miles Stone Reward page 1
local page44 = {} --  Tier 1 Miles Stone Reward page 2
local page45 = {} --  Tier 1 Miles Stone Reward yes or no
local page46 = {} --  Tier 2 Miles Stone Reward page 1
local page47 = {} --  Tier 2 Miles Stone Reward yes or no
local page48 = {} --  Tier 3 Miles Stone Reward page 1  
local page49 = {} --  Tier 3 Miles Stone Reward page 2  
local page50 = {} --  Tier 3 Miles Stone Reward page 3
local page51 = {} --  Tier 3 Miles Stone Reward yes or no
local page52 = {} --  Tier 4 Miles Stone Reward page 1   
local page53 = {} --  Tier 4 Miles Stone Reward page 2   
local page54 = {} --  Tier 4 Miles Stone Reward yes or no   
local page55 = {} --  Tier 4 Miles Stone Reward page 4   
local page56 = {} --  Tier 5 Miles Stone Reward page 1   
local page57 = {} --  Tier 5 Miles Stone Reward page 2   
local page58 = {} --  Tier 5 Miles Stone Reward yes or no 
local page59 = {} --  Tier 6 Miles Stone Reward page 1  
local page60 = {} --  Tier 6 Miles Stone Reward page 2  
local page61 = {} --  Tier 6 Miles Stone Reward page 3  
local page62 = {} --  Tier 6 Miles Stone Reward page 4  
local page63 = {} --  Tier 6 Miles Stone Reward yes or no
local page64 = {} -- Tier reward menu or main menu
local page65 = {} -- Tier reward menu
local page66 = {} -- trusts shop page 5
local page67 = {} -- trusts shop page 6

local delaySendMenu = function(player)
      player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What whould you like to do?',
    options = {},
}
page1 =
{
    {
        'Nothing!',
        function(player)
        end,
    },
    {
        'List of Rewards for Tier Completion!',
         function(player)
               player:printToPlayer('By defeating notorious monsters you will unlock tiered rewards', 0, 'Draider')
               player:printToPlayer('based on total number or NMs killed. ', 0, 'Draider')
               player:printToPlayer('Dont forget to check your kill counts! ', 0, 'Draider') 
               player:printToPlayer('Tier 1 Reward - 50 Kills - 1 Sky Abj Set +1, Unlocks Trust Shop', 0, 'Draider')
               player:printToPlayer('Tier 2 Reward - 100 Kills - 1 Voidwatch / Legion Abj Set +1, Unlocks Style Lock Weapon Shop', 0, 'Draider')
               player:printToPlayer('Tier 3 Reward - 150 Kills - 1 Escha RuAun Abj Set NQ, Unlocks Style Lock Armor Shop', 0, 'Draider')
               player:printToPlayer('Tier 4 Reward - 200 Kills - 1 Seekers of Aoulin Ring +1, Unlocks JSE Ambuscade Cape Shop', 0, 'Draider')
               player:printToPlayer('Tier 5 Reward - 250 Kills - 1 Escha RuAun Torque, Unlocks JSE Reive / Incursion Cape Shop', 0, 'Draider')
               player:printToPlayer('Tier 6 Reward - 300 Kills - 1 Kaja Weapon, Unlocks JSE Neck Shop', 0, 'Draider')
               player:printToPlayer('For those of you who have chosen to skip missions', 0, 'Draider')
               player:printToPlayer('you may obtain your Free Relic here by completing 100 Kills', 0, 'Draider') 
         end
    },
    {
        'Check Rusty Coin Balance!',
         function(player)
               local storedRC = player:getCharVar('StoredRC')
               player:printToPlayer(string.format('You current Rusty Coin Balance is %s. ',storedRC), 0, 'Draider') 
         end
    },
    {
        'Retrieve stored Rusty Coins!',
        function(player)
               player:printToPlayer('Please trade me gil in the amount of rusty coins you wish to withdraw', 0, 'Draider')                      
        end,
    },
    {
        'Next Page!',
        function(player)
                    menu.options = page2
                    delaySendMenu(player)                 
        end,
    },
}
page2 =
{
    {
        'Shop Trusts 50 Coins',
         function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 50 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 50 then
                    menu.options = page4
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 50+ Kills to unlock!',totalkillc), 0, 'Draider')
          end
         end,
    },
    {
        'Shop Style Lock Weapons 100 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 100 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 100 then
                    menu.options = page5
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 100+ Kills to unlock!',totalkillc), 0, 'Draider')
          end        
        end,
    },
    {
        'Shop Style Lock Armor 250 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 150 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 250 then
                    menu.options = page6
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 150+ Kills to unlock!',totalkillc), 0, 'Draider')        
          end
        end,
    },
    {
        'Free Relic',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
          if totalkillc >= 100 and
             player:getCharVar('FreeRelic') ~= 1 and
             player:getCharVar('FreeRelic') ~= 2 and
             player:getCharVar('FreeRelic') ~= 3 and
             player:getCharVar('NaMiSkipComp') == 1 then
                    menu.options = page11
                    delaySendMenu(player)
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 100+ Kills to unlock!',totalkillc), 0, 'Draider') 
            player:printToPlayer('This is only available to players who have chosen to skip missions / rank!', 0, 'Draider')
          end
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page1
                    delaySendMenu(player)                 
        end,
    },
    {
        'Next Page!',
        function(player)
                    menu.options = page3
                    delaySendMenu(player)                 
        end,
    },
}
page3 =
{
    {
        'JSE Ambuscade Cape 750 Coins',
         function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
          if totalkillc >= 200 then 
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 750 then
                    menu.options = page7
                    delaySendMenu(player)
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 200+ Kills to unlock!',totalkillc), 0, 'Draider')
          end
         end,
    },
    {
        'JSE Reive/Incursion Cape 1000 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
          if totalkillc >= 250 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 1000 then
                    menu.options = page8
                    delaySendMenu(player)
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 250+ Kills to unlock!',totalkillc), 0, 'Draider')          
          end
        end,
    },
    {
        'JSE Neck 1500 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
          if totalkillc >= 300 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 1500 then
                    menu.options = page9
                    delaySendMenu(player)
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 300 Kills to unlock!',totalkillc), 0, 'Draider')
          end 
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page2
                    delaySendMenu(player)                 
        end,
    },
}

----------------------------------------------------------------------------------------------
-- Free Relic ---------------------------------------------------
----------------------------------------------------------------------------------------------
page11 = -- free relic
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Gjallarhorn',
         function(player)
           player:setLocalVar('RelicSelect', 18572)
           menu.options = page14
            delaySendMenu(player)
         end
    },
    {
        'Spharai',
         function(player)
           player:setLocalVar('RelicSelect', 19746)
           menu.options = page14
            delaySendMenu(player)
         end
    },
    {
        'Mandau',
         function(player)
           player:setLocalVar('RelicSelect', 19747)
           menu.options = page14
            delaySendMenu(player)
         end
    },
    {
        'Excalibur',
         function(player)
           player:setLocalVar('RelicSelect', 19748)
           menu.options = page14
            delaySendMenu(player)
         end
    },
    {
        'Ragnarok',
         function(player)
           player:setLocalVar('RelicSelect', 19749)
           menu.options = page14
            delaySendMenu(player)
         end
    },
    {
        'Guttler',
         function(player)
           player:setLocalVar('RelicSelect', 19750)
           menu.options = page14
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page12
            delaySendMenu(player)
         end
    },
}
page12 = -- free relic
{
        {
        'Bravura',
         function(player)
           player:setLocalVar('RelicSelect', 19751)
           menu.options = page14
            delaySendMenu(player)
         end
    },
        {
        'Gungnir',
         function(player)
           player:setLocalVar('RelicSelect', 19752)
           menu.options = page14
            delaySendMenu(player)
         end
    },
            {
        'Apocalypse',
         function(player)
           player:setLocalVar('RelicSelect', 19753)
           menu.options = page14
            delaySendMenu(player)
         end
    },
            {
        'Kikoku',
         function(player)
           player:setLocalVar('RelicSelect', 19754)
           menu.options = page14
            delaySendMenu(player)
         end
    },
            {
        'Amanomurakumo',
         function(player)
           player:setLocalVar('RelicSelect', 19755)
           menu.options = page14
            delaySendMenu(player)
         end
    },
            {
        'Mjollnir',
         function(player)
           player:setLocalVar('RelicSelect', 19756)
           menu.options = page14
            delaySendMenu(player)
         end
    },
            {
        'Previous Page',
         function(player)
           menu.options = page11
           delaySendMenu(player)
         end
    },
         {
         'Next Page',
         function(player)
           menu.options = page13
           delaySendMenu(player)
         end
    },
}
page13 = -- free relic
{
                {
        'Claustrum',
         function(player)
           player:setLocalVar('RelicSelect', 19757)
           menu.options = page14
            delaySendMenu(player)
         end
    },
        {
        'Annihilator',
         function(player)
           player:setLocalVar('RelicSelect', 19758)
           menu.options = page14
            delaySendMenu(player)
         end
    },
        {
        'Yoichinoyumi',
         function(player)
           player:setLocalVar('RelicSelect', 19759)
           menu.options = page14
            delaySendMenu(player)
         end
    },
        {
        'Aegis',
         function(player)
           player:setLocalVar('RelicSelect', 11927)
           menu.options = page14
            delaySendMenu(player)
         end
    },
         {
        'Previous Page',
         function(player)
           menu.options = page12
           delaySendMenu(player)
         end
    },
}
page14 = -- free relic
{
        {
        'Yes',
         function(player)
         local Relic = player:getLocalVar('RelicSelect')
               if player:hasItem(Relic) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, Relic)
               player:setCharVar('FreeRelic', 3)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- JSE Ambuscade capes ---------------------------------------------------
----------------------------------------------------------------------------------------------
page7 = --  JSE Ambuscade Cape
{
    {
        'Cichols Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26246)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Segomos Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26247)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Alaunuss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26248)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Taranuss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26249)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Sucelloss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26250)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page3
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page15
           delaySendMenu(player)
         end
    },
--[[
26246,750,-- cichols mantle
26247,750,-- segomos mantle
26248,750,-- alaunuss cape
26249,750,-- taranuss cape
26250,750,-- sucelloss cape
26251,750,-- toutatiss cape
26252,750,-- rudianoss mantle
26253,750,-- ankous mantle
26254,750,-- artios mantle
26255,750,-- intarabuss cape
26256,750,-- belenuss cape
26257,750,-- smertrioss mantle
26258,750,-- andartias mantle
26259,750,-- brigantias mantle
26260,750,-- campestress cape
26261,750,-- rosmertas cape
26262,750,-- camuluss mantle
26263,750,-- visuciuss mantle
26264,750,-- senunas mantle
26265,750,-- lughs cape
26266,750,-- nantosueltas cape
26267,750,-- ogmas cape
]]--
}
page15 = --  JSE Ambuscade capes
{
    {
        'Toutatiss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26251)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Rudianoss Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26252)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Ankous Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26253)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Artios Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26254)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Intarabuss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26255)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page7
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page16
           delaySendMenu(player)
         end
    },
}
page16 = --  JSE Ambuscade capes
{
    {
        'Belenuss Cape',
         function(player)
           player:setLocalVar('JSEACape', 26256)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Smertrioss Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26257)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Andartias Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26258)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Brigantias Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26259)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Campestress Cape',
         function(player)
           player:setLocalVar('JSEACape', 26260)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page15
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page17
           delaySendMenu(player)
         end
    },
}
page17 = --  JSE Ambuscade capes
{
    {
        'Rosmertas Cape',
         function(player)
           player:setLocalVar('JSEACape', 26261)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Camuluss Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26262)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Visuciuss Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26263)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Senunas Mantle',
         function(player)
           player:setLocalVar('JSEACape', 26264)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Lughs Cape',
         function(player)
           player:setLocalVar('JSEACape', 26265)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page16
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page42
           delaySendMenu(player)
         end
    },
}
page42 = --  JSE Ambuscade capes
{
    {
        'Nantosueltas Cape',
         function(player)
           player:setLocalVar('JSEACape', 26266)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Ogmas Cape',
         function(player)
           player:setLocalVar('JSEACape', 26267)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page17
           delaySendMenu(player)
         end
    },
}
page10 = --  JSE Ambuscade capes
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local JSEAC = player:getLocalVar('JSEACape')
               if player:hasItem(JSEAC) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, JSEAC)
               player:setCharVar('StoredRC', amount - 750)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Jse Reive / Incursion Cape ---------------------------------------------------
----------------------------------------------------------------------------------------------
page8 = --  Jse Reive / Incursion Cape 8,18,19,20,
{
    {
        'Maulers Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28617)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Anchorets Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28618)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Mending Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28619)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Bane Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28620)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Ghostfyre Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28621)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page3
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page18
           delaySendMenu(player)
         end
    },

--[[
28617,1000,-- maulers mantle
28618,1000,-- anchorets mantle
28619,1000,-- mending cape
28620,1000,-- bane cape
28621,1000,-- ghostfyre cape
28622,1000,-- canny cape
28623,1000,-- weard mantle
28624,1000,-- niht mantle
28625,1000,-- pastoralists mantle
28626,1000,-- rhapsodes cape
28627,1000,-- lutian cape
28628,1000,-- takaha mantle
28629,1000,-- yokaze mantle
28630,1000,-- updraft mantle
28631,1000,-- conveyance cape
28632,1000,-- cornflower cape
28633,1000,-- gunslingers cape
28634,1000,-- dispersal mantle
28635,1000,-- toetapper mantle
28636,1000,-- bookworms cape
28637,1000,-- lifestream cape
28638,1000,-- evasionists cape
]]--
}
page18 = --  Jse Reive / Incursion Cape
{
    {
        'Canny Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28622)
           menu.options = page21
            delaySendMenu(player)
         end
    },
  {
        'Weard Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28623)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Niht Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28624)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Pastoralists Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28625)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Rhapsodes Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28626)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page8
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page19
           delaySendMenu(player)
         end
    },
}
page19 = --  Jse Reive / Incursion Cape
{
    {
        'Lutian Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28627)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Takaha Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28628)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Yokaze Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28629)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Updraft Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28630)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Conveyance Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28631)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page18
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page20
           delaySendMenu(player)
         end
    },
}
page20 = --  Jse Reive / Incursion Cape
{
    {
        'Cornflower Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28632)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Gunslingers Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28633)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Dispersal Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28634)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Toetapper Mantle',
         function(player)
           player:setLocalVar('JSERICCape', 28635)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Bookworms Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28636)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page19
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page41
           delaySendMenu(player)
         end
    },
}
page41 = --  Jse Reive / Incursion Cape
{
    {
        'Lifestream Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28637)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Evasionists Cape',
         function(player)
           player:setLocalVar('JSERICCape', 28638)
           menu.options = page21
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page20
           delaySendMenu(player)
         end
    },
}
page21 = --  Jse Reive / Incursion Cape
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local JSERIC = player:getLocalVar('JSERICCape')
               if player:hasItem(JSERIC) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, JSERIC)
               player:setCharVar('StoredRC', amount - 1000)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- JSE Neck ---------------------------------------------------
----------------------------------------------------------------------------------------------
page9 = --  JSE Neck
{
    {
        'Abyssal Bead Necklace',
         function(player)
           player:setLocalVar('JSENeck', 25459)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Argute Stole',
         function(player)
           player:setLocalVar('JSENeck', 25531)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Assassins Gorget',
         function(player)
           player:setLocalVar('JSENeck', 25447)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Bagua Charm',
         function(player)
           player:setLocalVar('JSENeck', 25537)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Bards Charm',
         function(player)
           player:setLocalVar('JSENeck', 25471)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page3
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page22
           delaySendMenu(player)
         end
    },
--[[
25459,1500,-- abyssal bead necklace
25531,1500,-- argute stole
25447,1500,-- assassins gorget
25537,1500,-- bagua charm
25471,1500,-- bards charm
25465,1500,-- beastmaster collar
25429,1500,-- clerics torque
25513,1500,-- commodore charm
25495,1500,-- dragoons collar
25441,1500,-- duelists torque
25525,1500,-- etoile gorget
25543,1500,-- futhark torque
25453,1500,-- knights bead necklace
25507,1500,-- mirage stole
25423,1500,-- monks nodowa
25489,1500,-- ninja nodowa
25519,1500,-- puppetmasters collar
25483,1500,-- samurais nodowa
25477,1500,-- scouts gorget
25435,1500,-- sorcerers stole
25501,1500,-- summoners collar
25417,1500,-- warriors bead necklace
]]--
}
page22 = -- JSE Neck
{
    {
        'Beastmaster Collar',
         function(player)
           player:setLocalVar('JSENeck', 25465)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Clerics Torque',
         function(player)
           player:setLocalVar('JSENeck', 25429)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Commodore Charm',
         function(player)
           player:setLocalVar('JSENeck', 25513)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Dragoons Collar',
         function(player)
           player:setLocalVar('JSENeck', 25495)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Duelists Torque',
         function(player)
           player:setLocalVar('JSENeck', 25441)
           menu.options = page25
            delaySendMenu(player)
         end
    },
     {
        'Previous Page',
         function(player)
           menu.options = page9
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page23
           delaySendMenu(player)
         end
    },
}
page23 =  -- JSE Neck
{
   {
        'Etoile Gorget',
         function(player)
           player:setLocalVar('JSENeck', 25525)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Futhark Torque',
         function(player)
           player:setLocalVar('JSENeck', 25543)
           menu.options = page25
            delaySendMenu(player)
         end
    },
   {
        'Knights Bead Necklace',
         function(player)
           player:setLocalVar('JSENeck', 25453)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Mirage Stole',
         function(player)
           player:setLocalVar('JSENeck', 25507)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Monks Nodowa',
         function(player)
           player:setLocalVar('JSENeck', 25423)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page22
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page24
           delaySendMenu(player)
         end
    },
}
page24 =  -- JSE Neck
{
    {
        'Ninja Nodowa',
         function(player)
           player:setLocalVar('JSENeck', 25489)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Puppetmasters Collar',
         function(player)
           player:setLocalVar('JSENeck', 25519)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Samurais Nodowa',
         function(player)
           player:setLocalVar('JSENeck', 25483)
           menu.options = page25
            delaySendMenu(player)
         end
    },
   {
        'Scouts Gorget',
         function(player)
           player:setLocalVar('JSENeck', 25477)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Sorcerers Stole',
         function(player)
           player:setLocalVar('JSENeck', 25435)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page23
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page40
           delaySendMenu(player)
         end
    },
}
page40 = -- JSE Neck
{
    {
        'Summoners Collar',
         function(player)
           player:setLocalVar('JSENeck', 25501)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Warriors Bead Necklace',
         function(player)
           player:setLocalVar('JSENeck', 25417)
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page24
           delaySendMenu(player)
         end
    },
}
page25 = --  JSE Neck
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local JSEN = player:getLocalVar('JSENeck')
               if player:hasItem(JSEN) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, JSEN)
               player:setCharVar('StoredRC', amount - 1500)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Trusts ---------------------------------------------------
----------------------------------------------------------------------------------------------
page4 = --  Trusts page 1
{
    {
        'Cipher Of Halver',
         function(player)
           player:setLocalVar('NMSTrust', 10158)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Semih',
         function(player)
           player:setLocalVar('NMSTrust', 10157)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lion II',
         function(player)
           player:setLocalVar('NMSTrust', 10159)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Zeid II',
         function(player)
           player:setLocalVar('NMSTrust', 10160)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Tenzen II',
         function(player)
           player:setLocalVar('NMSTrust', 10167)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page2
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page26
           delaySendMenu(player)
         end
    }, 
--[[
10158,500000,-- Cipher Of Halver's Alter Ego 10158
10157,500000,-- Cipher Of Semih's Alter Ego 10157
10159,500000,-- Cipher Of Lion's alter ego II 10159
10160,500000,-- Cipher Of Zeid's Alter Ego II 10160
10167,500000,-- Cipher Of Tenzen's Alter Ego II 10167
10168,500000,-- Cipher Of Prishe's Alter Ego II 10168
10170,500000,-- Cipher Of Nashmeira's Alter Ego II 10170
10171,500000,-- Cipher Of Lilisette's Alter Ego II 10171
10184,500000,-- Cipher Of Arciela II 10184
10172,1000000,-- Cipher Of Balamor's Alter Ego 10172
10173,1000000,-- Cipher Of Selh'teus's Alter Ego 10173
10185,1000000,-- Cipher Of Iroha 10185
10186,1000000,-- Cipher Of Iroha II 10186
10191,1000000,-- Cipher Of Ark EV 10191
10188,1000000,-- Cipher Of Ark HM 10188
10192,1000000,-- Cipher Of Ark GK 10192
10190,1000000,-- Cipher Of Ark MR 10190
10189,1000000,-- Cipher Of Ark TT 10189
10162,1000000,-- Cipher Of Kupofried 10162
]]--
}
page26 = -- Trusts page 2
{
    {
        'Cipher Of Prishe II',
         function(player)
           player:setLocalVar('NMSTrust', 10168)
           menu.options = page36
            delaySendMenu(player)
         end
    },
   {
        'Cipher Of Nashmeira II',
         function(player)
           player:setLocalVar('NMSTrust', 10170)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lilisette II',
         function(player)
           player:setLocalVar('NMSTrust', 10171)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Arciela II',
         function(player)
           player:setLocalVar('NMSTrust', 10184)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page4
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page27
           delaySendMenu(player)
         end
    },
}
page27 = -- Trusts page 3
{
    {
        'Cipher Of Balamor',
         function(player)
           player:setLocalVar('NMSTrust', 10172)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Selh teus',
         function(player)
           player:setLocalVar('NMSTrust', 10173)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Iroha',
         function(player)
           player:setLocalVar('NMSTrust', 10185)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Iroha II',
         function(player)
           player:setLocalVar('NMSTrust', 10186)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark EV',
         function(player)
           player:setLocalVar('NMSTrust', 10191)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page26
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page28
           delaySendMenu(player)
         end
    },
}
page28 = -- Trusts page 4
{
    {
        'Cipher Of Ark HM',
         function(player)
           player:setLocalVar('NMSTrust', 10188)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark GK',
         function(player)
           player:setLocalVar('NMSTrust', 10192)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark MR',
         function(player)
           player:setLocalVar('NMSTrust', 10190)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark TT',
         function(player)
           player:setLocalVar('NMSTrust', 10189)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page27
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page66
           delaySendMenu(player)
         end
    },

}
page66 =
{
    {
        'Cipher Of Kupofried',
         function(player)
           player:setLocalVar('NMSTrust', 10162)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lilisette',
         function(player)
           player:setLocalVar('NMSTrust', 10137)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Prishe',
         function(player)
           player:setLocalVar('NMSTrustSpell', 913)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Shikaree Z',
         function(player)
           player:setLocalVar('NMSTrustSpell', 915)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page28
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page67
           delaySendMenu(player)
         end
    },
}
page67 =
{
    {
        'Spell: Trust Cherukiki',
         function(player)
           player:setLocalVar('NMSTrustSpell', 916)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Ulima',
         function(player)
           player:setLocalVar('NMSTrustSpell', 914)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Arciela',
         function(player)
           player:setLocalVar('NMSTrustSpell', 965)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Ingrid',
         function(player)
           player:setLocalVar('NMSTrustSpell', 921)
           menu.options = page36
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page66
           delaySendMenu(player)
         end
    },
}
page36 = -- Trusts yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMTr = player:getLocalVar('NMSTrust')
         local NMTrs = player:getLocalVar('NMSTrustSpell')
               if NMTr > 0 then
                  if player:hasItem(NMTr) or
                     player:getFreeSlotsCount() < 1 then
                     player:printToPlayer('Please check your inventory and try again!')
                  return
                  else
                     npcUtil.giveItem(player, NMTr)
                     player:setCharVar('StoredRC', amount - 50)
                  end
               elseif NMTrs > 0 then
                   if player:hasSpell(NMTrs) then
                      player:printToPlayer('You have already obtained that spell!')
                   return
                   else
                      player:addSpell(NMTrs)
                      player:setCharVar('StoredRC', amount - 50)
                   end
                end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Style Lock Weapons ---------------------------------------------------
----------------------------------------------------------------------------------------------
page5 = --  Style Lock Weapons page 1
    {
    {
        'Aern Sword II',
         function(player)
           player:setLocalVar('NMStyleW', 20675)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Aern Dagger II',
         function(player)
           player:setLocalVar('NMStyleW', 20574)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Aern Axe II',
         function(player)
           player:setLocalVar('NMStyleW', 21743)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Aern Spear II',
         function(player)
           player:setLocalVar('NMStyleW', 21861)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Aern Staff II',
         function(player)
           player:setLocalVar('NMStyleW', 22066)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page2
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page29
           delaySendMenu(player)
         end
    },
--[[
20675,250000,-- Aern_Sword II
20574,250000,-- Aern_Dagger II
21743,250000,-- Aern_Axe II
21861,250000,-- Aern_Spear II
22066,250000,-- Aern_Staff II
26414,500000,-- Twinned_Shield
21623,500000,-- Twinned_Blade
21886,500000,-- Iapetus
21530,500000,-- Tokkosho
22050,500000,-- Chac-chacs
21520,500000,-- Ethereal_Fists
21624,500000,-- Ethereal_Sword
21771,500000,-- Ethereal_Great_Axe
21838,500000,-- Ethereal_Scythe
21962,500000,-- Ethereal_Tachi
22090,500000,-- Ethereal_Staff
22146,500000,-- Ethereal_Bow
21571,500000,-- Ethereal_Dagger
21713,500000,-- Ethereal_Axe
21666,500000,-- Ethereal_G._sword
21911,500000,-- Ethereal_Katana
22053,500000,-- Ethereal_Club
21873,500000,-- Ethereal_Spear
22165,500000,-- Ethereal_Gun
20694,1000000,-- Fermion_Sword
21693,1000000,-- Irradiance_Blade
20514,1000000,-- Aphelion_Knuckles
21862,1000000,-- Mizukage-No-Naginata
20593,1000000,-- Hedron_Dagger
20931,1000000,-- Celestial_Spear
]]--
    }
page29 = -- Style Lock Weapons page 2
{
    {
        'Twinned Shield',
         function(player)
           player:setLocalVar('NMStyleW', 26414)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Twinned Blade',
         function(player)
           player:setLocalVar('NMStyleW', 21623)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Iapetus',
         function(player)
           player:setLocalVar('NMStyleW', 21886)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Tokkosho',
         function(player)
           player:setLocalVar('NMStyleW', 21530)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Chac-chacs',
         function(player)
           player:setLocalVar('NMStyleW', 22050)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page5
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page30
           delaySendMenu(player)
         end
    },
}
page30 = -- Style Lock Weapons page 3
{
    {
        'Ethereal Fists',
         function(player)
           player:setLocalVar('NMStyleW', 21520)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Sword',
         function(player)
           player:setLocalVar('NMStyleW', 21624)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Great Axe',
         function(player)
           player:setLocalVar('NMStyleW', 21771)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Scythe',
         function(player)
           player:setLocalVar('NMStyleW', 21838)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Tachi',
         function(player)
           player:setLocalVar('NMStyleW', 21962)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page29
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page31
           delaySendMenu(player)
         end
    },
}
page31 = -- Style Lock Weapons page 4
{
    {
        'Ethereal Staff',
         function(player)
           player:setLocalVar('NMStyleW', 22090)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Bow',
         function(player)
           player:setLocalVar('NMStyleW', 22146)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Dagger',
         function(player)
           player:setLocalVar('NMStyleW', 21571)
           menu.options = page37
            delaySendMenu(player)
         end
    },
   {
        'Ethereal Axe',
         function(player)
           player:setLocalVar('NMStyleW', 21713)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal G. sword',
         function(player)
           player:setLocalVar('NMStyleW', 21666)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page30
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page32
           delaySendMenu(player)
         end
    },
}
page32 = -- Style Lock Weapons page 5
{
    {
        'Ethereal Katana',
         function(player)
           player:setLocalVar('NMStyleW', 21911)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Club',
         function(player)
           player:setLocalVar('NMStyleW', 22053)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Spear',
         function(player)
           player:setLocalVar('NMStyleW', 21873)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Gun',
         function(player)
           player:setLocalVar('NMStyleW', 22165)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Fermion Sword',
         function(player)
           player:setLocalVar('NMStyleW', 20694)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page31
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page39
           delaySendMenu(player)
         end
    },
}
page39 = -- Style Lock Weapons Page 6
{
    {
        'Irradiance Blade',
         function(player)
           player:setLocalVar('NMStyleW', 21693)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Aphelion Knuckles',
         function(player)
           player:setLocalVar('NMStyleW', 20514)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Mizukage-No-Naginata',
         function(player)
           player:setLocalVar('NMStyleW', 21862)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Hedron Dagger',
         function(player)
           player:setLocalVar('NMStyleW', 20593)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Celestial Spear',
         function(player)
           player:setLocalVar('NMStyleW', 20931)
           menu.options = page37
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page32
           delaySendMenu(player)
         end
    },
}

page37 = -- Style Lock Weapons yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMsw = player:getLocalVar('NMStyleW')
               if player:hasItem(NMsw) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMsw)
               player:setCharVar('StoredRC', amount - 100)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Style Lock Armor ---------------------------------------------------
----------------------------------------------------------------------------------------------
page6 = --  Style lock Armor page 1
{
    {
        'Diamond Somen',
         function(player)
           player:setLocalVar('NMStyleA', 23822)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Diamond Haramaki',
         function(player)
           player:setLocalVar('NMStyleA', 23823)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Diamond Kote',
         function(player)
           player:setLocalVar('NMStyleA', 23824)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Diamond Hizayori',
         function(player)
           player:setLocalVar('NMStyleA', 23825)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Diamond Sune-ate',
         function(player)
           player:setLocalVar('NMStyleA', 23826)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page2
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page33
           delaySendMenu(player)
         end
    },
--[[
23822,500000,-- Diamond_Somen
23823,500000,-- Diamond_Haramaki
23824,500000,-- Diamond_Kote
23825,500000,-- Diamond_Hizayori
23826,500000,-- Diamond_Sune-ate
23817,500000,-- Jadeite_Visor
23818,500000,-- Jadeite_Cuirie
23819,500000,-- Jadeite_Gloves
23820,500000,-- Jadeite_Chausses
23821,500000,-- Jadeite_Jambeaux
23832,500000,-- Ruby_Coronal
23833,500000,-- Ruby_Robe
23834,500000,-- Ruby_Cuffs
23835,500000,-- Ruby_Slops
23836,500000,-- Ruby Pigaches
23812,500000,-- Sapphire_Mask
23813,500000,-- Sapphire_Platemail
23814,500000,-- Sapphire_Gaunlets
23815,500000,-- Sapphire_Trousers
23816,500000,-- Sapphire_Leggings
]]--
}

page33 = --Style Lock Armor page 2
{
    {
        'Jadeite Visor',
         function(player)
           player:setLocalVar('NMStyleA', 23817)
           menu.options = page38
            delaySendMenu(player)
         end
    },
   {
        'Jadeite Cuirie',
         function(player)
           player:setLocalVar('NMStyleA', 23818)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Gloves',
         function(player)
           player:setLocalVar('NMStyleA', 23819)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Chausses',
         function(player)
           player:setLocalVar('NMStyleA', 23820)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Jambeaux',
         function(player)
           player:setLocalVar('NMStyleA', 23821)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page6
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page34
           delaySendMenu(player)
         end
    },
}
page34 = --Style Lock Armor page 3
{
    {
        'Ruby Coronal',
         function(player)
           player:setLocalVar('NMStyleA', 23832)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Ruby Robe',
         function(player)
           player:setLocalVar('NMStyleA', 23833)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Ruby Cuffs',
         function(player)
           player:setLocalVar('NMStyleA', 23834)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Ruby Slops',
         function(player)
           player:setLocalVar('NMStyleA', 23835)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Ruby Pigaches',
         function(player)
           player:setLocalVar('NMStyleA', 23836)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page33
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page35
           delaySendMenu(player)
         end
    },
}
page35 = --Style Lock Armor page 4
{
    {
        'Sapphire Mask',
         function(player)
           player:setLocalVar('NMStyleA', 23812)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Platemail',
         function(player)
           player:setLocalVar('NMStyleA', 23813)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Gaunlets',
         function(player)
           player:setLocalVar('NMStyleA', 23814)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Trousers',
         function(player)
           player:setLocalVar('NMStyleA', 23815)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Leggings',
         function(player)
           player:setLocalVar('NMStyleA', 23816)
           menu.options = page38
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page34
           delaySendMenu(player)
         end
    },
}

page38 = -- Style Lock Armor yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMsa = player:getLocalVar('NMStyleA')
               if player:hasItem(NMsa) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMsa)
               player:setCharVar('StoredRC', amount - 250)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T1 Milestone rewards lvl 75 +1 Abjuration -------------------------------------------------
----------------------------------------------------------------------------------------------
page43 =
{
    {
        'Aquarian Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13877)
           player:setLocalVar('NMTRewOneb', 13788)
           player:setLocalVar('NMTRewOnec', 14007)
           player:setLocalVar('NMTRewOned', 14248)
           player:setLocalVar('NMTRewOnee', 14124)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Dryadic Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13935)
           player:setLocalVar('NMTRewOneb', 14388)
           player:setLocalVar('NMTRewOnec', 14822)
           player:setLocalVar('NMTRewOned', 14304)
           player:setLocalVar('NMTRewOnee', 14185)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Earthen Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13924)
           player:setLocalVar('NMTRewOneb', 14371)
           player:setLocalVar('NMTRewOnec', 14816)
           player:setLocalVar('NMTRewOned', 14296)
           player:setLocalVar('NMTRewOnee', 14175)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Hadean Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 16116)
           player:setLocalVar('NMTRewOneb', 14576)
           player:setLocalVar('NMTRewOnec', 14998)
           player:setLocalVar('NMTRewOned', 15658)
           player:setLocalVar('NMTRewOnee', 15743)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Martial Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13911)
           player:setLocalVar('NMTRewOneb', 14370)
           player:setLocalVar('NMTRewOnec', 14061)
           player:setLocalVar('NMTRewOned', 14283)
           player:setLocalVar('NMTRewOnee', 14163)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page44
           delaySendMenu(player)
         end
    },
}
page44 =
{
    {
        'Neptunal Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13928)
           player:setLocalVar('NMTRewOneb', 14379)
           player:setLocalVar('NMTRewOnec', 14077)
           player:setLocalVar('NMTRewOned', 14309)
           player:setLocalVar('NMTRewOnee', 14181)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Phantasmal Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 16114)
           player:setLocalVar('NMTRewOneb', 14574)
           player:setLocalVar('NMTRewOnec', 14996)
           player:setLocalVar('NMTRewOned', 15656)
           player:setLocalVar('NMTRewOnee', 15741)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Wyrmal Set +1',
         function(player)
           player:setLocalVar('NMTRewOnea', 13909)
           player:setLocalVar('NMTRewOneb', 14368)
           player:setLocalVar('NMTRewOnec', 14059)
           player:setLocalVar('NMTRewOned', 14281)
           player:setLocalVar('NMTRewOnee', 14161)
           menu.options = page45
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page43
           delaySendMenu(player)
         end
    },
}
page45 =
{
        {
        'Yes',
         function(player)
         local NMtonea = player:getLocalVar('NMTRewOnea')
         local NMtoneb = player:getLocalVar('NMTRewOneb')
         local NMtonec = player:getLocalVar('NMTRewOnec')
         local NMtoned = player:getLocalVar('NMTRewOned')
         local NMtonee = player:getLocalVar('NMTRewOnee')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtonea)
               npcUtil.giveItem(player, NMtoneb)
               npcUtil.giveItem(player, NMtonec)
               npcUtil.giveItem(player, NMtoned)
               npcUtil.giveItem(player, NMtonee)
               player:setCharVar('NMTRewOneComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T2 Milestone rewards lvl 99 +1 Abjuration -------------------------------------------------
----------------------------------------------------------------------------------------------
page46 =
{
    {
        'Corvine Set +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 10405)
           player:setLocalVar('NMTRewTwob', 10489)
           player:setLocalVar('NMTRewTwoc', 10539)
           player:setLocalVar('NMTRewTwod', 10570)
           player:setLocalVar('NMTRewTwoe', 10636)
           menu.options = page47
            delaySendMenu(player)
         end
    },
    {
        'Foreboding Set +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 10408)
           player:setLocalVar('NMTRewTwob', 10492)
           player:setLocalVar('NMTRewTwoc', 10542)
           player:setLocalVar('NMTRewTwod', 10573)
           player:setLocalVar('NMTRewTwoe', 10639)
           menu.options = page47
            delaySendMenu(player)
         end
    },
    {
        'Lenitive Set +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 10409)
           player:setLocalVar('NMTRewTwob', 10493)
           player:setLocalVar('NMTRewTwoc', 10543)
           player:setLocalVar('NMTRewTwod', 10574)
           player:setLocalVar('NMTRewTwoe', 10640)
           menu.options = page47
            delaySendMenu(player)
         end
    },
    {
        'Supernal Set +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 10406)
           player:setLocalVar('NMTRewTwob', 10490)
           player:setLocalVar('NMTRewTwoc', 10540)
           player:setLocalVar('NMTRewTwod', 10571)
           player:setLocalVar('NMTRewTwoe', 10637)
           menu.options = page47
            delaySendMenu(player)
         end
    },
    {
        'Transitory Set +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 10407)
           player:setLocalVar('NMTRewTwob', 10491)
           player:setLocalVar('NMTRewTwoc', 10541)
           player:setLocalVar('NMTRewTwod', 10572)
           player:setLocalVar('NMTRewTwoe', 10638)
           menu.options = page47
            delaySendMenu(player)
         end
    },
}
page47 =
{
        {
        'Yes',
         function(player)
         local NMttwoa = player:getLocalVar('NMTRewTwoa')
         local NMttwob = player:getLocalVar('NMTRewTwob')
         local NMttwoc = player:getLocalVar('NMTRewTwoc')
         local NMttwod = player:getLocalVar('NMTRewTwod')
         local NMttwoe = player:getLocalVar('NMTRewTwoe')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMttwoa)
               npcUtil.giveItem(player, NMttwob)
               npcUtil.giveItem(player, NMttwoc)
               npcUtil.giveItem(player, NMttwod)
               npcUtil.giveItem(player, NMttwoe)
               player:setCharVar('NMTRewTwoComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T3 Milestone rewards lvl i119 NQ Abjuration -----------------------------------------------
----------------------------------------------------------------------------------------------
page48 =
{
    {
        'Abyssal Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26676)
           player:setLocalVar('NMTRewThreeb', 26852)
           player:setLocalVar('NMTRewThreec', 27028)
           player:setLocalVar('NMTRewThreed', 27204)
           player:setLocalVar('NMTRewThreee', 27380)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Arean Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 25611)
           player:setLocalVar('NMTRewThreeb', 25684)
           player:setLocalVar('NMTRewThreec', 27115)
           player:setLocalVar('NMTRewThreed', 27300)
           player:setLocalVar('NMTRewThreee', 27471)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Bushin Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26670)
           player:setLocalVar('NMTRewThreeb', 26846)
           player:setLocalVar('NMTRewThreec', 27022)
           player:setLocalVar('NMTRewThreed', 27198)
           player:setLocalVar('NMTRewThreee', 27374)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Cronian Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 25609)
           player:setLocalVar('NMTRewThreeb', 25682)
           player:setLocalVar('NMTRewThreec', 27113)
           player:setLocalVar('NMTRewThreed', 27298)
           player:setLocalVar('NMTRewThreee', 27469)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Cyllenian Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 25617)
           player:setLocalVar('NMTRewThreeb', 25690)
           player:setLocalVar('NMTRewThreec', 27121)
           player:setLocalVar('NMTRewThreed', 27306)
           player:setLocalVar('NMTRewThreee', 27477)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page49
           delaySendMenu(player)
         end
    },
}
page49 =
{
    {
        'Grove Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26674)
           player:setLocalVar('NMTRewThreeb', 26850)
           player:setLocalVar('NMTRewThreec', 27026)
           player:setLocalVar('NMTRewThreed', 27202)
           player:setLocalVar('NMTRewThreee', 27378)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Jovian Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 25613)
           player:setLocalVar('NMTRewThreeb', 25686)
           player:setLocalVar('NMTRewThreec', 27117)
           player:setLocalVar('NMTRewThreed', 27302)
           player:setLocalVar('NMTRewThreee', 27473)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Shinryu Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26678)
           player:setLocalVar('NMTRewThreeb', 26854)
           player:setLocalVar('NMTRewThreec', 27030)
           player:setLocalVar('NMTRewThreed', 27206)
           player:setLocalVar('NMTRewThreee', 27382)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Triton Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26668)
           player:setLocalVar('NMTRewThreeb', 26844)
           player:setLocalVar('NMTRewThreec', 27020)
           player:setLocalVar('NMTRewThreed', 27196)
           player:setLocalVar('NMTRewThreee', 27372)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Vale Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 26672)
           player:setLocalVar('NMTRewThreeb', 26848)
           player:setLocalVar('NMTRewThreec', 27024)
           player:setLocalVar('NMTRewThreed', 27200)
           player:setLocalVar('NMTRewThreee', 27376)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page48
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page50
           delaySendMenu(player)
         end
    },
}
page50 =
{
    {
        'Venerian Set NQ',
         function(player)
           player:setLocalVar('NMTRewThreea', 25615)
           player:setLocalVar('NMTRewThreeb', 25688)
           player:setLocalVar('NMTRewThreec', 27119)
           player:setLocalVar('NMTRewThreed', 27304)
           player:setLocalVar('NMTRewThreee', 27475)
           menu.options = page51
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page49
           delaySendMenu(player)
         end
    },
}
page51 =
{
        {
        'Yes',
         function(player)
         local NMtthreea = player:getLocalVar('NMTRewThreea')
         local NMtthreeb = player:getLocalVar('NMTRewThreeb')
         local NMtthreec = player:getLocalVar('NMTRewThreec')
         local NMtthreed = player:getLocalVar('NMTRewThreed')
         local NMtthreee = player:getLocalVar('NMTRewThreee')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtthreea)
               npcUtil.giveItem(player, NMtthreeb)
               npcUtil.giveItem(player, NMtthreec)
               npcUtil.giveItem(player, NMtthreed)
               npcUtil.giveItem(player, NMtthreee)
               player:setCharVar('NMTRewThreeComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T4 Milestone rewards Seekers of Auoulin Ring +1--------------------------------------------
----------------------------------------------------------------------------------------------
page52 =
{
    {
        'Adoulin Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26192)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Gorney Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26197)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Haverton Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26198)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Janniston Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26195)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Karieyh Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26199)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page53
           delaySendMenu(player)
         end
    },
}
page53 =
{
    {
        'Orvail Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26203)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Renaye Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26196)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Shneddick Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26202)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Thurandaut Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26201)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Vocane Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26200)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page52
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page54
           delaySendMenu(player)
         end
    },
}
page54 =
{
    {
        'Weatherspoon Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26194)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Woltaris Ring +1',
         function(player)
           player:setLocalVar('NMTRewFour', 26193)
           menu.options = page55
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page53
           delaySendMenu(player)
         end
    },
}
page55 =
{
        {
        'Yes',
         function(player)
         local NMtfour = player:getLocalVar('NMTRewFour')
               if player:hasItem(NMtfour) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtfour)
               player:setCharVar('NMTRewFourComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T5 Milestone rewards Escha RuAun Torque ---------------------------------------------------
----------------------------------------------------------------------------------------------
page56 =
{
    {
        'Carnal Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26005)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Acantha Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26010)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Melic Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26012)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Deceivers Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26014)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Maskirova Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26011)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page57
           delaySendMenu(player)
         end
    },
}
page57 =
{
    {
        'Agelast Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26008)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Yarak Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26009)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Decimus Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26006)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Bilious Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26007)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Henic Torque',
         function(player)
           player:setLocalVar('NMTRewFive', 26013)
           menu.options = page58
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page56
           delaySendMenu(player)
         end
    },
}
page58 =
{
        {
        'Yes',
         function(player)
         local NMtfive = player:getLocalVar('NMTRewFive')
               if player:hasItem(NMtfive) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtfive)
               player:setCharVar('NMTRewFiveComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T6 Milestone rewards Kaja Weapon ----------------------------------------------------------
----------------------------------------------------------------------------------------------
page59 =
{
    {
        'Kaja Knuckles',
         function(player)
           player:setLocalVar('NMTRewSix', 21518)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Knife',
         function(player)
           player:setLocalVar('NMTRewSix', 21564)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Sword',
         function(player)
           player:setLocalVar('NMTRewSix', 21620)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Claymore',
         function(player)
           player:setLocalVar('NMTRewSix', 21673)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Axe',
         function(player)
           player:setLocalVar('NMTRewSix', 21721)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page60
           delaySendMenu(player)
         end
    },
}
page60 =
{
    {
        'Kaja Chopper',
         function(player)
           player:setLocalVar('NMTRewSix', 21778)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Scythe',
         function(player)
           player:setLocalVar('NMTRewSix', 21829)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Lance',
         function(player)
           player:setLocalVar('NMTRewSix', 21882)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Katana',
         function(player)
           player:setLocalVar('NMTRewSix', 21921)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Tachi',
         function(player)
           player:setLocalVar('NMTRewSix', 21974)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page59
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page61
           delaySendMenu(player)
         end
    },
}
page61 =
{
    {
        'Kaja Rod',
         function(player)
           player:setLocalVar('NMTRewSix', 22030)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Staff',
         function(player)
           player:setLocalVar('NMTRewSix', 22085)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Bow',
         function(player)
           player:setLocalVar('NMTRewSix', 22111)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Kaja Grip',
         function(player)
           player:setLocalVar('NMTRewSix', 22217)
           menu.options = page63
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page60
           delaySendMenu(player)
         end
    },
}
page62 =
{
}
page63 =
{
        {
        'Yes',
         function(player)
         local NMtsix = player:getLocalVar('NMTRewSix')
               if player:hasItem(NMtsix) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtsix)
               player:setCharVar('NMTRewSixComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
page64 =
{
    {
        'Main Menu',
         function(player)
           menu.options = page1
           delaySendMenu(player)
         end
    },
    {
        'Tier Reward Menu',
         function(player)
           menu.options = page65
           delaySendMenu(player)
         end
    },
}
page65 =
{
    {
        'Tier 1 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
            if player:getCharVar('NMTRewOneComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 50 and
               player:getCharVar('NMTRewSixComp') ~= 1 then
               menu.options = page43
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 50+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 2 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewTwoComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 100 and
               player:getCharVar('NMTRewTwoComp') ~= 1 then
               menu.options = page46
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 100+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 3 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewThreeComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 150 and
               player:getCharVar('NMTRewThreeComp') ~= 1 then
               menu.options = page48
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 150+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 4 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewFourComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 200 and
               player:getCharVar('NMTRewFourComp') ~= 1 then
               menu.options = page52
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 200+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 5 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewFiveComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 250 and
               player:getCharVar('NMTRewFiveComp') ~= 1 then
               menu.options = page56
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 250+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 6 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewSixComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 300 and
               player:getCharVar('NMTRewSixComp') ~= 1 then
               menu.options = page59
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 300 Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Previous Page!',
         function(player)
           menu.options = page64
           delaySendMenu(player)
         end
    },
}

m:addOverride('xi.zones.Rabao.Zone.onInitialize', function(zone)
    --  Call the zone's original function for onInitialize
    super(zone)
    local Draider = zone:insertDynamicEntity({

        --  NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Draider', 
        look = '0000b50a00000000000000000000000000000000',
        x = -37.3691,
        y = 0.0000,
        z = -39.9455,
        rotation = 5,
        widescan = 1,


     onTrade = function(player, npc, trade)
         --  store Rusty Coin
             local storedRC = player:getCharVar('StoredRC')
             local count = trade:getItemCount()
             if trade:hasItemQty(4049, count) then --  4049
                      local total = player:getCharVar('StoredRC') + count
                      if total > 1 then 
                         player:setCharVar('StoredRC', total)
                         player:tradeComplete()
                      end
               player:printToPlayer(string.format('Thank you for allowing me to hold your %s Rusty Coins.',count), 0, 'Draider') 
               player:printToPlayer(string.format('You current Rusty Coin Balance is %s. ',storedRC + count), 0, 'Draider') 
             end

                 --  give rusty coins back base on amount of gil traded, if you have the inventory space
               if npcUtil.tradeHas(trade, xi.item.GIL) then
                     local countx = trade:getItemQty(65535)
                     local quantity  = player:getCharVar('StoredRC')
                     local stacks    = math.floor(countx / 12)
                     local remainder = countx % 12
                     local slotsNeeded = stacks
                           if remainder > 0 then
                              slotsNeeded = slotsNeeded + 1
                           end
                                  if countx < quantity then
                                    if countx > 0 then
                                     if player:getFreeSlotsCount() < slotsNeeded then
                                        player:printToPlayer('You cannot withdrawn that amount. ', 0, 'Draider')
                                        player:printToPlayer('Please check your inventory and try again. ', 0, 'Draider')
                                        return
                                     else
                                       player:addItem(4049, countx)
                                       player:setCharVar('StoredRC', quantity - countx)
                                       player:printToPlayer(string.format('You have withdrawn %s rusty coins. ',countx), 0, 'Draider')
                                       player:printToPlayer(string.format('Your remaining balance of rusty coins is %s. ',player:getCharVar('StoredRC')), 0, 'Draider') 
                                     end
                                    end
                                  else
                                       player:printToPlayer('You cannot withdrawn that amount. You are trying to withdraw more rusty coins', 0, 'Draider')
                                       player:printToPlayer(string.format('than you have. Your current stored rusty coins is %s',quantity), 0, 'Draider')
                                  end  
               end
    end,

        onTrigger = function(player, npc)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             player:printToPlayer('Welcome to the Notorious Monster Hunt Shop!', 0, 'Draider')
             player:printToPlayer(string.format('You have currently killed %s of 300 NMs!',totalkillc), 0, 'Draider') 
             menu.options = page64
             delaySendMenu(player)
        end,
    })
    utils.unused(Draider)
end)

return m
--[[
Introducing Draider the New NMHunt Reward NPC located in Rabao.
               Tier 1 Reward - 1 Sky Abj Set +1, Unlocks Trust Shop - Purchased with Rusted Coins
               Tier 2 Reward - 1 Voidwatch / Legion Abj Set +1, Unlocks Style Lock Weapon Shop - Purchased with Rusted Coins
               Tier 3 Reward - 1 Escha RuAun Abj Set NQ, Unlocks Style Lock Armor Shop - Purchased with Rusted Coins
               Tier 4 Reward - 1 Seekers of Aoulin Ring +1, Unlocks JSE Ambuscade Cape Shop - Purchased with Rusted Coins
               Tier 5 Reward - 1 Escha RuAun Torque, Unlocks JSE Reive / Incursion Cape Shop - Purchased with Rusted Coins
               Tier 6 Reward - 1 Kaja Weapon, Unlocks JSE Neck Shop - Purchased with Rusted Coins
]]--