-----------------------------------
-- Module - NM Hunt
-- desc: Summons 300 New NM's'
-- note: has kill count added to npc rewards, rusty coins drop for npc shop
-----------------------------------
require("modules/module_utils")
require("scripts/zones/North_Gustaberg/Zone")
require("scripts/zones/West_Ronfaure/Zone")
require("scripts/zones/East_Ronfaure/Zone")
require("scripts/zones/Outer_Horutoto_Ruins/Zone")
require("scripts/zones/Fort_Ghelsba/Zone")
require("scripts/zones/Inner_Horutoto_Ruins/Zone")
require("scripts/zones/Palborough_Mines/Zone")
require("scripts/zones/La_Theine_Plateau/Zone")
require("scripts/zones/Yughott_Grotto/Zone")
require("scripts/zones/South_Gustaberg/Zone")
require("scripts/zones/West_Sarutabaruta/Zone")
require("scripts/zones/Konschtat_Highlands/Zone")
require("scripts/zones/Ghelsba_Outpost/Zone")
require("scripts/zones/Tahrongi_Canyon/Zone")
require("scripts/zones/Ranguemont_Pass/Zone")
require("scripts/zones/East_Sarutabaruta/Zone")
require("scripts/zones/King_Ranperres_Tomb/Zone")
require("scripts/zones/Giddeus/Zone")
require("scripts/zones/Pashhow_Marshlands/Zone")
require("scripts/zones/Labyrinth_of_Onzozo/Zone")
require("scripts/zones/Valkurm_Dunes/Zone")
require("scripts/zones/Beadeaux/Zone")
require("scripts/zones/Ordelles_Caves/Zone")
require("scripts/zones/Lower_Delkfutts_Tower/Zone")
require("scripts/zones/Carpenters_Landing/Zone")
require("scripts/zones/Bostaunieux_Oubliette/Zone")
require("scripts/zones/Maze_of_Shakhrami/Zone")
require("scripts/zones/Yuhtunga_Jungle/Zone")
require("scripts/zones/Gusgen_Mines/Zone")
require("scripts/zones/Rolanberry_Fields/Zone")
require("scripts/zones/Qufim_Island/Zone")
require("scripts/zones/Buburimu_Peninsula/Zone")
require("scripts/zones/Bibiki_Bay/Zone")
require("scripts/zones/Korroloka_Tunnel/Zone")
require("scripts/zones/Jugner_Forest/Zone")
require("scripts/zones/Davoi/Zone")
require("scripts/zones/Meriphataud_Mountains/Zone")
require("scripts/zones/Quicksand_Caves/Zone")
require("scripts/zones/Garlaige_Citadel/Zone")
require("scripts/zones/Behemoths_Dominion/Zone")
require("scripts/zones/Misareaux_Coast/Zone")
require("scripts/zones/The_Boyahda_Tree/Zone")
require("scripts/zones/Middle_Delkfutts_Tower/Zone")
require("scripts/zones/The_Sanctuary_of_ZiTah/Zone")
require("scripts/zones/Eastern_Altepa_Desert/Zone")
require("scripts/zones/Gustav_Tunnel/Zone")
require("scripts/zones/Sauromugue_Champaign/Zone")
require("scripts/zones/Kuftal_Tunnel/Zone")
require("scripts/zones/Lufaise_Meadows/Zone")
require("scripts/zones/Sea_Serpent_Grotto/Zone")
require("scripts/zones/Toraimarai_Canal/Zone")
require("scripts/zones/RoMaeve/Zone")
require("scripts/zones/Mount_Zhayolm/Zone")
require("scripts/zones/FeiYin/Zone")
require("scripts/zones/Arrapago_Reef/Zone")
require("scripts/zones/Ifrits_Cauldron/Zone")
require("scripts/zones/Uleguerand_Range/Zone")
require("scripts/zones/Cape_Teriggan/Zone")
require("scripts/zones/Arrapago_Remnants/Zone")
require("scripts/zones/Caedarva_Mire/Zone")
require("scripts/zones/Monastic_Cavern/Zone")
require("scripts/zones/Bhaflau_Thickets/Zone")
require("scripts/zones/Castle_Oztroja/Zone")
require("scripts/zones/Attohwa_Chasm/Zone")
require("scripts/zones/Crawlers_Nest/Zone")
require("scripts/zones/Dangruf_Wadi/Zone")
require("scripts/zones/Temple_of_Uggalepih/Zone")
require("scripts/zones/Wajaom_Woodlands/Zone")
require("scripts/zones/Abyssea-Altepa/Zone")
require("scripts/zones/Abyssea-Uleguerand/Zone")
require("scripts/zones/Abyssea-La_Theine/Zone")
require("scripts/zones/Rolanberry_Fields_[S]/Zone")
require("scripts/zones/Beaucedine_Glacier_[S]/Zone")
require("scripts/zones/Abyssea-Grauberg/Zone")
require("scripts/zones/AlTaieu/Zone")
require("scripts/zones/Castle_Oztroja_[S]/Zone")
require("scripts/zones/Mamook/Zone")
require("scripts/zones/Abyssea-Tahrongi/Zone")
require("scripts/zones/Batallia_Downs_[S]/Zone")
require("scripts/zones/Abyssea-Konschtat/Zone")
require("scripts/zones/Abyssea-Vunkerl/Zone")
require("scripts/zones/Halvung/Zone")
require("scripts/zones/The_Shrine_of_RuAvitau/Zone")
require("scripts/zones/Castle_Zvahl_Baileys/Zone")
require("scripts/zones/North_Gustaberg_[S]/Zone")
require("scripts/zones/The_Eldieme_Necropolis_[S]/Zone")
require("scripts/zones/Pashhow_Marshlands_[S]/Zone")
require("scripts/zones/Castle_Zvahl_Keep/Zone")
require("scripts/zones/Meriphataud_Mountains_[S]/Zone")
require("scripts/zones/Sih_Gates/Zone")
require("scripts/zones/Cirdas_Caverns/Zone")
require("scripts/zones/Morimar_Basalt_Fields/Zone")
require("scripts/zones/Yorcia_Weald/Zone")
require("scripts/zones/Sauromugue_Champaign_[S]/Zone")
require("scripts/zones/Foret_de_Hennetiel/Zone")
require("scripts/zones/Woh_Gates/Zone")
require("scripts/zones/Moh_Gates/Zone")
require("scripts/zones/Dho_Gates/Zone")
require("scripts/zones/Marjami_Ravine/Zone")
-------------------------


local NMHuntone  = 
{
{'Ailmar', 5, 192, '00003c0200000000000000000000000000000000', xi.zone.NORTH_GUSTABERG, -563.458, 39.861, 87.275, 30, 'North_Gustaberg'}, 
{'Amara', 47, 82, '0000f10700000000000000000000000000000000', xi.zone.WEST_RONFAURE, -328.279, -52.661, 257.137, 96, 'West_Ronfaure'}, 
{'Aquarun', 51, 111, '0000340100000000000000000000000000000000', xi.zone.EAST_RONFAURE, 183, -20.601, -315, 141, 'East_Ronfaure'}, 
{'Axil', 26, 101, '0000a80100000000000000000000000000000000', xi.zone.OUTER_HORUTOTO_RUINS, 496, -1, -737, 127, 'Outer_Horutoto_Ruins'}, 
{'Bellas', 32, 137, '0000500500000000000000000000000000000000', xi.zone.FORT_GHELSBA, 15.586, -47.999, 43.127, 124, 'Fort_Ghelsba'}, 
{'Bonna', 67, 136, '00000e0300000000000000000000000000000000', xi.zone.NORTH_GUSTABERG, -621.717, 40.199, 303.203, 8, 'North_Gustaberg'}, 
{'Brina', 50, 90, '0000960200000000000000000000000000000000', xi.zone.OUTER_HORUTOTO_RUINS, -506.61, -0.032, -700.43, 65, 'Outer_Horutoto_Ruins'}, 
{'Celestia', 1, 136, '0000640100000000000000000000000000000000', xi.zone.INNER_HORUTOTO_RUINS, -277.1797, 0.5000, 123.4471, 44, 'Inner_Horutoto_Ruins'}, 
{'Cluym', 48, 82, '00001b0800000000000000000000000000000000', xi.zone.PALBOROUGH_MINES, 138.839, -32.5, 72.357, 17, 'Palborough_Mines'}, 
{'Daemeon', 8, 128, '0000900100000000000000000000000000000000', xi.zone.LA_THEINE_PLATEAU, 448.9067, 24.3691, -515.7362, 145, 'La_Theine_Plateau'}, 
{'Dark Rain', 63, 124, '00007c0100000000000000000000000000000000', xi.zone.FORT_GHELSBA, -96.095, -16.151, 64.657, 127, 'Fort_Ghelsba'}, 
{'Diamond', 2, 211, '00001b0300000000000000000000000000000000', xi.zone.YUGHOTT_GROTTO, -217.593, -0.5, -99.157, 7, 'Yughott_Grotto'}, 
{'Dracyian', 27, 29, '0000700100000000000000000000000000000000', xi.zone.SOUTH_GUSTABERG, -468.602, 40.914, -328.583, 56, 'South_Gustaberg'}, 
{'Edmyla', 70, 136, '0000440800000000000000000000000000000000', xi.zone.WEST_SARUTABARUTA, -396.253, -28.661, 375.657, 127, 'West_Sarutabaruta'}, 
{'Elora', 41, 106, '0000100100000000000000000000000000000000', xi.zone.WEST_RONFAURE, -281, -19, -220, 127, 'West_Ronfaure'}, 
{'Estelar', 49, 83, '0000120100000000000000000000000000000000', xi.zone.KONSCHTAT_HIGHLANDS, 405.1140, 32.4702, 542.6454, 143, 'Konschtat_Highlands'}, 
{'Finrod', 19, 130, '0000300100000000000000000000000000000000', xi.zone.LA_THEINE_PLATEAU, -177.9958, 7.8799, 265.8506, 45, 'La_Theine_Plateau'}, 
{'Fundar', 29, 96, '0000e80700000000000000000000000000000000', xi.zone.SOUTH_GUSTABERG, 159.616, -39.97, -461.112, 127, 'South_Gustaberg'}, 
{'Gelda', 21, 136, '0000ab0800000000000000000000000000000000', xi.zone.EAST_RONFAURE, 98.66, -58.176, 205.185, 127, 'East_Ronfaure'}, 
{'Golvig', 53, 100, '0000080100000000000000000000000000000000', xi.zone.GHELSBA_OUTPOST, -203.658, -10, 284.158, 127, 'Ghelsba_Outpost'}, 
{'Haemir', 49, 97, '0000c30800000000000000000000000000000000', xi.zone.TAHRONGI_CANYON, -252.3954, 16.4354, -563.6644, 66, 'Tahrongi_Canyon'}, 
{'Igor', 23, 145, '00002d0400000000000000000000000000000000', xi.zone.RANGUEMONT_PASS, 125.987, 3.561, -57.222, 127, 'Ranguemont_Pass'}, 
{'Ithi', 46, 100, '0000680b00000000000000000000000000000000', xi.zone.WEST_SARUTABARUTA, -348.723, 2.397, -435.091, 13, 'West_Sarutabaruta'}, 
{'Jhaan', 76, 136, '00004f0500000000000000000000000000000000', xi.zone.GHELSBA_OUTPOST, -6.5707, 0.1143, 34.1436, 46, 'Ghelsba_Outpost'}, 
{'Keara', 3, 203, '00001d0300000000000000000000000000000000', xi.zone.EAST_RONFAURE, 318.9226, -20.000, -157.6521, 95, 'East_Ronfaure'}, 
{'Kyla', 53, 121, '0000b00100000000000000000000000000000000', xi.zone.INNER_HORUTOTO_RUINS, -302.031, -0.054, -96.892, 96, 'Inner_Horutoto_Ruins'}, 
{'Lavatius', 53, 194, '0000180100000000000000000000000000000000', xi.zone.YUGHOTT_GROTTO, 418.2748, -40.2850, 95.4236, 127, 'Yughott_Grotto'}, 
{'Lunarex', 44, 97, '0000dc0700000000000000000000000000000000', xi.zone.EAST_SARUTABARUTA, -238.093, -22.999, 656.609, 126, 'East_Sarutabaruta'}, 
{'Malumka', 38, 98, '0000bc0100000000000000000000000000000000', xi.zone.LA_THEINE_PLATEAU, 596.3876, 24.4548, -66.5219, 133, 'La_Theine_Plateau'}, 
{'Misi', 44, 110, '0000f90100000000000000000000000000000000', xi.zone.NORTH_GUSTABERG, 234.104, -40.332, 462.288, 127, 'North_Gustaberg'}, 
{'Mysris', 8, 67, '0100030100100720073007400750006000700000', xi.zone.OUTER_HORUTOTO_RUINS, -458.321, -0.521, -663.434, 102, 'Outer_Horutoto_Ruins'}, 
{'Nemredilth', 52, 118, '00005c0100000000000000000000000000000000', xi.zone.INNER_HORUTOTO_RUINS, -223.916, -10.015, 14.463, 127, 'Inner_Horutoto_Ruins'}, 
{'Nindr', 63, 124, '00007c0100000000000000000000000000000000', xi.zone.KING_RANPERRES_TOMB, 57.7294, 6.9011, 261.3789, 127, 'King_Ranperres_Tomb'}, 
{'Olwyn', 17, 143, '0000870200000000000000000000000000000000', xi.zone.KING_RANPERRES_TOMB, -206.69, 5.973, 14.909, 127, 'King_Ranperres_Tomb'}, 
{'Orym', 53, 100, '0000080100000000000000000000000000000000', xi.zone.KONSCHTAT_HIGHLANDS, 384.9381, -14.6082, -386.3357, 65, 'Konschtat_Highlands'}, 
{'Pondra', 31, 96, '0000e50200000000000000000000000000000000', xi.zone.GIDDEUS, -58, -1, -448, 13, 'Giddeus'}, 
{'Ragna', 37, 108, '0000540100000000000000000000000000000000', xi.zone.SOUTH_GUSTABERG, -71.9601, -0.0442, -199.6062, 101, 'South_Gustaberg'}, 
{'Rennyn', 36, 100, '00000c0100000000000000000000000000000000', xi.zone.PALBOROUGH_MINES, 14, -31, -94, 16, 'Palborough_Mines'}, 
{'Sabir', 8, 1, '0000410500000000000000000000000000000000', xi.zone.TAHRONGI_CANYON, -483.435, -40.169, -128.289, 191, 'Tahrongi_Canyon'}, 
{'Sapphire', 7, 67, '0100010100102320233023402350006000700000', xi.zone.GHELSBA_OUTPOST, -140.7027, -10.0000, 47.6565, 242, 'Ghelsba_Outpost'}, 
{'Shikta', 10, 140, '0000f10300000000000000000000000000000000', xi.zone.PALBOROUGH_MINES, 66.072, -16.322, 105.198, 30, 'Palborough_Mines'}, 
{'Slyvek', 51, 90, '0000240100000000000000000000000000000000', xi.zone.GIDDEUS, -99, 18, 127, 91, 'Giddeus'}, 
{'Star Light', 28, 192, '0000480400000000000000000000000000000000', xi.zone.RANGUEMONT_PASS, -220.195, 3.568, -232.002, 127, 'Ranguemont_Pass'}, 
{'Sunshine', 14, 145, '00000a0000000000000000000000000000000000', xi.zone.WEST_RONFAURE, -477.675, -20.59, -207.093, 48, 'West_Ronfaure'}, 
{'Tanulia', 29, 101, '0000980100000000000000000000000000000000', xi.zone.EAST_SARUTABARUTA, 112.816, -4.761, -40.004, 6, 'East_Sarutabaruta'}, 
{'Tisnip', 72, 104, '0000840100000000000000000000000000000000', xi.zone.EAST_SARUTABARUTA, -359.996, -0.336, -156.495, 127, 'East_Sarutabaruta'}, 
{'Turvass', 70, 137, '0000fa0700000000000000000000000000000000', xi.zone.WEST_SARUTABARUTA, 97.6485, -0.2714, -73.9662, 77, 'West_Sarutabaruta'}, 
{'Vaegon', 6, 110, '00008c0100000000000000000000000000000000', xi.zone.TAHRONGI_CANYON, -443.2728, 16.0000, 398.0912, 217, 'Tahrongi_Canyon'}, 
{'Vinelle', 33, 107, '0000480100000000000000000000000000000000', xi.zone.KONSCHTAT_HIGHLANDS, 160, 24, 121, 0, 'Konschtat_Highlands'}, 
{'Wilkass', 7, 140, '0000ea0300000000000000000000000000000000', xi.zone.GIDDEUS, -176.625, -0.776, 174.952, 127, 'Giddeus'}, 
}
local NMHunttwo  = 
{
{'Akibrus', 45, 103, '0000c00100000000000000000000000000000000', xi.zone.LA_THEINE_PLATEAU, -399.3134, 0.2918, -310.1421, 214, 'La_Theine_Plateau'}, 
{'Amerstal', 2, 21, '0000730400000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS, 296.9673, 25.000, 391.7409, 103, 'Pashhow_Marshlands'}, 
{'Asralyn', 36, 106, '0000950200000000000000000000000000000000', xi.zone.LABYRINTH_OF_ONZOZO, 129, 15, 215, 49, 'Labyrinth_of_Onzozo'}, 
{'Ayldrad', 22, 143, '00008b0200000000000000000000000000000000', xi.zone.VALKURM_DUNES, 648.1425, 0.1967, -21.0683, 22, 'Valkurm_Dunes'}, 
{'Bellesta', 39, 118, '00005c0200000000000000000000000000000000', xi.zone.BEADEAUX, 237.0848, -3.2500, -3.0019, 127, 'Beadeaux'}, 
{'Bonnwynn', 12, 147, '00008c0200000000000000000000000000000000', xi.zone.ORDELLES_CAVES, -84.74, 1.499, 613.137, 152, 'Ordelles_Caves'}, 
{'Brobek', 3, 21, '0000610400000000000000000000000000000000', xi.zone.LOWER_DELKFUTTS_TOWER, 548.553, 15.591, 34.062, 127, 'Lower_Delkfutts_Tower'}, 
{'Chalia', 8, 1, '0000410500000000000000000000000000000000', xi.zone.CARPENTERS_LANDING, 120.383, -5.733, -390.01, 43, 'Carpenters_Landing'}, 
{'Coalak', 28, 184, '0000a70100000000000000000000000000000000', xi.zone.BOSTAUNIEUX_OUBLIETTE, -172.845, 12.315, -219.144, 206, 'Bostaunieux_Oubliette'}, 
{'Daernip', 49, 118, '0000fb0100000000000000000000000000000000', xi.zone.BEADEAUX, -179.5, 8.442, -182.86, 83, 'Beadeaux'}, 
{'Darvyn', 29, 173, '0000aa0100000000000000000000000000000000', xi.zone.MAZE_OF_SHAKHRAMI, -86.3624, -0.7659, -13.0469, 123, 'Maze_of_Shakhrami'}, --Artox
{'Digroi', 17, 146, '00004c0100000000000000000000000000000000', xi.zone.LA_THEINE_PLATEAU, -729.369, 15.997, 345.898, 127, 'La_Theine_Plateau'}, 
{'Dray', 6, 110, '00008c0100000000000000000000000000000000', xi.zone.YUHTUNGA_JUNGLE, -626.739, -0.76, 27.452, 57, 'Yuhtunga_Jungle'}, 
{'Eiki', 1, 146, '0000a40100000000000000000000000000000000', xi.zone.GUSGEN_MINES, -90, -24, 339, 75, 'Gusgen_Mines'}, 
{'Elwin', 54, 103, '0000890200000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS, -406.194, -7.875, -249.45, 218, 'Rolanberry_Fields'}, 
{'Fabien', 38, 103, '0000fe0100000000000000000000000000000000', xi.zone.QUFIM_ISLAND, -291.8047, -20.2489, 51.3799, 127, 'Qufim_Island'}, 
{'Flammedra', 58, 109, '0000850200000000000000000000000000000000', xi.zone.LOWER_DELKFUTTS_TOWER, 341.809, -0.5, 8.751, 69, 'Lower_Delkfutts_Tower'}, 
{'Gaemon', 24, 146, '0000a00100000000000000000000000000000000', xi.zone.MAZE_OF_SHAKHRAMI, -198.9068, 0.0000, 1.3106, 3, 'Maze_of_Shakhrami'}, 
{'Gembelle', 60, 103, '00008f0200000000000000000000000000000000', xi.zone.BUBURIMU_PENINSULA, -81.741, 19.635, -325.773, 94, 'Buburimu_Peninsula'}, 
{'Gremin', 45, 118, '0000170300000000000000000000000000000000', xi.zone.BIBIKI_BAY, -562.908, -3.936, -802.141, 110, 'Bibiki_Bay'}, 
{'Hastos', 6, 13, '0000b90200000000000000000000000000000000', xi.zone.BIBIKI_BAY, 79.306, -28.524, 515.927, 127, 'Bibiki_Bay'}, 
{'Ilbryn', 23, 184, '0000830200000000000000000000000000000000', xi.zone.BUBURIMU_PENINSULA, 438.065, 0.0000, -205.5780, 229, 'Buburimu_Peninsula'}, 
{'Jaderyn', 2, 193, '0000140100000000000000000000000000000000', xi.zone.QUFIM_ISLAND, -159, -19, 244, 127, 'Qufim_Island'}, 
{'Jinvia', 63, 103, '0000eb0100000000000000000000000000000000', xi.zone.BUBURIMU_PENINSULA, 84.3147, 0.0991, -81.3796, 114, 'Buburimu_Peninsula'}, 
{'Kezda', 41, 118, '00005a0200000000000000000000000000000000', xi.zone.BOSTAUNIEUX_OUBLIETTE, -140.3009, -0.0221, -63.8608, 192, 'Bostaunieux_Oubliette'}, 
{'Kymil', 26, 4, '00000d0100000000000000000000000000000000', xi.zone.LABYRINTH_OF_ONZOZO, -124.003, -0.189, 126.307, 56, 'Labyrinth_of_Onzozo'}, 
{'Lavinia', 2, 46, '00005d0100000000000000000000000000000000', xi.zone.KORROLOKA_TUNNEL, -383.629, -5, 72.13, 129, 'Korroloka_Tunnel'}, 
{'Lymseia', 7, 140, '0000ea0300000000000000000000000000000000', xi.zone.JUGNER_FOREST, -333.937, -1.242, -118.985, 139, 'Jugner_Forest'}, 
{'Merlara', 19, 190, '0000700100000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS, -148.0522, 25.000, 411.3506, 158, 'Pashhow_Marshlands'}, 
{'Misma', 67, 104, '0000750200000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS, -488.107, 25.012, -440.112, 127, 'Pashhow_Marshlands'}, 
{'Mystique', 54, 104, '0000980100000000000000000000000000000000', xi.zone.YUHTUNGA_JUNGLE, -423.903, 16.796, -325.448, 29, 'Yuhtunga_Jungle'}, 
{'Nesterin', 44, 110, '0000f90100000000000000000000000000000000', xi.zone.BIBIKI_BAY, 452.358, -20.485, 789.918, 139, 'Bibiki_Bay'}, 
{'Noi', 39, 126, '0000d00200000000000000000000000000000000', xi.zone.GUSGEN_MINES, -156.254, 1, 309.429, 127, 'Gusgen_Mines'}, 
{'Onas', 51, 123, '0000110100000000000000000000000000000000', xi.zone.JUGNER_FOREST, 276.37, -12.807, -342.771, 73, 'Jugner_Forest'}, 
{'Pearl Moon', 25, 118, '0000bd0100000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS, 229.9556, 8.3171, 213.4877, 208, 'Rolanberry_Fields'}, 
{'Pondral', 10, 227, '00003c0200000000000000000000000000000000', xi.zone.VALKURM_DUNES, -763.527, -4.5, 94.163, 127, 'Valkurm_Dunes'}, 
{'Ragriel', 2, 19, '0000740400000000000000000000000000000000', xi.zone.ORDELLES_CAVES, -221.3, 28, -120.57, 165, 'Ordelles_Caves'}, 
{'Reyda', 7, 13, '0000aa0200000000000000000000000000000000', xi.zone.DAVOI, -271.446, 3.034, -186.121, 127, 'Davoi'}, 
{'Saeya', 19, 141, '0000680200000000000000000000000000000000', xi.zone.MERIPHATAUD_MOUNTAINS, -521.581, 15.257, 514.968, 0, 'Meriphataud_Mountains'}, 
{'Sarielle', 60, 119, '0000550200000000000000000000000000000000', xi.zone.KORROLOKA_TUNNEL, -469.3641, -9.7220, 51.9329, 26, 'Korroloka_Tunnel'}, 
{'Shirmyl', 2, 17, '0000680400000000000000000000000000000000', xi.zone.MERIPHATAUD_MOUNTAINS, -311.3565, -7.7689, 123.8249, 252, 'Meriphataud_Mountains'}, 
{'Snowflake', 51, 123, '0000110100000000000000000000000000000000', xi.zone.BEADEAUX, -264.874, 0.499, -155.646, 187, 'Beadeaux'}, 
{'Starburst', 48, 24, '00000b0000000000000000000000000000000000', xi.zone.DAVOI, 160.000, 3.8271, -72.5000, 229, 'Davoi'}, 
{'Sybella', 3, 17, '0000580400000000000000000000000000000000', xi.zone.ORDELLES_CAVES, -107.6, -15.83, 136.761, 50, 'Ordelles_Caves'}, 
{'Tazlen', 8, 3, '0000510500000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS, -293.837, 1.801, 22.596, 127, 'Rolanberry_Fields'}, 
{'Tisthel', 1, 196, '00005c0100000000000000000000000000000000', xi.zone.KORROLOKA_TUNNEL, -150, 0.5, 25, 127, 'Korroloka_Tunnel'}, 
{'Twilight', 13, 147, '00009c0200000000000000000000000000000000', xi.zone.VALKURM_DUNES, 136.144, -7.543, 68.237, 127, 'Valkurm_Dunes'}, 
{'Vaella', 33, 100, '0000650200000000000000000000000000000000', xi.zone.LOWER_DELKFUTTS_TOWER, 397, -16.276, 50, 127, 'Lower_Delkfutts_Tower'}, 
{'Virfi', 19, 144, '0000bc0100000000000000000000000000000000', xi.zone.CARPENTERS_LANDING, -278.9129, -6.0000, -80.3542, 59, 'Carpenters_Landing'}, 
{'Wiska', 39, 110, '00007c0100000000000000000000000000000000', xi.zone.MAZE_OF_SHAKHRAMI, -217.799, 16.483, -48.543, 41, 'Maze_of_Shakhrami'}, 
}
local NMHuntthree  = 
{
{'Akkar', 8, 152, '00004f0200000000000000000000000000000000', xi.zone.QUICKSAND_CAVES, -938.853, 16.716, -350.715, 38, 'Quicksand_Caves'}, 
{'Angor', 31, 111, '0000b00100000000000000000000000000000000', xi.zone.GARLAIGE_CITADEL, -140.1770, 0.0000, 276.2675, 200, 'Garlaige_Citadel'}, 
{'Astra', 10, 179, '05009c0700000000000000000000000000000000', xi.zone.YUHTUNGA_JUNGLE, 373.4058, 21.5830, 232.1948, 255, 'Yuhtunga_Jungle'}, 
{'Azariah', 1, 10, '0000790400000000000000000000000000000000', xi.zone.BEHEMOTHS_DOMINION, 203.4112, 4.000, -85.3405, 93, 'Behemoths_Dominion'}, 
{'Belstram', 42, 102, '0000580100000000000000000000000000000000', xi.zone.MISAREAUX_COAST, -235.987, -31.895, 145.642, 121, 'Misareaux_Coast'}, 
{'Bragi', 70, 24, '0000760200000000000000000000000000000000', xi.zone.QUICKSAND_CAVES, -293.956, 1.475, 349.329, 47, 'Quicksand_Caves'}, 
{'Brulin', 2, 165, '0000160300000000000000000000000000000000', xi.zone.THE_BOYAHDA_TREE, -18, -19.2, -176.4, 0, 'The_Boyahda_Tree'}, 
{'Chandrelle', 94, 88, '00009a0200000000000000000000000000000000', xi.zone.YUHTUNGA_JUNGLE, 352.87, 3.5, 212.39, 228, 'Yuhtunga_Jungle'}, 
{'Corym', 24, 112, '0000080100000000000000000000000000000000', xi.zone.MIDDLE_DELKFUTTS_TOWER, -488.086, -95.848, 30.946, 5, 'Middle_Delkfutts_Tower'}, 
{'Dagen', 2, 169, '0000150100000000000000000000000000000000', xi.zone.THE_SANCTUARY_OF_ZITAH, -517.12, 0.214, 184.856, 79, 'The_Sanctuary_of_ZiTah'}, 
{'Delvin', 16, 114, '0000990100000000000000000000000000000000', xi.zone.EASTERN_ALTEPA_DESERT, 37.521, 2.691, -58.087, 127, 'Eastern_Altepa_Desert'}, 
{'Dimlinn', 5, 179, '0500460400000000000000000000000000000000', xi.zone.GARLAIGE_CITADEL, -284.19, -0.012, 244.2, 39, 'Garlaige_Citadel'}, 
{'Drusila', 42, 123, '0000290500000000000000000000000000000000', xi.zone.MIDDLE_DELKFUTTS_TOWER, 71, -63, 45, 127, 'Middle_Delkfutts_Tower'}, 
{'Eilivur', 55, 25, '0000650100000000000000000000000000000000', xi.zone.GUSTAV_TUNNEL, -165.598, 0.218, -21.966, 66, 'Gustav_Tunnel'}, 
{'Engar', 18, 81, '0000e20700000000000000000000000000000000', xi.zone.THE_SANCTUARY_OF_ZITAH, 399.63, -0.335, -272.72, 0, 'The_Sanctuary_of_ZiTah'}, 
{'Fada', 12, 146, '00001a0300000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN, 92.631, -12.36, -306.195, 61, 'Sauromugue_Champaign'}, 
{'Floki', 48, 87, '0000c50800000000000000000000000000000000', xi.zone.MIDDLE_DELKFUTTS_TOWER, -59, -64.105, 45, 127, 'Middle_Delkfutts_Tower'}, 
{'Galdor', 13, 127, '0000e40100000000000000000000000000000000', xi.zone.KUFTAL_TUNNEL, 25.841, 20.252, 71.875, 83, 'Kuftal_Tunnel'}, 
{'Glacitus', 10, 149, '0000720200000000000000000000000000000000', xi.zone.GARLAIGE_CITADEL, -184.689, -0.012, 97.899, 182, 'Garlaige_Citadel'}, -- general
{'Gusak', 43, 123, '00002e0500000000000000000000000000000000', xi.zone.LUFAISE_MEADOWS, -305.444, -14.595, 222.056, 124, 'Lufaise_Meadows'}, 
{'Heptin', 38, 114, '0000360100000000000000000000000000000000', xi.zone.MISAREAUX_COAST, 451.672, 24.248, -345.027, 61, 'Misareaux_Coast'}, 
{'Ilyrana', 1, 67, '0000b80600000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN, -204.8, 8.975, 208.639, 98, 'Sauromugue_Champaign'}, 
{'Jai-Blynn', 49, 89, '0000c10800000000000000000000000000000000', xi.zone.EASTERN_ALTEPA_DESERT, -124.89, -8.576, 32.533, 64, 'Eastern_Altepa_Desert'}, 
{'Jodis', 42, 198, '00003c0200000000000000000000000000000000', xi.zone.THE_SANCTUARY_OF_ZITAH, -381.573, -0.247, -428.431, 123, 'The_Sanctuary_of_ZiTah'}, 
{'Killin', 14, 13, '0000170300000000000000000000000000000000', xi.zone.KUFTAL_TUNNEL, 119, -0.01, 38, 127, 'Kuftal_Tunnel'}, 
{'Kyra', 13, 13, '0000180000000000000000000000000000000000', xi.zone.SEA_SERPENT_GROTTO, 10.799, -0.665, 102.446, 127, 'Sea_Serpent_Grotto'}, 
{'Lija', 59, 114, '0000040500000000000000000000000000000000', xi.zone.LABYRINTH_OF_ONZOZO, -2.466, 0.194, -133.18, 127, 'Labyrinth_of_Onzozo'}, 
{'Lyra', 49, 121, '0000f00100000000000000000000000000000000', xi.zone.YHOATOR_JUNGLE, 298.9530, -1.1000, -447.6169, 205, 'Yhoator_Jungle'}, 
{'Midnight', 71, 24, '00007d0200000000000000000000000000000000', xi.zone.LUFAISE_MEADOWS, -374.644, -16.575, 112.638, 10, 'Lufaise_Meadows'}, 
{'Mistmael', 19, 123, '0000a00100000000000000000000000000000000', xi.zone.YHOATOR_JUNGLE, 217.5260, 0.5234, -208.9858, 179, 'Yhoator_Jungle'}, 
{'Nalra', 1, 9, '0000310100000000000000000000000000000000', xi.zone.RANGUEMONT_PASS, 156.6128, 23.7322, -202.0327, 244, 'Ranguemont_Pass'}, 
{'Night Moon', 1, 211, '00001b0300000000000000000000000000000000', xi.zone.TORAIMARAI_CANAL, -245.2953, 16.0465, 219.9081, 126, 'Toraimarai_Canal'}, 
{'Norok', 42, 120, '0000e50100000000000000000000000000000000', xi.zone.SEA_SERPENT_GROTTO, -295.103, 50.746, -284.661, 146, 'Sea_Serpent_Grotto'}, 
{'Onnyx', 10, 3, '0000600100000000000000000000000000000000', xi.zone.BEHEMOTHS_DOMINION, -70.571, -4.375, -85.672, 53, 'Behemoths_Dominion'}, 
{'Peregrine', 36, 146, '00003d0100000000000000000000000000000000', xi.zone.YHOATOR_JUNGLE, 8.0049, 0.4623, -370.2314, 84, 'Yhoator_Jungle'}, 
{'Prodos', 16, 29, '0000220100000000000000000000000000000000', xi.zone.TORAIMARAI_CANAL, -94.759, 15.5, 101.384, 192, 'Toraimarai_Canal'}, 
{'Rainbow', 5, 60, '05006b0700000000000000000000000000000000', xi.zone.LABYRINTH_OF_ONZOZO, -180.89, 9.336, -76.762, 127, 'Labyrinth_of_Onzozo'}, 
{'Rhenalyrr', 35, 157, '00005e0400000000000000000000000000000000', xi.zone.ROMAEVE, -109, -8.5, 39, 185, 'RoMaeve'}, 
{'Sakakara', 55, 94, '0000420800000000000000000000000000000000', xi.zone.MISAREAUX_COAST, 111.363, -17, 30.344, 141, 'Misareaux_Coast'}, 
{'Serpretus', 14, 176, '0000340200000000000000000000000000000000', xi.zone.RANGUEMONT_PASS, -62.9823, -6.0027, -58.9409, 56, 'Ranguemont_Pass'}, 
{'Silver Star', 53, 124, '0000d10400000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN, 329, 40, 372, 16, 'Sauromugue_Champaign'}, 
{'Sola', 6, 60, '05006a0700000000000000000000000000000000', xi.zone.ROMAEVE, -255.05, 3.499, -47.281, 2, 'RoMaeve'}, 
{'Stardust', 51, 114, '0000f80400000000000000000000000000000000', xi.zone.SEA_SERPENT_GROTTO, 112.5, 0.8, -126.2, 158, 'Sea_Serpent_Grotto'}, 
{'Syfas', 67, 24, '0000870100000000000000000000000000000000', xi.zone.GUSTAV_TUNNEL, -1.8996, -10.000, -156.4509, 144, 'Gustav_Tunnel'}, 
{'Tendris', 46, 112, '0000eb0200000000000000000000000000000000', xi.zone.MISAREAUX_COAST, -43.1896, -24.0000, 522.2825, 197, 'Misareaux_Coast'}, --Artox
{'Tiznys', 61, 206, '0000310900000000000000000000000000000000', xi.zone.THE_BOYAHDA_TREE, 14.206, 5.548, 109.486, 122, 'The_Boyahda_Tree'}, 
{'Twinkle', 1, 64, '00000a0700000000000000000000000000000000', xi.zone.EASTERN_ALTEPA_DESERT, -307, 8, -206, 127, 'Eastern_Altepa_Desert'}, 
{'Vasha', 35, 28, '0500fa0300000000000000000000000000000000', xi.zone.YHOATOR_JUNGLE, -238.2320, 0.5261, -133.0550, 89, 'Yhoator_Jungle'}, 
{'Vixen', 7, 58, '0000bb0600000000000000000000000000000000', xi.zone.BEHEMOTHS_DOMINION, -279.065, -20.484, -0.456, 18, 'Behemoths_Dominion'}, 
{'Wispmaral', 1, 165, '0000150300000000000000000000000000000000', xi.zone.MISAREAUX_COAST, -57.008, -15.669, 39.833, 135, 'Misareaux_Coast'}, 
}
local NMHuntfour  = 
{
{'Alea', 2, 202, '0000d40100000000000000000000000000000000', xi.zone.THE_BOYAHDA_TREE, 179.34, 8.555, -122.01, 199, 'The_Boyahda_Tree'}, 
{'Angun', 32, 76, '0000910100000000000000000000000000000000', xi.zone.MOUNT_ZHAYOLM, 13.769, -15.49, 101.096, 148, 'Mount_Zhayolm'}, 
{'Aura', 11350, 86, '0000210400000000000000000000000000000000', xi.zone.FEIYIN, -151.574, -16.22, -71.495, 243, 'FeiYin'}, 
{'Azryat', 285, 77, '05006707416d6e61660000000000000000000000', xi.zone.KING_RANPERRES_TOMB, 33, -0.6, -287, 127, 'King_Ranperres_Tomb'}, 
{'Blissia', 31, 89, '0000c10800000000000000000000000000000000', xi.zone.ARRAPAGO_REEF, 251.49, -7.921, 370.986, 9, 'Arrapago_Reef'}, 
{'Braka', 6, 74, '0600750600000000000000000000000000000000', xi.zone.IFRITS_CAULDRON, -286.109, 3.787, -143.551, 127, 'Ifrits_Cauldron'}, 
{'Bulruk', 96, 38, '0500080400000000000000000000000000000000', xi.zone.ULEGUERAND_RANGE, -608.319, -39.964, -56.507, 255, 'Uleguerand_Range'}, 
{'Chemraul', 5, 208, '0000120500000000000000000000000000000000', xi.zone.CAPE_TERIGGAN, -246.015, -8.619, 160.529, 127, 'Cape_Teriggan'}, 
{'Cosmic', 51, 114, '0000f80400000000000000000000000000000000', xi.zone.QUICKSAND_CAVES, -289.386, 1.183, 344.079, 127, 'Quicksand_Caves'}, 
{'Dagurt', 42, 2, '0000a50400000000000000000000000000000000', xi.zone.ALZADAAL_UNDERSEA_RUINS, -100.7608, -8.5001, 18.8402, 69, 'Alzadaal_Undersea_Ruins'},--Artox 
{'Dermetris', 82, 37, '0000550200000000000000000000000000000000', xi.zone.ARRAPAGO_REEF, -470.42, -8.127, 345.022, 116, 'Arrapago_Reef'}, 
{'Dorath', 64, 79, '0600850600000000000000000000000000000000', xi.zone.BIBIKI_BAY, 117.994, -36.772, 678.057, 135, 'Bibiki_Bay'}, 
{'Duvrion', 5, 197, '00008d0100000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, -445.583, 7.748, -606.324, 253, 'Caedarva_Mire'}, 
{'Elda', 29, 94, '01000306741061201430144014506d6025700080', xi.zone.MONASTIC_CAVERN, -65.415, -0.935, -188.2, 122, 'Monastic_Cavern'}, 
{'Eroan', 17, 74, '0000d70600000000000000000000000000000000', xi.zone.BHAFLAU_THICKETS, 381.201, -10.664, -16.867, 69, 'Bhaflau_Thickets'}, 
{'Faelar', 31, 39, '0000190300000000000000000000000000000000', xi.zone.MOUNT_ZHAYOLM, 846.093, -14.254, 251.413, 219, 'Mount_Zhayolm'}, 
{'Foxfire', 41, 88, '0000ee0700000000000000000000000000000000', xi.zone.THE_BOYAHDA_TREE, -162.159, 8.658, -83.801, 110, 'The_Boyahda_Tree'}, 
{'Gallious', 34, 66, '0000130700000000000000000000000000000000', xi.zone.CASTLE_OZTROJA, -182.774, 24.199, 3.25, 72, 'Castle_Oztroja'}, 
{'Gogu', 23, 197, '0000980100000000000000000000000000000000', xi.zone.ULEGUERAND_RANGE, -281.749, -20.049, -381.088, 57, 'Uleguerand_Range'}, 
{'Gylledha', 39, 113, '0000e40100000000000000000000000000000000', xi.zone.IFRITS_CAULDRON, -93.27, 3.92, -188.666, 127, 'Ifrits_Cauldron'}, 
{'Horar', 14, 69, '0500b20700000000000000000000000000000000', xi.zone.IFRITS_CAULDRON, 171.26, 0.042, -25.204, 225, 'Ifrits_Cauldron'}, 
{'Ingivald', 1, 179, '00001f0300000000000000000000000000000000', xi.zone.MONASTIC_CAVERN, -27.164, -1.432, -337.689, 37, 'Monastic_Cavern'}, 
{'Jassin', 16, 153, '00000c0100000000000000000000000000000000', xi.zone.MOUNT_ZHAYOLM, 552.84, -14.49, 3.186, 112, 'Mount_Zhayolm'}, 
{'Josidiah', 7, 58, '0000bb0600000000000000000000000000000000', xi.zone.BHAFLAU_THICKETS, 34.7979, -19.7476, 302.7057, 185, 'Bhaflau_Thickets'}, 
{'Klayden', 44, 5, '00004d0500000000000000000000000000000000', xi.zone.ATTOHWA_CHASM, -359.252, -4.222, 230.453, 59, 'Attohwa_Chasm'}, 
{'Kystal', 1, 61, '0000650100000000000000000000000000000000', xi.zone.CRAWLERS_NEST, 99, -32, -196, 127, 'Crawlers_Nest'}, 
{'Lipith', 88, 84, '0000190400000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, 842, -1, 365, 127, 'Caedarva_Mire'}, 
{'Majesty', 43, 124, '00003a0500000000000000000000000000000000', xi.zone.KING_RANPERRES_TOMB, 211.877, -0.47, 106.972, 185, 'King_Ranperres_Tomb'}, 
{'Milky Way', 1, 205, '0000490100000000000000000000000000000000', xi.zone.DANGRUF_WADI, -439, 4, 38, 127, 'Dangruf_Wadi'}, 
{'Morthil', 43, 2, '0000a10400000000000000000000000000000000', xi.zone.TEMPLE_OF_UGGALEPIH, -143.783, 0.985, -23.117, 37, 'Temple_of_Uggalepih'}, 
{'Narbeth', 11, 69, '0600760600000000000000000000000000000000', xi.zone.ULEGUERAND_RANGE, -220.3, -41.382, -505.308, 150, 'Uleguerand_Range'}, 
{'Nightshade', 8, 144, '0000e50200000000000000000000000000000000', xi.zone.CRAWLERS_NEST, -30, -1, 292, 127, 'Crawlers_Nest'}, 
{'Nym', 85, 136, '0000b10800000000000000000000000000000000', xi.zone.FEIYIN, -162, -15, 154, 213, 'FeiYin'}, 
{'Ophelia', 1, 170, '0000180300000000000000000000000000000000', xi.zone.DANGRUF_WADI, -363, 3, -69, 127, 'Dangruf_Wadi'}, 
{'Pharom', 42, 81, '0000e20700000000000000000000000000000000', xi.zone.ATTOHWA_CHASM, 330.8952, 20.0193, 232.3120, 73, 'Attohwa_Chasm'},--Artox 
{'Pyrder', 28, 35, '00005f0500000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, -288.9, 7.326, -480.29, 177, 'Caedarva_Mire'}, 
{'Rammir', 36, 204, '0000280200000000000000000000000000000000', xi.zone.ALZADAAL_UNDERSEA_RUINS, 98.4658, 0.0000, -103.4263, 22, 'Alzadaal_Undersea_Ruins'},--Artox 
{'Rijjat', 21, 150, '00007a0200000000000000000000000000000000', xi.zone.ALZADAAL_UNDERSEA_RUINS, 95.3331, 0.0000, 136.9247, 4, 'Alzadaal_Undersea_Ruins'},--Artox  
{'Salvor', 40, 74, '00002d0100000000000000000000000000000000', xi.zone.WAJAOM_WOODLANDS, -640.692, -10.5, -133.755, 237, 'Wajaom_Woodlands'}, 
{'Severin', 37, 204, '0000260200000000000000000000000000000000', xi.zone.CAPE_TERIGGAN, 45.6, -0.4, 176, 127, 'Cape_Teriggan'}, 
{'Silvyr', 1, 170, '0000180300000000000000000000000000000000', xi.zone.THE_BOYAHDA_TREE, -85.32, 8.734, 80.22, 57, 'The_Boyahda_Tree'}, 
{'Soldelle', 43, 188, '00003e0400000000000000000000000000000000', xi.zone.CASTLE_OZTROJA, -223, 1, 119, 127, 'Castle_Oztroja'}, 
{'Sterling', 6, 144, '0000870200000000000000000000000000000000', xi.zone.WAJAOM_WOODLANDS, 577.1, -26.898, 351.106, 228, 'Wajaom_Woodlands'}, 
{'Syfyn', 6, 38, '0000360100000000000000000000000000000000', xi.zone.CRAWLERS_NEST, 62.0737, -0.5164, 93.8409, 198, 'Crawlers_Nest'}, 
{'Thalia', 26, 135, '0000220400000000000000000000000000000000', xi.zone.QUICKSAND_CAVES, 597.529, 8.72, -542.094, 5, 'Quicksand_Caves'}, 
{'Toki', 17, 77, '0000710100000000000000000000000000000000', xi.zone.BIBIKI_BAY, 89.097, -46.465, 918.895, 66, 'Bibiki_Bay'}, 
{'Uldreiyn', 5, 13, '00004b0500000000000000000000000000000000', xi.zone.QUICKSAND_CAVES, -553.761, 0.338, 736.461, 78, 'Quicksand_Caves'}, 
{'Vayzen', 40, 146, '0000870100000000000000000000000000000000', xi.zone.BIBIKI_BAY, 418.148, -25.41, 834.728, 191, 'Bibiki_Bay'}, 
{'Voggur', 41, 124, '0000130500000000000000000000000000000000', xi.zone.TEMPLE_OF_UGGALEPIH, -100, -11, -131, 119, 'Temple_of_Uggalepih'}, 
{'Wistari', 87, 54, '0000de0600000000000000000000000000000000', xi.zone.CAPE_TERIGGAN, -281, -0.5, 471, 127, 'Cape_Teriggan'}, 
}
local NMHuntfive  = 
{
{'Aleera', 1, 132, '0000640100000000000000000000000000000000', xi.zone.GUSTAV_TUNNEL, 166, -9, -83, 127, 'Gustav_Tunnel'}, -- General
{'Anya', 41, 62, '06009a0600000000000000000000000000000000', xi.zone.ABYSSEA_ALTEPA, -740, -15, -696, 121, 'Abyssea-Altepa'}, 
{'Auris', 42, 81, '0000e20700000000000000000000000000000000', xi.zone.ABYSSEA_ULEGUERAND, -617, -39, -15, 9, 'Abyssea-Uleguerand'}, 
{'Azura', 38, 183, '0000b50100000000000000000000000000000000', xi.zone.ABYSSEA_LA_THEINE, -85, 24, -513, 171, 'Abyssea-La_Theine'}, 
{'Blossom', 12, 78, '0000540500000000000000000000000000000000', xi.zone.ABYSSEA_LA_THEINE, -160.68, 8.32, 124.369, 25, 'Abyssea-La_Theine'}, 
{'Breya', 29, 182, '0000590900000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS_S, -427.1, -24.1, -533.88, 89, 'Rolanberry_Fields_[S]'}, 
{'Caelia', 13, 135, '0000d60100000000000000000000000000000000', xi.zone.ABYSSEA_ULEGUERAND, 223.606, 0.82, -323.377, 25, 'Abyssea-Uleguerand'}, 
{'Ciradyl', 40, 15, '00008b0100000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS_S, -740.895, -32.009, -472.336, 153, 'Rolanberry_Fields_[S]'}, 
{'Crystal', 1, 170, '0000180300000000000000000000000000000000', xi.zone.ROLANBERRY_FIELDS_S, 293.596, 7.244, 224.961, 63, 'Rolanberry_Fields_[S]'}, 
{'Darcassan', 77, 48, '0600880600000000000000000000000000000000', xi.zone.BEAUCEDINE_GLACIER_S, -249.406, -80.611, -127.266, 144, 'Beaucedine_Glacier_[S]'}, -- general
{'Devella', 7, 134, '0500db0100000000000000000000000000000000', xi.zone.ABYSSEA_LA_THEINE, -288.485, -8.986, -32.26, 120, 'Abyssea-La_Theine'}, 
{'Doreah', 26, 135, '0000220400000000000000000000000000000000', xi.zone.ABYSSEA_GRAUBERG, 105.944, 23.011, -626.256, 25, 'Abyssea-Grauberg'}, -- general
{'Dynastra', 35, 182, '0000130800000000000000000000000000000000', xi.zone.ALTAIEU, 476.961, -1.279, -560.968, 247, 'AlTaieu'}, 
{'Eldar', 28, 35, '00005f0500000000000000000000000000000000', xi.zone.CASTLE_OZTROJA_S, 43.6873, -15.7500, -20.9638, 20, 'Castle_Oztroja_[S]'},--Artox
{'Erthel', 25, 205, '0000180100000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, -314.613, -4.758, -748.02, 117, 'Caedarva_Mire'}, 
{'Faelyn', 51, 45, '0000a50800000000000000000000000000000000', xi.zone.DANGRUF_WADI, -383, 2, -98, 127, 'Dangruf_Wadi'}, 
{'Freya', 3, 65, '0000240100000000000000000000000000000000', xi.zone.MAMOOK, -280.843, 14.159, -84.556, 193, 'Mamook'}, 
{'Gandor', 31, 45, '0000070100000000000000000000000000000000', xi.zone.MAMOOK, -141.619, 5.653, -100.557, 63, 'Mamook'}, 
{'Gold Horn', 18, 48, '0600480600000000000000000000000000000000', xi.zone.ABYSSEA_TAHRONGI, -147.204, 29.8, 435.316, 100, 'Abyssea-Tahrongi'}, 
{'Hadena', 7, 6, '00004d0500000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, -412.409, -2.822, -727.566, 19, 'Caedarva_Mire'}, 
{'Hungus', 27, 182, '00003f0800000000000000000000000000000000', xi.zone.BATALLIA_DOWNS_S, -435.0595, -32.0180, 460.2614, 61, 'Batallia_Downs_[S]'},--general
{'Ioguss', 42, 135, '0000e60200000000000000000000000000000000', xi.zone.ALTAIEU, -295.663, -0.06, -448.272, 149, 'AlTaieu'}, 
{'Jayldrog', 56, 79, '0600740600000000000000000000000000000000', xi.zone.ABYSSEA_KONSCHTAT, 440.581, 32.216, 524.624, 194, 'Abyssea-Konschtat'}, 
{'Kalodor', 94, 134, '00003a0400000000000000000000000000000000', xi.zone.ABYSSEA_VUNKERL, 107.444, -40.08, -479.729, 25, 'Abyssea-Vunkerl'}, 
{'Kolzreid', 39, 254, '0000630200000000000000000000000000000000', xi.zone.CAEDARVA_MIRE, -608.491, 11.279, -186.516, 205, 'Caedarva_Mire'}, 
{'Lago', 26, 253, '00000f0700000000000000000000000000000000', xi.zone.MAMOOK, -199.182, 17.365, -406.51, 158, 'Mamook'}, 
{'Lofar', 64, 37, '0000630200000000000000000000000000000000', xi.zone.ABYSSEA_GRAUBERG, 659.348, 19.48, 401.638, 100, 'Abyssea-Grauberg'}, 
{'Malfas', 11288, 183, '0000b70100000000000000000000000000000000', xi.zone.HALVUNG, -395.9, 21.2, 139.013, 31, 'Halvung'}, 
{'Minelle', 67, 135, '0000f30200000000000000000000000000000000', xi.zone.ABYSSEA_ULEGUERAND, -301, -66, 11, 127, 'Abyssea-Uleguerand'}, 
{'Mortusra', 38, 48, '0600ab0600000000000000000000000000000000', xi.zone.CASTLE_OZTROJA, -181.121, 0.193, -69.193, 127, 'Castle_Oztroja'}, 
{'Narvari', 36, 68, '0000e80700000000000000000000000000000000', xi.zone.CASTLE_OZTROJA_S, -265.984, -1.526, 95.073, 53, 'Castle_Oztroja_[S]'}, 
{'Nightwind', 41, 132, '0000e30200000000000000000000000000000000', xi.zone.THE_SHRINE_OF_RUAVITAU, 744.267, -0.39, -9.39, 186, 'The_Shrine_of_RuAvitau'}, 
{'Nyssa', 29, 182, '0000590900000000000000000000000000000000', xi.zone.ABYSSEA_VUNKERL, -279.07, -40, -713.343, 250, 'Abyssea-Vunkerl'}, 
{'Oribel', 4, 15, '0000560400000000000000000000000000000000', xi.zone.BEAUCEDINE_GLACIER_S, -354.674, -40.551, -192.677, 253, 'Beaucedine_Glacier_[S]'}, 
{'Phyrra', 41, 99, '0000410800000000000000000000000000000000', xi.zone.GUSTAV_TUNNEL, -209.265, -0.234, 161.32, 155, 'Gustav_Tunnel'}, 
{'Quamara', 39, 48, '0600b00600000000000000000000000000000000', xi.zone.CASTLE_OZTROJA_S, 51.066, -1.188, -132.647, 60, 'Castle_Oztroja_[S]'}, 
{'Randil', 48, 4, '0000510500000000000000000000000000000000', xi.zone.BATALLIA_DOWNS_S, -445.422, -16.988, 137.684, 118, 'Batallia_Downs_[S]'}, 
{'Rorik', 74, 78, '0000bc0100000000000000000000000000000000', xi.zone.CASTLE_OZTROJA, -262.767, -0.037, 164.827, 65, 'Castle_Oztroja'}, 
{'Sanguisus', 81, 48, '0000710100000000000000000000000000000000', xi.zone.ABYSSEA_ALTEPA, -810.333, -9.189, -371.916, 40, 'Abyssea-Altepa'}, 
{'Shadoras', 71, 134, '0000160400000000000000000000000000000000', xi.zone.ABYSSEA_ALTEPA, 479.069, 0.001, 2.805, 75, 'Abyssea-Altepa'}, 
{'Sirius', 12, 48, '0000210100000000000000000000000000000000', xi.zone.GUSTAV_TUNNEL, -24.355, -0.035, 51.432, 105, 'Gustav_Tunnel'}, 
{'Solstice', 1, 187, '0000250400000000000000000000000000000000', xi.zone.THE_SHRINE_OF_RUAVITAU, -183.634, -0.39, 292.267, 57, 'The_Shrine_of_RuAvitau'}, 
{'Sudryl', 20, 268, '0000e80900000000000000000000000000000000', xi.zone.CASTLE_ZVAHL_BAILEYS, -189, -8.5, 175, 34, 'Castle_Zvahl_Baileys'}, 
{'Taena', 32, 45, '0000490900000000000000000000000000000000', xi.zone.ABYSSEA_KONSCHTAT, 150, 17.125, 90, 130, 'Abyssea-Konschtat'}, 
{'Thingol', 26, 262, '0000fb0900000000000000000000000000000000', xi.zone.CASTLE_ZVAHL_BAILEYS, -77, 19, 56, 15, 'Castle_Zvahl_Baileys'}, 
{'Turgon', 53, 123, '0000ea0700000000000000000000000000000000', xi.zone.HALVUNG, -502, -21.54, 408.447, 53, 'Halvung'}, 
{'Usha', 172, 39, '0000780100000000000000000000000000000000', xi.zone.THE_SHRINE_OF_RUAVITAU, -76, 32, -4, 166, 'The_Shrine_of_RuAvitau'}, 
{'Vesryn', 25, 76, '0000150700000000000000000000000000000000', xi.zone.ABYSSEA_TAHRONGI, 138.935, 23.427, -668.646, 225, 'Abyssea-Tahrongi'}, 
{'Vyn', 30, 178, '0000350100000000000000000000000000000000', xi.zone.ABYSSEA_VUNKERL, -562.517, -48.168, -445.353, 0, 'Abyssea-Vunkerl'}, 
{'Withil', 57, 182, '00008e0800000000000000000000000000000000', xi.zone.DANGRUF_WADI, -378, 3, -95, 127, 'Dangruf_Wadi'}, 
}
local NMHuntsix  = 
{
{'Alva', 25, 266, '0000bd0100000000000000000000000000000000', xi.zone.NORTH_GUSTABERG_S, -332.994, 40.81, 369.101, 42, 'North_Gustaberg_[S]'}, 
{'Aqrilla', 33, 270, '00002d0100000000000000000000000000000000', xi.zone.THE_ELDIEME_NECROPOLIS_S, 185.666, -28.25, 156.949, 188, 'The_Eldieme_Necropolis_[S]'}, 
{'Austi', 158, 88, '0000e00700000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS_S, 595.5569, 25.0000, 209.3323, 221, 'Pashhow_Marshlands_[S]'}, --Artox
{'Balrus', 29, 265, '0000fc0600000000000000000000000000000000', xi.zone.BATALLIA_DOWNS_S, 161.1347, 7.8840, -481.5145, 165, 'Batallia_Downs_[S]'},--Artox 
{'Bonesnapper', 34, 270, '0000c90800000000000000000000000000000000', xi.zone.CASTLE_ZVAHL_KEEP, -60.8611, 0.1100, -23.0866, 191, 'Castle_Zvahl_Keep'}, --Artox
{'Brilbelle', 34, 107, '0000100800000000000000000000000000000000', xi.zone.MERIPHATAUD_MOUNTAINS_S, -532.725, 0.76, 308.058, 137, 'Meriphataud_Mountains_[S]'}, 
{'Caldor', 43, 196, '0000250100000000000000000000000000000000', xi.zone.SIH_GATES, -364.9, -20.7, -53.667, 248, 'Sih_Gates'}, 
{'Ciscra', 44, 288, '00008f0700000000000000000000000000000000', xi.zone.NORTH_GUSTABERG_S, -233.741, -0.445, 225.515, 99, 'North_Gustaberg_[S]'}, 
{'Daealla', 40, 174, '0000520500000000000000000000000000000000', xi.zone.CIRDAS_CAVERNS, -120, 18.5, 22, 69, 'Cirdas_Caverns'}, 
{'Darfin', 20, 268, '0000e80900000000000000000000000000000000', xi.zone.MORIMAR_BASALT_FIELDS, -70.686, -16.256, -128.179, 231, 'Morimar_Basalt_Fields'}, 
{'Dezaral', 38, 254, '0000050700000000000000000000000000000000', xi.zone.BEAUCEDINE_GLACIER_S, 137.7752, -19.1123, -121.7374, 9, 'Beaucedine_Glacier_[S]'},--Artox 
{'Drachenstein', 29, 270, '0000010100000000000000000000000000000000', xi.zone.ABYSSEA_GRAUBERG, -439.869, 18.048, -612.386, 25, 'Abyssea-Grauberg'}, 
{'Earthtaker', 26, 262, '0000fb0900000000000000000000000000000000', xi.zone.YORCIA_WEALD, -126.4, 1.306, -102.31, 22, 'Yorcia_Weald'}, 
{'Electra', 38, 288, '00007a0100000000000000000000000000000000', xi.zone.BEAUCEDINE_GLACIER_S, -264.9597, -39.3002, -315.9121, 203, 'Beaucedine_Glacier_[S]'}, --Artox
{'Esmeralla', 27, 267, '00003c0100000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN_S, -85.236, 23.983, 225.927, 197, 'Sauromugue_Champaign_[S]'},
{'Farkas', 61, 79, '00000e0700000000000000000000000000000000', xi.zone.BEAUCEDINE_GLACIER_S, 57.256, -59.902, -73.346, 244, 'Beaucedine_Glacier_[S]'}, 
{'Frostar', 31, 205, '0000600200000000000000000000000000000000', xi.zone.YORCIA_WEALD, 399.3513, -0.2555, 448.3103, 61, 'Yorcia_Weald'}, 
{'Gaylia', 63, 79, '0000800600000000000000000000000000000000', xi.zone.FORET_DE_HENNETIEL, -406.03, -2.082, -370.31, 4, 'Foret_de_Hennetiel'}, 
{'Golden Moon', 53, 123, '0000ea0700000000000000000000000000000000', xi.zone.WOH_GATES, 337.19, 20.114, 299.078, 146, 'Woh_Gates'}, 
{'Haela', 128, 175, '0000550900000000000000000000000000000000', xi.zone.MERIPHATAUD_MOUNTAINS_S, -272.173, 13.755, 417.635, 233, 'Meriphataud_Mountains_[S]'}, 
{'Igninitis', 26, 265, '0000000a00000000000000000000000000000000', xi.zone.MORIMAR_BASALT_FIELDS, -309.5, -32.29, -65.902, 167, 'Morimar_Basalt_Fields'}, 
{'Ismzal', 54, 61, '0000010700000000000000000000000000000000', xi.zone.FORET_DE_HENNETIEL, -160, -2.5, -40, 10, 'Foret_de_Hennetiel'}, 
{'Jewel', 44, 200, '0000090700000000000000000000000000000000', xi.zone.MOH_GATES, 163.1429, 21.2424, 60.2438, 133, 'Moh_Gates'}, 
{'Kalseru', 167, 91, '0000570900000000000000000000000000000000', xi.zone.MOUNT_ZHAYOLM, -59.72, -18.602, 280.275, 192, 'Mount_Zhayolm'}, 
{'Kuskyn', 28, 262, '00006a0a00000000000000000000000000000000', xi.zone.WAJAOM_WOODLANDS, -637, -8, -122, 127, 'Wajaom_Woodlands'}, 
{'Laimus', 34, 263, '0000a00100000000000000000000000000000000', xi.zone.CIRDAS_CAVERNS, 217.79, 19.139, 48.347, 74, 'Cirdas_Caverns'}, 
{'Luna', 51, 51, '0000ca0600000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN_S, 265.409, 23.146, 145.58, 76, 'Sauromugue_Champaign_[S]'}, 
{'Malok', 26, 269, '0000670800000000000000000000000000000000', xi.zone.WAJAOM_WOODLANDS, -550.088, -16.134, 156.571, 192, 'Wajaom_Woodlands'}, 
{'Mireille', 28, 270, '0000780100000000000000000000000000000000', xi.zone.WOH_GATES, 259.4079, 20.5000, 461.3548, 56, 'Woh_Gates'}, 
{'Myrinn', 156, 90, '00007f0100000000000000000000000000000000', xi.zone.SAUROMUGUE_CHAMPAIGN_S, 388.615, 31.825, 127.783, 14, 'Sauromugue_Champaign_[S]'}, 
{'Neldor', 41, 132, '0000e30200000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS_S, -374.1237, 24.6589, -306.5371, 73, 'Pashhow_Marshlands_[S]'}, --Artox
{'Nightwing', 75, 24, '0000090800000000000000000000000000000000', xi.zone.SIH_GATES, -309.9, -19.6, -335.46, 47, 'Sih_Gates'}, 
{'Oddfinnur', 55, 7, '0000160800000000000000000000000000000000', xi.zone.CASTLE_ZVAHL_KEEP, -109.55, -15.524, -108.123, 62, 'Castle_Zvahl_Keep'}, 
{'Orion', 29, 263, '0000f60900000000000000000000000000000000', xi.zone.ABYSSEA_GRAUBERG, 298.159, -39.359, 198.475, 125, 'Abyssea-Grauberg'}, 
{'Pindious', 32, 266, '0000500100000000000000000000000000000000', xi.zone.MOUNT_ZHAYOLM, -60.15, -18.702, 278.084, 192, 'Mount_Zhayolm'}, 
{'Quintus', 57, 121, '00003c0800000000000000000000000000000000', xi.zone.DHO_GATES, -99.5919, -8.6928, 160.3349, 53, 'Dho_Gates'}, 
{'Remus', 33, 260, '0000f10900000000000000000000000000000000', xi.zone.MOH_GATES, 245.3601, 40.0731, -206.4511, 214, 'Moh_Gates'}, 
{'Rotnam', 5, 289, '0000120200000000000000000000000000000000', xi.zone.MARJAMI_RAVINE, 37.041, 39.29, -102.6, 125, 'Marjami_Ravine'}, 
{'Saphil', 159, 97, '0000480900000000000000000000000000000000', xi.zone.MERIPHATAUD_MOUNTAINS_S, -257.838, 10.459, 399.084, 66, 'Meriphataud_Mountains_[S]'}, 
{'Sheedra', 43, 139, '0100020500101120003000400050f261f2710000', xi.zone.MOUNT_ZHAYOLM, -690.5, -12.36, -117.44, 251, 'Mount_Zhayolm'}, 
{'Skeltos', 4, 272, '0000d80900000000000000000000000000000000', xi.zone.YORCIA_WEALD, 77.445, -0.648, 488.658, 175, 'Yorcia_Weald'}, 
{'Soril', 25, 289, '00000f0000000000000000000000000000000000', xi.zone.BATALLIA_DOWNS_S, -728.105, -21.948, 138.857, 192, 'Batallia_Downs_[S]'}, 
{'Sulfu', 154, 98, '0000560900000000000000000000000000000000', xi.zone.MARJAMI_RAVINE, -161.8, 0.306, -114.26, 68, 'Marjami_Ravine'}, 
{'Talila', 22, 268, '00008e0700000000000000000000000000000000', xi.zone.DHO_GATES, -320.7589, -30.2860, 234.2490, 59, 'Dho_Gates'}, 
{'Throar', 156, 82, '0000950100000000000000000000000000000000', xi.zone.FORET_DE_HENNETIEL, 438.062, -2.874, -290.055, 112, 'Foret_de_Hennetiel'}, 
{'Turilla', 89, 54, '0000e50600000000000000000000000000000000', xi.zone.WAJAOM_WOODLANDS, -741.3798, -16.4656,209.8372, 123, 'Wajaom_Woodlands'}, 
{'Usunaar', 71, 134, '0000160400000000000000000000000000000000', xi.zone.THE_ELDIEME_NECROPOLIS_S, 27.081, -16.076, 314.961, 68, 'The_Eldieme_Necropolis_[S]'}, 
{'Viktas', 66, 79, '0000310800000000000000000000000000000000', xi.zone.BATALLIA_DOWNS_S, 250.209, 7.394, 29.623, 183, 'Batallia_Downs_[S]'}, 
{'Wilda', 60, 79, '0000bf0600000000000000000000000000000000', xi.zone.CASTLE_ZVAHL_KEEP, -519.467, -68.125, 62.05, 105, 'Castle_Zvahl_Keep'}, 
{'Wynstar', 30, 263, '0000050200000000000000000000000000000000', xi.zone.PASHHOW_MARSHLANDS_S, -208.476, 24.428, 424.273, 159, 'Pashhow_Marshlands_[S]'}, 
}

local m = Module:new('NMHunt')

  for _,  entry in pairs(NMHuntone) do -- level 1-20
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(1800, 3600), true) -- 30 - 60 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TOneKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TOneKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, 1}})
        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end

  for _,  entry in pairs(NMHunttwo) do -- level 21-40
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(3600, 5400), true) -- 60 - 90 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TTwoKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TTwoKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, math.random(1,2)}})
        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end

  for _,  entry in pairs(NMHuntthree) do -- level 41-60
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(5400, 9000), true) -- 90 - 150 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TThreeKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TThreeKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, math.random(1,4)}})

        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end

  for _,  entry in pairs(NMHuntfour) do -- level 61-80
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            local mobLevel = math.random(61, 80)
            mob:setMobLevel(mobLevel)
            -- Increase HP & MP
            mob:setMod(xi.mod.HP, 9 * mobLevel)
            mob:updateHealth()
            mob:addHP(mob:getMaxHP())
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(9000, 14400), true) -- 150 - 240 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TFourKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TFourKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, math.random(2,6)}})
        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end

  for _,  entry in pairs(NMHuntfive) do -- level 81-100
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            local mobLevel = math.random(81, 110)
            mob:setMobLevel(mobLevel)
            -- Increase HP & MP
            mob:setMod(xi.mod.HP, 9 * mobLevel)
            mob:updateHealth()
            mob:addHP(mob:getMaxHP())
        mob:addMod(xi.mod.STR, 100) 
        mob:addMod(xi.mod.VIT, 100) 
        mob:addMod(xi.mod.INT, 100) 
        mob:addMod(xi.mod.MND, 100) 
        mob:addMod(xi.mod.CHR, 100) 
        mob:addMod(xi.mod.AGI, 100) 
        mob:addMod(xi.mod.DEX, 100) 
        mob:addMod(xi.mod.DEF, 100) 
        mob:addMod(xi.mod.RATT, 175) 
        mob:addMod(xi.mod.ACC, 450) 
        mob:addMod(xi.mod.ATT, 550) 
        mob:addMod(xi.mod.MATT, 150)
        mob:addMod(xi.mod.MACC, 450) 
        mob:addMod(xi.mod.MEVA, 250) 
        mob:addMod(xi.mod.MDEF, 150)
        mob:setMod(xi.mod.EVA, 200)
        mob:setMod(xi.mod.DEF, 200)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(14400, 21600), true) -- 240 - 360 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TFiveKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TFiveKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, math.random(4,8)}})
        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end

  for _,  entry in pairs(NMHuntsix) do -- level 101-120
m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', entry[10]), function(zone)
	super(zone)
    local namez = string.char(0x93).. entry[1]
    local mob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  namez,   
        look  =  entry[4],  
        x  =  entry[6],  
        y  =  entry[7],  
        z  =  entry[8],  
        rotation  =  entry[9],  
        widescan  =  1,  
        groupId  =  entry[2],  
        groupZoneId  =  entry[3],

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   15)
            mob:setMobMod(xi.mobMod.CHECK_AS_NM,   1)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            local mobLevel = math.random(111, 120)
            mob:setMobLevel(mobLevel)
            -- Increase HP & MP
            mob:setMod(xi.mod.HP, 9 * mobLevel)
            mob:updateHealth()
            mob:addHP(mob:getMaxHP())
        mob:addMod(xi.mod.STR, 100) 
        mob:addMod(xi.mod.VIT, 100) 
        mob:addMod(xi.mod.INT, 100) 
        mob:addMod(xi.mod.MND, 100) 
        mob:addMod(xi.mod.CHR, 100) 
        mob:addMod(xi.mod.AGI, 100) 
        mob:addMod(xi.mod.DEX, 100) 
        mob:addMod(xi.mod.DEF, 100) 
        mob:addMod(xi.mod.RATT, 175) 
        mob:addMod(xi.mod.ACC, 450) 
        mob:addMod(xi.mod.ATT, 550) 
        mob:addMod(xi.mod.MATT, 150)
        mob:addMod(xi.mod.MACC, 450) 
        mob:addMod(xi.mod.MEVA, 250) 
        mob:addMod(xi.mod.MDEF, 150)
        mob:setMod(xi.mod.EVA, 200)
        mob:setMod(xi.mod.DEF, 200)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
		mob:setRespawnTime(math.random(14400, 28800), true) -- 360 - 480 minutes
        local mobName  =  mob:getName(mob)
        local varName  =  '[NMHunt]DE_' .. entry[1]
        local killcount  =  playerArg:getCharVar('[NMHunt]DE_' .. entry[1])
        local totalkill = playerArg:getCharVar('[NMHunt]TSixKills')
        if killcount == 0 then
        playerArg:setCharVar('[NMHunt]TSixKills', totalkill + 1)
        end
        playerArg:setCharVar(varName,   killcount + 1)
        npcUtil.giveItem(playerArg, {{4049, math.random(6,10)}})
        end,  
        specialSpawnAnimation  =  true,  
    })
    mob:setSpawn(entry[6], entry[7], entry[8], entry[9], entry[5])
    mob:setDropID(0) -- loot id
    mob:spawn()
end)
end
return m
