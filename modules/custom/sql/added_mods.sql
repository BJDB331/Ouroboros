DELETE FROM `item_mods` WHERE itemId = 20690; -- reikiko
DELETE FROM `item_mods` WHERE itemId = 15194; -- maats cap
DELETE FROM `item_mods` WHERE itemId = 14646; -- shadow ring
DELETE FROM `item_mods` WHERE itemId = 13658; -- shadow mantle
DELETE FROM `item_mods` WHERE itemId = 13505; -- judges ring
DELETE FROM `item_mods` WHERE itemId = 13606; -- judges cape
UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 25969; -- mousai crackows +1
UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 26538; -- mousai manteel +1
UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 25902; -- mousai seraweels +1
INSERT INTO `item_mods` VALUES (14646, 255, 10); --shadow ring -- DEATHRES
INSERT INTO `item_mods` VALUES (14646, 476, 22); --shadow ring -- NULL_MAGICAL_DAMAGE
INSERT INTO `item_mods` VALUES (14646, 29, 20); --shadow ring -- MDEF
INSERT INTO `item_mods` VALUES (13658, 1, 50); --shadow mantle -- DEF
INSERT INTO `item_mods` VALUES (13658, 416, 12); --shadow mantle -- NULL_PHYSICAL_DAMAGE
INSERT INTO `item_mods` VALUES (13658, 10, 40); --shadow mantle -- VIT
INSERT INTO `item_mods` VALUES (20690, 23, 43); --reikiko -- ATT
INSERT INTO `item_mods` VALUES (20690, 421, 5); --reikiko -- CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (20690, 840, 4); --reikiko -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (20690, 368, 30); --reikiko -- REGAIN
INSERT INTO `item_mods` VALUES (26529, 1, 133); --ea houppelande -- DEF
INSERT INTO `item_mods` VALUES (26529, 2, 68); --ea houppelande -- HP
INSERT INTO `item_mods` VALUES (25899, 1, 117); --pinga pants -- DEF
INSERT INTO `item_mods` VALUES (25899, 2, 64); --pinga pants -- HP
INSERT INTO `item_mods` VALUES (26206, 1, 8); --hizamaru ring -- DEF
INSERT INTO `item_mods` VALUES (26206, 23, 6); --hizamaru ring -- ATT
INSERT INTO `item_mods` VALUES (21104, 110, 242); --eosuchus club -- PARRY
INSERT INTO `item_mods` VALUES (21104, 90, 242); --eosuchus club -- CLUB
INSERT INTO `item_mods` VALUES (26206, 68, 12); --hizamaru ring -- EVA
INSERT INTO `item_mods` VALUES (21507, 543, 10); --pair of jolt counter +1 -- COUNTERSTANCE_EFFECT
INSERT INTO `item_mods` VALUES (26206, 73, 5); --hizamaru ring -- STORETP
INSERT INTO `item_mods` VALUES (26206, 291, 10); --hizamaru ring -- COUNTER
INSERT INTO `item_mods` VALUES (25728, 1, 136); --zendik robe -- DEF
INSERT INTO `item_mods` VALUES (25728, 2, 57); --zendik robe -- HP
INSERT INTO `item_mods` VALUES (25728, 5, 61); --zendik robe -- MP
INSERT INTO `item_mods` VALUES (25728, 8, 24); --zendik robe -- STR
INSERT INTO `item_mods` VALUES (25728, 9, 20); --zendik robe -- DEX
INSERT INTO `item_mods` VALUES (25728, 10, 20); --zendik robe -- VIT
INSERT INTO `item_mods` VALUES (25728, 11, 20); --zendik robe -- AGI
INSERT INTO `item_mods` VALUES (25728, 12, 38); --zendik robe -- INT
INSERT INTO `item_mods` VALUES (25728, 13, 38); --zendik robe -- MND
INSERT INTO `item_mods` VALUES (25728, 14, 32); --zendik robe -- CHR
INSERT INTO `item_mods` VALUES (25728, 25, 45); --zendik robe -- ACC
INSERT INTO `item_mods` VALUES (25728, 27, -13); --zendik robe -- ENMITY
INSERT INTO `item_mods` VALUES (25728, 29, 7); --zendik robe -- MDEF
INSERT INTO `item_mods` VALUES (25728, 31, 86); --zendik robe -- MEVA
INSERT INTO `item_mods` VALUES (25728, 68, 41); --zendik robe -- EVA
INSERT INTO `item_mods` VALUES (25728, 170, 13); --zendik robe -- FASTCAST
INSERT INTO `item_mods` VALUES (25728, 384, 400); --zendik robe -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25899, 5, 43); --pinga pants -- MP
INSERT INTO `item_mods` VALUES (25899, 8, 26); --pinga pants -- STR
INSERT INTO `item_mods` VALUES (27499, 1, 89); --composers sabots -- DEF
INSERT INTO `item_mods` VALUES (27499, 2, 15); --composers sabots -- HP
INSERT INTO `item_mods` VALUES (27499, 8, 16); --composers sabots -- STR
INSERT INTO `item_mods` VALUES (27499, 9, 19); --composers sabots -- DEX
INSERT INTO `item_mods` VALUES (27499, 10, 16); --composers sabots -- VIT
INSERT INTO `item_mods` VALUES (27499, 11, 25); --composers sabots -- AGI
INSERT INTO `item_mods` VALUES (27499, 13, 5); --composers sabots -- MND
INSERT INTO `item_mods` VALUES (27499, 14, 19); --composers sabots -- CHR
INSERT INTO `item_mods` VALUES (27499, 23, 30); --composers sabots -- ATT
INSERT INTO `item_mods` VALUES (27499, 25, 20); --composers sabots -- ACC
INSERT INTO `item_mods` VALUES (27499, 29, 2); --composers sabots -- MDEF
INSERT INTO `item_mods` VALUES (27499, 31, 80); --composers sabots -- MEVA
INSERT INTO `item_mods` VALUES (27499, 68, 55); --composers sabots -- EVA
INSERT INTO `item_mods` VALUES (27499, 384, 300); --composers sabots -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (20761, 1016, 10); --aettir -- SWIPE
INSERT INTO `item_mods` VALUES (20761, 190, 5); --aettir -- DMGPHYS_II
INSERT INTO `item_mods` VALUES (20761, 840, 10); --aettir -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (20761, 25, 70); --aettir -- ACC
INSERT INTO `item_mods` VALUES (20761, 31, 50); --aettir -- MEVA
INSERT INTO `item_mods` VALUES (26529, 5, 94); --ea houppelande -- MP
INSERT INTO `item_mods` VALUES (26529, 8, 23); --ea houppelande -- STR
INSERT INTO `item_mods` VALUES (21083, 12, 6); --sucellus -- INT
INSERT INTO `item_mods` VALUES (21083, 13, 6); --sucellus -- MND
INSERT INTO `item_mods` VALUES (21083, 28, 16); --sucellus -- MATT
INSERT INTO `item_mods` VALUES (22301, 562, 10); --sroda tathlum -- MAGIC_CRITHITRATE
INSERT INTO `item_mods` VALUES (26529, 9, 24); --ea houppelande -- DEX
INSERT INTO `item_mods` VALUES (26529, 10, 26); --ea houppelande -- VIT
INSERT INTO `item_mods` VALUES (26529, 11, 26); --ea houppelande -- AGI
INSERT INTO `item_mods` VALUES (26529, 12, 43); --ea houppelande -- INT
INSERT INTO `item_mods` VALUES (25854, 1, 135); --arjuna breeches -- DEF
INSERT INTO `item_mods` VALUES (25854, 2, 57); --arjuna breeches -- HP
INSERT INTO `item_mods` VALUES (25854, 5, 41); --arjuna breeches -- MP
INSERT INTO `item_mods` VALUES (25854, 8, 35); --arjuna breeches -- STR
INSERT INTO `item_mods` VALUES (25854, 10, 23); --arjuna breeches -- VIT
INSERT INTO `item_mods` VALUES (25854, 11, 15); --arjuna breeches -- AGI
INSERT INTO `item_mods` VALUES (25854, 12, 26); --arjuna breeches -- INT
INSERT INTO `item_mods` VALUES (25854, 13, 10); --arjuna breeches -- MND
INSERT INTO `item_mods` VALUES (25854, 14, 7); --arjuna breeches -- CHR
INSERT INTO `item_mods` VALUES (25854, 25, 38); --arjuna breeches -- ACC
INSERT INTO `item_mods` VALUES (25854, 29, 3); --arjuna breeches -- MDEF
INSERT INTO `item_mods` VALUES (25854, 31, 86); --arjuna breeches -- MEVA
INSERT INTO `item_mods` VALUES (25854, 68, 19); --arjuna breeches -- EVA
INSERT INTO `item_mods` VALUES (25854, 161, -400); --arjuna breeches -- DMGPHYS
INSERT INTO `item_mods` VALUES (25854, 170, 4); --arjuna breeches -- FASTCAST
INSERT INTO `item_mods` VALUES (25854, 384, 500); --arjuna breeches -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25854, 518, 3); --arjuna breeches -- SHIELDBLOCKRATE
INSERT INTO `item_mods` VALUES (25899, 10, 17); --pinga pants -- VIT
INSERT INTO `item_mods` VALUES (21083, 311, 124); --sucellus -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (26001, 160, -500); --loricate torque -- DMG
INSERT INTO `item_mods` VALUES (21083, 170, 5); --sucellus -- FASTCAST
INSERT INTO `item_mods` VALUES (21083, 296, 5); --sucellus -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (25899, 11, 24); --pinga pants -- AGI
INSERT INTO `item_mods` VALUES (26268, 2, 250); --moonbeam cape -- HP
INSERT INTO `item_mods` VALUES (26268, 160, -500); --moonbeam cape -- DMG
INSERT INTO `item_mods` VALUES (25899, 12, 39); --pinga pants -- INT
INSERT INTO `item_mods` VALUES (25899, 13, 30); --pinga pants -- MND
INSERT INTO `item_mods` VALUES (26529, 13, 32); --ea houppelande -- MND
INSERT INTO `item_mods` VALUES (26529, 14, 34); --ea houppelande -- CHR
INSERT INTO `item_mods` VALUES (26529, 30, 42); --ea houppelande -- MACC
INSERT INTO `item_mods` VALUES (26529, 68, 45); --ea houppelande -- EVA
INSERT INTO `item_mods` VALUES (26529, 31, 118); --ea houppelande -- MEVA
INSERT INTO `item_mods` VALUES (26529, 28, 39); --ea houppelande -- MATT
INSERT INTO `item_mods` VALUES (26529, 29, 8); --ea houppelande -- MDEF
INSERT INTO `item_mods` VALUES (26529, 384, 300); --ea houppelande -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26529, 487, 8); --ea houppelande -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (25893, 1, 115); --ea slops -- DEF
INSERT INTO `item_mods` VALUES (25893, 2, 61); --ea slops -- HP
INSERT INTO `item_mods` VALUES (25893, 4, 85); --ea slops -- CONVMPTOHP
INSERT INTO `item_mods` VALUES (25893, 8, 26); --ea slops -- STR
INSERT INTO `item_mods` VALUES (25893, 10, 17); --ea slops -- VIT
INSERT INTO `item_mods` VALUES (25893, 11, 24); --ea slops -- AGI
INSERT INTO `item_mods` VALUES (28490, 10, 5); --handlers earring -- VIT
INSERT INTO `item_mods` VALUES (28491, 10, 5); --handlers earring +1 -- VIT
INSERT INTO `item_mods` VALUES (25893, 12, 43); --ea slops -- INT
INSERT INTO `item_mods` VALUES (25893, 13, 26); --ea slops -- MND
INSERT INTO `item_mods` VALUES (26243, 1, 17); --perimede cape -- DEF
INSERT INTO `item_mods` VALUES (26243, 113, 7); --perimede cape -- ENHANCE
INSERT INTO `item_mods` VALUES (26243, 116, 7); --perimede cape -- DARK
INSERT INTO `item_mods` VALUES (26243, 909, 4); --perimede cape -- QUICK_MAGIC
INSERT INTO `item_mods` VALUES (25893, 14, 23); --ea slops -- CHR
INSERT INTO `item_mods` VALUES (25893, 30, 41); --ea slops -- MACC
INSERT INTO `item_mods` VALUES (25893, 28, 36); --ea slops -- MATT
INSERT INTO `item_mods` VALUES (21685, 864, 10); --epeolatry -- REM_OCC_DO_TRIPLE_DMG
INSERT INTO `item_mods` VALUES (25893, 68, 37); --ea slops -- EVA
INSERT INTO `item_mods` VALUES (25893, 31, 137); --ea slops -- MEVA
INSERT INTO `item_mods` VALUES (25893, 29, 7); --ea slops -- MDEF
INSERT INTO `item_mods` VALUES (25893, 384, 500); --ea slops -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25893, 487, 7); --ea slops -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (25960, 1, 73); --ea pigaches -- DEF
INSERT INTO `item_mods` VALUES (25960, 2, 15); --ea pigaches -- HP
INSERT INTO `item_mods` VALUES (25960, 5, 26); --ea pigaches -- MP
INSERT INTO `item_mods` VALUES (25960, 8, 11); --ea pigaches -- STR
INSERT INTO `item_mods` VALUES (25960, 9, 14); --ea pigaches -- DEX
INSERT INTO `item_mods` VALUES (21685, 831, -2500); --epeolatry -- DMGMAGIC_II
INSERT INTO `item_mods` VALUES (21694, 256, 45); --lionheart -- AFTERMATH
INSERT INTO `item_mods` VALUES (25960, 10, 15); --ea pigaches -- VIT
INSERT INTO `item_mods` VALUES (25960, 11, 38); --ea pigaches -- AGI
INSERT INTO `item_mods` VALUES (25960, 13, 21); --ea pigaches -- MND
INSERT INTO `item_mods` VALUES (25960, 14, 39); --ea pigaches -- CHR
INSERT INTO `item_mods` VALUES (25960, 30, 38); --ea pigaches -- MACC
INSERT INTO `item_mods` VALUES (25960, 28, 27); --ea pigaches -- MATT
INSERT INTO `item_mods` VALUES (25960, 68, 56); --ea pigaches -- EVA
INSERT INTO `item_mods` VALUES (21694, 30, 242); --lionheart -- MACC
INSERT INTO `item_mods` VALUES (25960, 31, 137); --ea pigaches -- MEVA
INSERT INTO `item_mods` VALUES (27143, 1, 107); --composers mitts -- DEF
INSERT INTO `item_mods` VALUES (27143, 2, 27); --composers mitts -- HP
INSERT INTO `item_mods` VALUES (27143, 8, 8); --composers mitts -- STR
INSERT INTO `item_mods` VALUES (27143, 9, 32); --composers mitts -- DEX
INSERT INTO `item_mods` VALUES (27143, 10, 32); --composers mitts -- VIT
INSERT INTO `item_mods` VALUES (27143, 11, 7); --composers mitts -- AGI
INSERT INTO `item_mods` VALUES (27143, 12, 6); --composers mitts -- INT
INSERT INTO `item_mods` VALUES (27143, 13, 23); --composers mitts -- MND
INSERT INTO `item_mods` VALUES (27143, 14, 16); --composers mitts -- CHR
INSERT INTO `item_mods` VALUES (27143, 23, 20); --composers mitts -- ATT
INSERT INTO `item_mods` VALUES (27143, 25, 30); --composers mitts -- ACC
INSERT INTO `item_mods` VALUES (27143, 29, 1); --composers mitts -- MDEF
INSERT INTO `item_mods` VALUES (27143, 31, 32); --composers mitts -- MEVA
INSERT INTO `item_mods` VALUES (27143, 68, 24); --composers mitts -- EVA
INSERT INTO `item_mods` VALUES (27143, 384, 400); --composers mitts -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25960, 29, 5); --ea pigaches -- MDEF
INSERT INTO `item_mods` VALUES (25960, 384, 300); --ea pigaches -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25960, 487, 4); --ea pigaches -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (25980, 1, 91); --ea cuffs -- DEF
INSERT INTO `item_mods` VALUES (25980, 2, 6); --ea cuffs -- HP
INSERT INTO `item_mods` VALUES (25980, 5, 14); --ea cuffs -- MP
INSERT INTO `item_mods` VALUES (25980, 8, 7); --ea cuffs -- STR
INSERT INTO `item_mods` VALUES (25980, 9, 29); --ea cuffs -- DEX
INSERT INTO `item_mods` VALUES (25980, 10, 30); --ea cuffs -- VIT
INSERT INTO `item_mods` VALUES (25980, 12, 35); --ea cuffs -- INT
INSERT INTO `item_mods` VALUES (25980, 13, 35); --ea cuffs -- MND
INSERT INTO `item_mods` VALUES (25980, 14, 23); --ea cuffs -- CHR
INSERT INTO `item_mods` VALUES (25980, 30, 39); --ea cuffs -- MACC
INSERT INTO `item_mods` VALUES (21694, 831, -2500); --lionheart -- DMGMAGIC_II
INSERT INTO `item_mods` VALUES (25980, 68, 27); --ea cuffs -- EVA
INSERT INTO `item_mods` VALUES (25980, 31, 91); --ea cuffs -- MEVA
INSERT INTO `item_mods` VALUES (25980, 28, 30); --ea cuffs -- MATT
INSERT INTO `item_mods` VALUES (25980, 29, 4); --ea cuffs -- MDEF
INSERT INTO `item_mods` VALUES (25980, 384, 300); --ea cuffs -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25980, 487, 5); --ea cuffs -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (26726, 1, 95); --revealers crown -- DEF
INSERT INTO `item_mods` VALUES (26726, 2, 36); --revealers crown -- HP
INSERT INTO `item_mods` VALUES (26726, 5, 62); --revealers crown -- MP
INSERT INTO `item_mods` VALUES (26726, 8, 20); --revealers crown -- STR
INSERT INTO `item_mods` VALUES (26726, 9, 20); --revealers crown -- DEX
INSERT INTO `item_mods` VALUES (26726, 10, 20); --revealers crown -- VIT
INSERT INTO `item_mods` VALUES (26726, 11, 20); --revealers crown -- AGI
INSERT INTO `item_mods` VALUES (26726, 12, 26); --revealers crown -- INT
INSERT INTO `item_mods` VALUES (26726, 13, 26); --revealers crown -- MND
INSERT INTO `item_mods` VALUES (26726, 14, 26); --revealers crown -- CHR
INSERT INTO `item_mods` VALUES (26726, 30, 10); --revealers crown -- MACC
INSERT INTO `item_mods` VALUES (26726, 68, 36); --revealers crown -- EVA
INSERT INTO `item_mods` VALUES (26726, 31, 75); --revealers crown -- MEVA
INSERT INTO `item_mods` VALUES (26726, 29, 5); --revealers crown -- MDEF
INSERT INTO `item_mods` VALUES (26726, 170, 5); --revealers crown -- FASTCAST
INSERT INTO `item_mods` VALUES (26726, 384, 600); --revealers crown -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26727, 1, 96); --revealers crown +1 -- DEF
INSERT INTO `item_mods` VALUES (26727, 2, 36); --revealers crown +1 -- HP
INSERT INTO `item_mods` VALUES (26727, 5, 72); --revealers crown +1 -- MP
INSERT INTO `item_mods` VALUES (26727, 8, 21); --revealers crown +1 -- STR
INSERT INTO `item_mods` VALUES (26727, 9, 21); --revealers crown +1 -- DEX
INSERT INTO `item_mods` VALUES (26727, 10, 21); --revealers crown +1 -- VIT
INSERT INTO `item_mods` VALUES (26727, 11, 21); --revealers crown +1 -- AGI
INSERT INTO `item_mods` VALUES (26727, 12, 27); --revealers crown +1 -- INT
INSERT INTO `item_mods` VALUES (26727, 13, 27); --revealers crown +1 -- MND
INSERT INTO `item_mods` VALUES (26727, 14, 26); --revealers crown +1 -- CHR
INSERT INTO `item_mods` VALUES (16199, 109, 224); --ochain 99 ii -- SHIELD
INSERT INTO `item_mods` VALUES (16199, 905, 100); --ochain 99 ii -- SHIELD_DEF_BONUS
INSERT INTO `item_mods` VALUES (16199, 518, 50); --ochain 99 ii -- SHIELDBLOCKRATE
INSERT INTO `item_mods` VALUES (26403, 416, 5); --srivatsa -- NULL_PHYSICAL_DAMAGE
INSERT INTO `item_mods` VALUES (26403, 476, 5); --srivatsa -- NULL_MAGICAL_DAMAGE
INSERT INTO `item_mods` VALUES (20515, 256, 43); --godhands -- AFTERMATH
INSERT INTO `item_mods` VALUES (25920, 1, 84); --ahosi leggings -- DEF
INSERT INTO `item_mods` VALUES (25920, 2, 18); --ahosi leggings -- HP
INSERT INTO `item_mods` VALUES (25920, 5, 29); --ahosi leggings -- MP
INSERT INTO `item_mods` VALUES (25920, 8, 17); --ahosi leggings -- STR
INSERT INTO `item_mods` VALUES (25920, 9, 26); --ahosi leggings -- DEX
INSERT INTO `item_mods` VALUES (25920, 10, 11); --ahosi leggings -- VIT
INSERT INTO `item_mods` VALUES (25920, 11, 38); --ahosi leggings -- AGI
INSERT INTO `item_mods` VALUES (25920, 13, 16); --ahosi leggings -- MND
INSERT INTO `item_mods` VALUES (25920, 14, 32); --ahosi leggings -- CHR
INSERT INTO `item_mods` VALUES (25920, 25, 35); --ahosi leggings -- ACC
INSERT INTO `item_mods` VALUES (25920, 27, 7); --ahosi leggings -- ENMITY
INSERT INTO `item_mods` VALUES (25920, 29, 5); --ahosi leggings -- MDEF
INSERT INTO `item_mods` VALUES (25920, 31, 107); --ahosi leggings -- MEVA
INSERT INTO `item_mods` VALUES (25920, 68, 77); --ahosi leggings -- EVA
INSERT INTO `item_mods` VALUES (25920, 161, -400); --ahosi leggings -- DMGPHYS
INSERT INTO `item_mods` VALUES (25920, 384, 400); --ahosi leggings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25920, 15, 15); --ahosi leggings -- FIRE_MEVA
INSERT INTO `item_mods` VALUES (25920, 16, 15); --ahosi leggings -- ICE_MEVA
INSERT INTO `item_mods` VALUES (25920, 17, 15); --ahosi leggings -- WIND_MEVA
INSERT INTO `item_mods` VALUES (25920, 18, 15); --ahosi leggings -- EARTH_MEVA
INSERT INTO `item_mods` VALUES (25920, 19, 15); --ahosi leggings -- THUNDER_MEVA
INSERT INTO `item_mods` VALUES (25920, 20, 15); --ahosi leggings -- WATER_MEVA
INSERT INTO `item_mods` VALUES (25920, 21, 15); --ahosi leggings -- LIGHT_MEVA
INSERT INTO `item_mods` VALUES (25920, 22, 15); --ahosi leggings -- DARK_MEVA
INSERT INTO `item_mods` VALUES (26727, 30, 11); --revealers crown +1 -- MACC
INSERT INTO `item_mods` VALUES (26727, 68, 36); --revealers crown +1 -- EVA
INSERT INTO `item_mods` VALUES (26727, 31, 75); --revealers crown +1 -- MEVA
INSERT INTO `item_mods` VALUES (20515, 30, 228); --godhands -- MACC
INSERT INTO `item_mods` VALUES (26727, 29, 5); --revealers crown +1 -- MDEF
INSERT INTO `item_mods` VALUES (26727, 170, 6); --revealers crown +1 -- FASTCAST
INSERT INTO `item_mods` VALUES (26727, 384, 600); --revealers crown +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26723, 1, 114); --wildheitschaller -- DEF
INSERT INTO `item_mods` VALUES (26723, 2, 38); --wildheitschaller -- HP
INSERT INTO `item_mods` VALUES (26723, 5, 53); --wildheitschaller -- MP
INSERT INTO `item_mods` VALUES (25922, 1, 69); --navon crackows -- DEF
INSERT INTO `item_mods` VALUES (25922, 2, 9); --navon crackows -- HP
INSERT INTO `item_mods` VALUES (25922, 5, 20); --navon crackows -- MP
INSERT INTO `item_mods` VALUES (25922, 8, 8); --navon crackows -- STR
INSERT INTO `item_mods` VALUES (25922, 9, 8); --navon crackows -- DEX
INSERT INTO `item_mods` VALUES (25922, 10, 8); --navon crackows -- VIT
INSERT INTO `item_mods` VALUES (25922, 11, 29); --navon crackows -- AGI
INSERT INTO `item_mods` VALUES (25922, 12, 19); --navon crackows -- INT
INSERT INTO `item_mods` VALUES (25922, 13, 17); --navon crackows -- MND
INSERT INTO `item_mods` VALUES (25922, 14, 32); --navon crackows -- CHR
INSERT INTO `item_mods` VALUES (25922, 28, 35); --navon crackows -- MATT
INSERT INTO `item_mods` VALUES (25922, 29, 6); --navon crackows -- MDEF
INSERT INTO `item_mods` VALUES (25922, 31, 118); --navon crackows -- MEVA
INSERT INTO `item_mods` VALUES (25922, 68, 60); --navon crackows -- EVA
INSERT INTO `item_mods` VALUES (25922, 115, 15); --navon crackows -- ELEM
INSERT INTO `item_mods` VALUES (25922, 170, 5); --navon crackows -- FASTCAST
INSERT INTO `item_mods` VALUES (25922, 311, 10); --navon crackows -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (25922, 384, 300); --navon crackows -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26723, 8, 27); --wildheitschaller -- STR
INSERT INTO `item_mods` VALUES (26723, 9, 23); --wildheitschaller -- DEX
INSERT INTO `item_mods` VALUES (26723, 10, 25); --wildheitschaller -- VIT
INSERT INTO `item_mods` VALUES (26723, 11, 22); --wildheitschaller -- AGI
INSERT INTO `item_mods` VALUES (26723, 12, 21); --wildheitschaller -- INT
INSERT INTO `item_mods` VALUES (20695, 30, 242); --sequence -- MACC
INSERT INTO `item_mods` VALUES (26723, 13, 21); --wildheitschaller -- MND
INSERT INTO `item_mods` VALUES (26723, 14, 21); --wildheitschaller -- CHR
INSERT INTO `item_mods` VALUES (26723, 25, 11); --wildheitschaller -- ACC
INSERT INTO `item_mods` VALUES (26723, 68, 33); --wildheitschaller -- EVA
INSERT INTO `item_mods` VALUES (26723, 31, 43); --wildheitschaller -- MEVA
INSERT INTO `item_mods` VALUES (26941, 480, -500); --erilaz surcoat +1 -- ABSORB_DMG_CHANCE
INSERT INTO `item_mods` VALUES (27280, 480, -500); --erilaz leg guards +1 -- ABSORB_DMG_CHANCE
INSERT INTO `item_mods` VALUES (26783, 480, -500); --erilaz galea +1 -- ABSORB_DMG_CHANCE
INSERT INTO `item_mods` VALUES (26723, 29, 2); --wildheitschaller -- MDEF
INSERT INTO `item_mods` VALUES (26723, 384, 700); --wildheitschaller -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26723, 73, 5); --wildheitschaller -- STORETP
INSERT INTO `item_mods` VALUES (27225, 1, 126); --wildheitdiechlings -- DEF
INSERT INTO `item_mods` VALUES (27225, 2, 50); --wildheitdiechlings -- HP
INSERT INTO `item_mods` VALUES (27225, 5, 40); --wildheitdiechlings -- MP
INSERT INTO `item_mods` VALUES (27225, 8, 33); --wildheitdiechlings -- STR
INSERT INTO `item_mods` VALUES (27225, 10, 25); --wildheitdiechlings -- VIT
INSERT INTO `item_mods` VALUES (27225, 11, 15); --wildheitdiechlings -- AGI
INSERT INTO `item_mods` VALUES (27225, 12, 26); --wildheitdiechlings -- INT
INSERT INTO `item_mods` VALUES (27225, 13, 16); --wildheitdiechlings -- MND
INSERT INTO `item_mods` VALUES (27225, 14, 12); --wildheitdiechlings -- CHR
INSERT INTO `item_mods` VALUES (27095, 480, -500); --erilaz gauntlets +1 -- ABSORB_DMG_CHANCE
INSERT INTO `item_mods` VALUES (27454, 480, -500); --erilaz greaves +1 -- ABSORB_DMG_CHANCE
INSERT INTO `item_mods` VALUES (27225, 23, 10); --wildheitdiechlings -- ATT
INSERT INTO `item_mods` VALUES (27225, 68, 22); --wildheitdiechlings -- EVA
INSERT INTO `item_mods` VALUES (27225, 31, 75); --wildheitdiechlings -- MEVA
INSERT INTO `item_mods` VALUES (27225, 29, 3); --wildheitdiechlings -- MDEF
INSERT INTO `item_mods` VALUES (27225, 384, 500); --wildheitdiechlings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27225, 288, 2); --wildheitdiechlings -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (26722, 1, 113); --gefechtschaller -- DEF
INSERT INTO `item_mods` VALUES (26722, 2, 38); --gefechtschaller -- HP
INSERT INTO `item_mods` VALUES (26722, 5, 43); --gefechtschaller -- MP
INSERT INTO `item_mods` VALUES (26722, 8, 26); --gefechtschaller -- STR
INSERT INTO `item_mods` VALUES (26722, 9, 22); --gefechtschaller -- DEX
INSERT INTO `item_mods` VALUES (26722, 10, 24); --gefechtschaller -- VIT
INSERT INTO `item_mods` VALUES (14625, 541, 30); --evokers ring -- BP_DELAY_II
INSERT INTO `item_mods` VALUES (14625, 357, 30); --evokers ring -- BP_DELAY
INSERT INTO `item_mods` VALUES (14625, 371, 6); --evokers ring -- AVATAR_PERPETUATION
INSERT INTO `item_mods` VALUES (26722, 11, 21); --gefechtschaller -- AGI
INSERT INTO `item_mods` VALUES (26722, 12, 20); --gefechtschaller -- INT
INSERT INTO `item_mods` VALUES (26722, 13, 20); --gefechtschaller -- MND
INSERT INTO `item_mods` VALUES (26722, 14, 20); --gefechtschaller -- CHR
INSERT INTO `item_mods` VALUES (26722, 25, 10); --gefechtschaller -- ACC
INSERT INTO `item_mods` VALUES (26359, 347, 15); --orpheuss sash -- FIRE_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26359, 348, 15); --orpheuss sash -- ICE_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26359, 349, 15); --orpheuss sash -- WIND_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26722, 68, 33); --gefechtschaller -- EVA
INSERT INTO `item_mods` VALUES (26722, 31, 43); --gefechtschaller -- MEVA
INSERT INTO `item_mods` VALUES (26722, 29, 2); --gefechtschaller -- MDEF
INSERT INTO `item_mods` VALUES (26722, 384, 700); --gefechtschaller -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26722, 73, 4); --gefechtschaller -- STORETP
INSERT INTO `item_mods` VALUES (27224, 1, 125); --gefechtdiechlings -- DEF
INSERT INTO `item_mods` VALUES (27224, 2, 50); --gefechtdiechlings -- HP
INSERT INTO `item_mods` VALUES (26359, 350, 15); --orpheuss sash -- EARTH_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26359, 351, 15); --orpheuss sash -- THUNDER_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26359, 352, 15); --orpheuss sash -- WATER_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (27224, 5, 30); --gefechtdiechlings -- MP
INSERT INTO `item_mods` VALUES (27224, 8, 33); --gefechtdiechlings -- STR
INSERT INTO `item_mods` VALUES (27224, 10, 24); --gefechtdiechlings -- VIT
INSERT INTO `item_mods` VALUES (27224, 11, 15); --gefechtdiechlings -- AGI
INSERT INTO `item_mods` VALUES (27224, 12, 26); --gefechtdiechlings -- INT
INSERT INTO `item_mods` VALUES (26359, 353, 15); --orpheuss sash -- LIGHT_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (26359, 354, 15); --orpheuss sash -- DARK_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (27224, 13, 16); --gefechtdiechlings -- MND
INSERT INTO `item_mods` VALUES (27224, 14, 12); --gefechtdiechlings -- CHR
INSERT INTO `item_mods` VALUES (27224, 23, 10); --gefechtdiechlings -- ATT
INSERT INTO `item_mods` VALUES (27224, 68, 22); --gefechtdiechlings -- EVA
INSERT INTO `item_mods` VALUES (27224, 31, 75); --gefechtdiechlings -- MEVA
INSERT INTO `item_mods` VALUES (20683, 8, 15); --zantetsuken -- STR
INSERT INTO `item_mods` VALUES (20683, 25, 27); --zantetsuken -- ACC
INSERT INTO `item_mods` VALUES (20683, 384, 400); --zantetsuken -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27224, 29, 3); --gefechtdiechlings -- MDEF
INSERT INTO `item_mods` VALUES (27224, 384, 500); --gefechtdiechlings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27224, 288, 1); --gefechtdiechlings -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (20683, 430, 3); --zantetsuken -- QUAD_ATTACK
INSERT INTO `item_mods` VALUES (20683, 431, 12); --zantetsuken -- ITEM_ADDEFFECT_TYPE
INSERT INTO `item_mods` VALUES (20683, 499, 12); --zantetsuken -- ITEM_SUBEFFECT
INSERT INTO `item_mods` VALUES (25907, 1, 127); --turms subligar -- DEF
INSERT INTO `item_mods` VALUES (25907, 2, 107); --turms subligar -- HP
INSERT INTO `item_mods` VALUES (25907, 8, 30); --turms subligar -- STR
INSERT INTO `item_mods` VALUES (25907, 10, 16); --turms subligar -- VIT
INSERT INTO `item_mods` VALUES (25907, 11, 32); --turms subligar -- AGI
INSERT INTO `item_mods` VALUES (25907, 12, 30); --turms subligar -- INT
INSERT INTO `item_mods` VALUES (25907, 13, 17); --turms subligar -- MND
INSERT INTO `item_mods` VALUES (25907, 14, 17); --turms subligar -- CHR
INSERT INTO `item_mods` VALUES (25907, 25, 41); --turms subligar -- ACC
INSERT INTO `item_mods` VALUES (23067, 570, 3); --vitiation chapeau +2 -- WEAPONSKILL_DAMAGE_BASE
INSERT INTO `item_mods` VALUES (25921, 1, 71); --skaoi boots -- DEF
INSERT INTO `item_mods` VALUES (25921, 2, 65); --skaoi boots -- HP
INSERT INTO `item_mods` VALUES (25921, 5, 67); --skaoi boots -- MP
INSERT INTO `item_mods` VALUES (25921, 8, 12); --skaoi boots -- STR
INSERT INTO `item_mods` VALUES (25921, 9, 16); --skaoi boots -- DEX
INSERT INTO `item_mods` VALUES (25921, 10, 12); --skaoi boots -- VIT
INSERT INTO `item_mods` VALUES (25921, 11, 33); --skaoi boots -- AGI
INSERT INTO `item_mods` VALUES (25921, 12, 16); --skaoi boots -- INT
INSERT INTO `item_mods` VALUES (25921, 13, 17); --skaoi boots -- MND
INSERT INTO `item_mods` VALUES (25921, 14, 33); --skaoi boots -- CHR
INSERT INTO `item_mods` VALUES (25921, 29, 6); --skaoi boots -- MDEF
INSERT INTO `item_mods` VALUES (25921, 30, 37); --skaoi boots -- MACC
INSERT INTO `item_mods` VALUES (25921, 31, 107); --skaoi boots -- MEVA
INSERT INTO `item_mods` VALUES (25921, 68, 60); --skaoi boots -- EVA
INSERT INTO `item_mods` VALUES (25921, 114, 17); --skaoi boots -- ENFEEBLE
INSERT INTO `item_mods` VALUES (25921, 374, 7); --skaoi boots -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (25921, 384, 300); --skaoi boots -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23469, 1, 146); --vitiation tabard +3 -- DEF
INSERT INTO `item_mods` VALUES (23469, 2, 74); --vitiation tabard +3 -- HP
INSERT INTO `item_mods` VALUES (23469, 5, 99); --vitiation tabard +3 -- MP
INSERT INTO `item_mods` VALUES (23469, 8, 31); --vitiation tabard +3 -- STR
INSERT INTO `item_mods` VALUES (23469, 9, 31); --vitiation tabard +3 -- DEX
INSERT INTO `item_mods` VALUES (23469, 10, 31); --vitiation tabard +3 -- VIT
INSERT INTO `item_mods` VALUES (23469, 11, 31); --vitiation tabard +3 -- AGI
INSERT INTO `item_mods` VALUES (23469, 12, 39); --vitiation tabard +3 -- INT
INSERT INTO `item_mods` VALUES (23469, 13, 45); --vitiation tabard +3 -- MND
INSERT INTO `item_mods` VALUES (23469, 14, 39); --vitiation tabard +3 -- CHR
INSERT INTO `item_mods` VALUES (23469, 25, 40); --vitiation tabard +3 -- ACC
INSERT INTO `item_mods` VALUES (23469, 23, 65); --vitiation tabard +3 -- ATT
INSERT INTO `item_mods` VALUES (23469, 30, 40); --vitiation tabard +3 -- MACC
INSERT INTO `item_mods` VALUES (23469, 68, 61); --vitiation tabard +3 -- EVA
INSERT INTO `item_mods` VALUES (23469, 31, 100); --vitiation tabard +3 -- MEVA
INSERT INTO `item_mods` VALUES (23469, 29, 8); --vitiation tabard +3 -- MDEF
INSERT INTO `item_mods` VALUES (23469, 112, 23); --vitiation tabard +3 -- HEALING
INSERT INTO `item_mods` VALUES (23469, 113, 23); --vitiation tabard +3 -- ENHANCE
INSERT INTO `item_mods` VALUES (23469, 384, 300); --vitiation tabard +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23469, 170, 15); --vitiation tabard +3 -- FASTCAST
INSERT INTO `item_mods` VALUES (23469, 890, 15); --vitiation tabard +3 -- ENH_MAGIC_DURATION
INSERT INTO `item_mods` VALUES (25592, 1, 145); --hjarrandi helm -- DEF
INSERT INTO `item_mods` VALUES (25592, 2, 114); --hjarrandi helm -- HP
INSERT INTO `item_mods` VALUES (25592, 8, 32); --hjarrandi helm -- STR
INSERT INTO `item_mods` VALUES (25592, 9, 21); --hjarrandi helm -- DEX
INSERT INTO `item_mods` VALUES (25592, 10, 44); --hjarrandi helm -- VIT
INSERT INTO `item_mods` VALUES (25656, 1, 118); --ynglinga sallet -- DEF
INSERT INTO `item_mods` VALUES (25656, 2, 43); --ynglinga sallet -- HP
INSERT INTO `item_mods` VALUES (25656, 8, 28); --ynglinga sallet -- STR
INSERT INTO `item_mods` VALUES (25656, 9, 21); --ynglinga sallet -- DEX
INSERT INTO `item_mods` VALUES (25656, 10, 27); --ynglinga sallet -- VIT
INSERT INTO `item_mods` VALUES (25656, 11, 19); --ynglinga sallet -- AGI
INSERT INTO `item_mods` VALUES (25656, 12, 15); --ynglinga sallet -- INT
INSERT INTO `item_mods` VALUES (25656, 13, 15); --ynglinga sallet -- MND
INSERT INTO `item_mods` VALUES (25656, 14, 15); --ynglinga sallet -- CHR
INSERT INTO `item_mods` VALUES (25656, 25, 45); --ynglinga sallet -- ACC
INSERT INTO `item_mods` VALUES (25656, 29, 2); --ynglinga sallet -- MDEF
INSERT INTO `item_mods` VALUES (25656, 31, 48); --ynglinga sallet -- MEVA
INSERT INTO `item_mods` VALUES (25656, 48, 20); --ynglinga sallet -- WSACC
INSERT INTO `item_mods` VALUES (25656, 68, 36); --ynglinga sallet -- EVA
INSERT INTO `item_mods` VALUES (25656, 161, -300); --ynglinga sallet -- DMGPHYS
INSERT INTO `item_mods` VALUES (25656, 384, 700); --ynglinga sallet -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25592, 11, 16); --hjarrandi helm -- AGI
INSERT INTO `item_mods` VALUES (25592, 12, 26); --hjarrandi helm -- INT
INSERT INTO `item_mods` VALUES (25592, 13, 29); --hjarrandi helm -- MND
INSERT INTO `item_mods` VALUES (25592, 14, 38); --hjarrandi helm -- CHR
INSERT INTO `item_mods` VALUES (25592, 25, 41); --hjarrandi helm -- ACC
INSERT INTO `item_mods` VALUES (25592, 23, 45); --hjarrandi helm -- ATT
INSERT INTO `item_mods` VALUES (25592, 30, 43); --hjarrandi helm -- MACC
INSERT INTO `item_mods` VALUES (25592, 68, 38); --hjarrandi helm -- EVA
INSERT INTO `item_mods` VALUES (25592, 31, 53); --hjarrandi helm -- MEVA
INSERT INTO `item_mods` VALUES (25592, 288, 6); --hjarrandi helm -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (25592, 160, -1000); --hjarrandi helm -- DMG
INSERT INTO `item_mods` VALUES (25592, 73, 7); --hjarrandi helm -- STORETP
INSERT INTO `item_mods` VALUES (25592, 29, 8); --hjarrandi helm -- MDEF
INSERT INTO `item_mods` VALUES (23536, 1, 103); --vitiation gloves +3 -- DEF
INSERT INTO `item_mods` VALUES (23536, 2, 42); --vitiation gloves +3 -- HP
INSERT INTO `item_mods` VALUES (23536, 5, 64); --vitiation gloves +3 -- MP
INSERT INTO `item_mods` VALUES (23536, 8, 16); --vitiation gloves +3 -- STR
INSERT INTO `item_mods` VALUES (23536, 9, 38); --vitiation gloves +3 -- DEX
INSERT INTO `item_mods` VALUES (23536, 10, 35); --vitiation gloves +3 -- VIT
INSERT INTO `item_mods` VALUES (23536, 11, 15); --vitiation gloves +3 -- AGI
INSERT INTO `item_mods` VALUES (23536, 12, 32); --vitiation gloves +3 -- INT
INSERT INTO `item_mods` VALUES (23536, 13, 46); --vitiation gloves +3 -- MND
INSERT INTO `item_mods` VALUES (23536, 14, 29); --vitiation gloves +3 -- CHR
INSERT INTO `item_mods` VALUES (23536, 25, 38); --vitiation gloves +3 -- ACC
INSERT INTO `item_mods` VALUES (23536, 23, 63); --vitiation gloves +3 -- ATT
INSERT INTO `item_mods` VALUES (23536, 30, 38); --vitiation gloves +3 -- MACC
INSERT INTO `item_mods` VALUES (23536, 68, 42); --vitiation gloves +3 -- EVA
INSERT INTO `item_mods` VALUES (23536, 31, 57); --vitiation gloves +3 -- MEVA
INSERT INTO `item_mods` VALUES (23536, 29, 8); --vitiation gloves +3 -- MDEF
INSERT INTO `item_mods` VALUES (23536, 113, 24); --vitiation gloves +3 -- ENHANCE
INSERT INTO `item_mods` VALUES (23536, 384, 300); --vitiation gloves +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23603, 1, 129); --vitiation tights +3 -- DEF
INSERT INTO `item_mods` VALUES (23603, 2, 63); --vitiation tights +3 -- HP
INSERT INTO `item_mods` VALUES (23603, 5, 49); --vitiation tights +3 -- MP
INSERT INTO `item_mods` VALUES (23603, 8, 35); --vitiation tights +3 -- STR
INSERT INTO `item_mods` VALUES (23603, 9, 22); --vitiation tights +3 -- DEX
INSERT INTO `item_mods` VALUES (23603, 10, 22); --vitiation tights +3 -- VIT
INSERT INTO `item_mods` VALUES (23603, 11, 27); --vitiation tights +3 -- AGI
INSERT INTO `item_mods` VALUES (23603, 12, 44); --vitiation tights +3 -- INT
INSERT INTO `item_mods` VALUES (23603, 13, 34); --vitiation tights +3 -- MND
INSERT INTO `item_mods` VALUES (23603, 14, 29); --vitiation tights +3 -- CHR
INSERT INTO `item_mods` VALUES (23603, 25, 39); --vitiation tights +3 -- ACC
INSERT INTO `item_mods` VALUES (23603, 23, 64); --vitiation tights +3 -- ATT
INSERT INTO `item_mods` VALUES (23603, 30, 39); --vitiation tights +3 -- MACC
INSERT INTO `item_mods` VALUES (23603, 68, 47); --vitiation tights +3 -- EVA
INSERT INTO `item_mods` VALUES (23603, 31, 127); --vitiation tights +3 -- MEVA
INSERT INTO `item_mods` VALUES (23603, 29, 8); --vitiation tights +3 -- MDEF
INSERT INTO `item_mods` VALUES (23603, 115, 23); --vitiation tights +3 -- ELEM
INSERT INTO `item_mods` VALUES (23603, 344, 30); --vitiation tights +3 -- SPIKES_DMG
INSERT INTO `item_mods` VALUES (23603, 161, -500); --vitiation tights +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23603, 384, 500); --vitiation tights +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25907, 68, 74); --turms subligar -- EVA
INSERT INTO `item_mods` VALUES (25907, 31, 137); --turms subligar -- MEVA
INSERT INTO `item_mods` VALUES (25907, 29, 8); --turms subligar -- MDEF
INSERT INTO `item_mods` VALUES (25907, 384, 900); --turms subligar -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25907, 370, 7); --turms subligar -- REGEN
INSERT INTO `item_mods` VALUES (25907, 165, 6); --turms subligar -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25974, 1, 85); --turms leggings -- DEF
INSERT INTO `item_mods` VALUES (25974, 2, 61); --turms leggings -- HP
INSERT INTO `item_mods` VALUES (25974, 8, 14); --turms leggings -- STR
INSERT INTO `item_mods` VALUES (25974, 9, 34); --turms leggings -- DEX
INSERT INTO `item_mods` VALUES (25974, 10, 12); --turms leggings -- VIT
INSERT INTO `item_mods` VALUES (25974, 11, 48); --turms leggings -- AGI
INSERT INTO `item_mods` VALUES (25974, 13, 12); --turms leggings -- MND
INSERT INTO `item_mods` VALUES (25974, 14, 38); --turms leggings -- CHR
INSERT INTO `item_mods` VALUES (25974, 25, 38); --turms leggings -- ACC
INSERT INTO `item_mods` VALUES (25974, 68, 109); --turms leggings -- EVA
INSERT INTO `item_mods` VALUES (25974, 31, 137); --turms leggings -- MEVA
INSERT INTO `item_mods` VALUES (25974, 29, 6); --turms leggings -- MDEF
INSERT INTO `item_mods` VALUES (25974, 384, 3); --turms leggings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25974, 370, 4); --turms leggings -- REGEN
INSERT INTO `item_mods` VALUES (25994, 1, 103); --turms mittens -- DEF
INSERT INTO `item_mods` VALUES (25994, 2, 59); --turms mittens -- HP
INSERT INTO `item_mods` VALUES (25994, 8, 12); --turms mittens -- STR
INSERT INTO `item_mods` VALUES (25994, 9, 46); --turms mittens -- DEX
INSERT INTO `item_mods` VALUES (25994, 10, 32); --turms mittens -- VIT
INSERT INTO `item_mods` VALUES (25994, 12, 15); --turms mittens -- INT
INSERT INTO `item_mods` VALUES (25994, 13, 30); --turms mittens -- MND
INSERT INTO `item_mods` VALUES (25994, 14, 23); --turms mittens -- CHR
INSERT INTO `item_mods` VALUES (25994, 25, 39); --turms mittens -- ACC
INSERT INTO `item_mods` VALUES (25994, 68, 70); --turms mittens -- EVA
INSERT INTO `item_mods` VALUES (25994, 31, 91); --turms mittens -- MEVA
INSERT INTO `item_mods` VALUES (25994, 29, 4); --turms mittens -- MDEF
INSERT INTO `item_mods` VALUES (25994, 384, 400); --turms mittens -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25994, 370, 5); --turms mittens -- REGEN
INSERT INTO `item_mods` VALUES (26543, 1, 145); --turms harness -- DEF
INSERT INTO `item_mods` VALUES (26543, 2, 114); --turms harness -- HP
INSERT INTO `item_mods` VALUES (26543, 8, 25); --turms harness -- STR
INSERT INTO `item_mods` VALUES (26543, 9, 42); --turms harness -- DEX
INSERT INTO `item_mods` VALUES (26543, 10, 24); --turms harness -- VIT
INSERT INTO `item_mods` VALUES (26543, 11, 39); --turms harness -- AGI
INSERT INTO `item_mods` VALUES (26543, 12, 23); --turms harness -- INT
INSERT INTO `item_mods` VALUES (26543, 13, 23); --turms harness -- MND
INSERT INTO `item_mods` VALUES (26543, 14, 29); --turms harness -- CHR
INSERT INTO `item_mods` VALUES (26543, 25, 42); --turms harness -- ACC
INSERT INTO `item_mods` VALUES (26543, 68, 88); --turms harness -- EVA
INSERT INTO `item_mods` VALUES (26543, 31, 118); --turms harness -- MEVA
INSERT INTO `item_mods` VALUES (26543, 29, 8); --turms harness -- MDEF
INSERT INTO `item_mods` VALUES (26543, 384, 400); --turms harness -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26543, 73, 9); --turms harness -- STORETP
INSERT INTO `item_mods` VALUES (26543, 370, 8); --turms harness -- REGEN
INSERT INTO `item_mods` VALUES (20683, 501, 10); --zantetsuken -- ITEM_ADDEFFECT_CHANCE
INSERT INTO `item_mods` VALUES (20683, 951, 0); --zantetsuken -- ITEM_ADDEFFECT_STATUS
INSERT INTO `item_mods` VALUES (20683, 952, 1); --zantetsuken -- ITEM_ADDEFFECT_POWER
INSERT INTO `item_mods` VALUES (20683, 998, 50); --zantetsuken -- DREAD_SPIKES_EFFECT
INSERT INTO `item_mods` VALUES (28522, 259, 7); --dudgeon earring -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (28522, 481, 7); --dudgeon earring -- EXTRA_DUAL_WIELD_ATTACK
INSERT INTO `item_mods` VALUES (28523, 259, 7); --heartseeker earring -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (28523, 481, 7); --heartseeker earring -- EXTRA_DUAL_WIELD_ATTACK
INSERT INTO `item_mods` VALUES (23797, 1, 156); --crepuscular helm -- DEF
INSERT INTO `item_mods` VALUES (23797, 2, 114); --crepuscular helm -- HP
INSERT INTO `item_mods` VALUES (23797, 8, 41); --crepuscular helm -- STR
INSERT INTO `item_mods` VALUES (21022, 23, 40); --shishio -- ATT
INSERT INTO `item_mods` VALUES (21022, 24, 30); --shishio -- RATT
INSERT INTO `item_mods` VALUES (21022, 161, -300); --shishio -- DMGPHYS
INSERT INTO `item_mods` VALUES (23797, 9, 28); --crepuscular helm -- DEX
INSERT INTO `item_mods` VALUES (23797, 10, 48); --crepuscular helm -- VIT
INSERT INTO `item_mods` VALUES (23797, 11, 29); --crepuscular helm -- AGI
INSERT INTO `item_mods` VALUES (23797, 12, 27); --crepuscular helm -- INT
INSERT INTO `item_mods` VALUES (20932, 27, -5); --habile mazrak -- ENMITY
INSERT INTO `item_mods` VALUES (20932, 25, 36); --habile mazrak -- ACC
INSERT INTO `item_mods` VALUES (20932, 23, 34); --habile mazrak -- ATT
INSERT INTO `item_mods` VALUES (20932, 73, 8); --habile mazrak -- STORETP
INSERT INTO `item_mods` VALUES (20932, 233, 20); --habile mazrak -- DRAGON_KILLER
INSERT INTO `item_mods` VALUES (20932, 165, 5); --habile mazrak -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23797, 13, 31); --crepuscular helm -- MND
INSERT INTO `item_mods` VALUES (23797, 14, 29); --crepuscular helm -- CHR
INSERT INTO `item_mods` VALUES (23797, 25, 20); --crepuscular helm -- ACC
INSERT INTO `item_mods` VALUES (23797, 23, 60); --crepuscular helm -- ATT
INSERT INTO `item_mods` VALUES (23797, 31, 20); --crepuscular helm -- MEVA
INSERT INTO `item_mods` VALUES (21687, 25, 35); --takoba -- ACC
INSERT INTO `item_mods` VALUES (21687, 30, 20); --takoba -- MACC
INSERT INTO `item_mods` VALUES (21687, 27, 9); --takoba -- ENMITY
INSERT INTO `item_mods` VALUES (21687, 160, -300); --takoba -- DMG
INSERT INTO `item_mods` VALUES (23797, 68, 86); --crepuscular helm -- EVA
INSERT INTO `item_mods` VALUES (23797, 30, 86); --crepuscular helm -- MACC
INSERT INTO `item_mods` VALUES (23797, 28, 6); --crepuscular helm -- MATT
INSERT INTO `item_mods` VALUES (23797, 384, 400); --crepuscular helm -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23797, 430, 4); --crepuscular helm -- QUAD_ATTACK
INSERT INTO `item_mods` VALUES (23797, 838, 3); --crepuscular helm -- REGEN_MULTIPLIER
INSERT INTO `item_mods` VALUES (23797, 458, 1); --crepuscular helm -- RERAISE_III
INSERT INTO `item_mods` VALUES (21104, 978, 9); --eosuchus club -- MAX_SWINGS
INSERT INTO `item_mods` VALUES (25825, 430, 25); --regal captains gloves -- QUAD_ATTACK
INSERT INTO `item_mods` VALUES (25825, 481, 25); --regal captains gloves -- EXTRA_DUAL_WIELD_ATTACK
INSERT INTO `item_mods` VALUES (23478, 1, 161); --pteroslaver mail +3 -- DEF
INSERT INTO `item_mods` VALUES (23478, 2, 102); --pteroslaver mail +3 -- HP
INSERT INTO `item_mods` VALUES (23478, 5, 64); --pteroslaver mail +3 -- MP
INSERT INTO `item_mods` VALUES (23478, 8, 44); --pteroslaver mail +3 -- STR
INSERT INTO `item_mods` VALUES (23478, 9, 39); --pteroslaver mail +3 -- DEX
INSERT INTO `item_mods` VALUES (23478, 10, 36); --pteroslaver mail +3 -- VIT
INSERT INTO `item_mods` VALUES (23478, 11, 31); --pteroslaver mail +3 -- AGI
INSERT INTO `item_mods` VALUES (23478, 12, 31); --pteroslaver mail +3 -- INT
INSERT INTO `item_mods` VALUES (23478, 13, 31); --pteroslaver mail +3 -- MND
INSERT INTO `item_mods` VALUES (23478, 14, 31); --pteroslaver mail +3 -- CHR
INSERT INTO `item_mods` VALUES (23478, 25, 40); --pteroslaver mail +3 -- ACC
INSERT INTO `item_mods` VALUES (23478, 23, 80); --pteroslaver mail +3 -- ATT
INSERT INTO `item_mods` VALUES (23478, 30, 40); --pteroslaver mail +3 -- MACC
INSERT INTO `item_mods` VALUES (23478, 68, 76); --pteroslaver mail +3 -- EVA
INSERT INTO `item_mods` VALUES (23478, 31, 73); --pteroslaver mail +3 -- MEVA
INSERT INTO `item_mods` VALUES (23478, 29, 6); --pteroslaver mail +3 -- MDEF
INSERT INTO `item_mods` VALUES (23478, 384, 300); --pteroslaver mail +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23478, 974, 1); --pteroslaver mail +3 -- WYVERN_SUBJOB_TRAITS
INSERT INTO `item_mods` VALUES (23545, 1, 116); --pteroslaver finger gauntlets +3 -- DEF
INSERT INTO `item_mods` VALUES (23545, 2, 77); --pteroslaver finger gauntlets +3 -- HP
INSERT INTO `item_mods` VALUES (23545, 5, 50); --pteroslaver finger gauntlets +3 -- MP
INSERT INTO `item_mods` VALUES (23545, 8, 16); --pteroslaver finger gauntlets +3 -- STR
INSERT INTO `item_mods` VALUES (23545, 9, 43); --pteroslaver finger gauntlets +3 -- DEX
INSERT INTO `item_mods` VALUES (23545, 10, 40); --pteroslaver finger gauntlets +3 -- VIT
INSERT INTO `item_mods` VALUES (23545, 11, 20); --pteroslaver finger gauntlets +3 -- AGI
INSERT INTO `item_mods` VALUES (23545, 12, 20); --pteroslaver finger gauntlets +3 -- INT
INSERT INTO `item_mods` VALUES (23545, 13, 36); --pteroslaver finger gauntlets +3 -- MND
INSERT INTO `item_mods` VALUES (23545, 14, 30); --pteroslaver finger gauntlets +3 -- CHR
INSERT INTO `item_mods` VALUES (23545, 25, 46); --pteroslaver finger gauntlets +3 -- ACC
INSERT INTO `item_mods` VALUES (23545, 23, 63); --pteroslaver finger gauntlets +3 -- ATT
INSERT INTO `item_mods` VALUES (23545, 30, 38); --pteroslaver finger gauntlets +3 -- MACC
INSERT INTO `item_mods` VALUES (23545, 68, 42); --pteroslaver finger gauntlets +3 -- EVA
INSERT INTO `item_mods` VALUES (23545, 31, 46); --pteroslaver finger gauntlets +3 -- MEVA
INSERT INTO `item_mods` VALUES (23545, 29, 3); --pteroslaver finger gauntlets +3 -- MDEF
INSERT INTO `item_mods` VALUES (23545, 384, 400); --pteroslaver finger gauntlets +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23545, 841, 10); --pteroslaver finger gauntlets +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (23612, 1, 140); --pteroslaver brais +3 -- DEF
INSERT INTO `item_mods` VALUES (23612, 2, 85); --pteroslaver brais +3 -- HP
INSERT INTO `item_mods` VALUES (23612, 8, 43); --pteroslaver brais +3 -- STR
INSERT INTO `item_mods` VALUES (23612, 9, 22); --pteroslaver brais +3 -- DEX
INSERT INTO `item_mods` VALUES (23612, 10, 41); --pteroslaver brais +3 -- VIT
INSERT INTO `item_mods` VALUES (23612, 11, 25); --pteroslaver brais +3 -- AGI
INSERT INTO `item_mods` VALUES (23612, 12, 36); --pteroslaver brais +3 -- INT
INSERT INTO `item_mods` VALUES (23612, 13, 26); --pteroslaver brais +3 -- MND
INSERT INTO `item_mods` VALUES (23612, 14, 22); --pteroslaver brais +3 -- CHR
INSERT INTO `item_mods` VALUES (23612, 25, 39); --pteroslaver brais +3 -- ACC
INSERT INTO `item_mods` VALUES (23612, 23, 64); --pteroslaver brais +3 -- ATT
INSERT INTO `item_mods` VALUES (23612, 30, 39); --pteroslaver brais +3 -- MACC
INSERT INTO `item_mods` VALUES (23612, 68, 42); --pteroslaver brais +3 -- EVA
INSERT INTO `item_mods` VALUES (23612, 31, 95); --pteroslaver brais +3 -- MEVA
INSERT INTO `item_mods` VALUES (23612, 29, 5); --pteroslaver brais +3 -- MDEF
INSERT INTO `item_mods` VALUES (23612, 384, 500); --pteroslaver brais +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23612, 73, 10); --pteroslaver brais +3 -- STORETP
INSERT INTO `item_mods` VALUES (23612, 363, 29); --pteroslaver brais +3 -- HIGH_JUMP_ENMITY_REDUCTION
INSERT INTO `item_mods` VALUES (25825, 482, 25); --regal captains gloves -- EXTRA_KICK_ATTACK
INSERT INTO `item_mods` VALUES (25825, 978, 8); --regal captains gloves -- MAX_SWINGS
INSERT INTO `item_mods` VALUES (25825, 1, 116); --regal captains gloves -- DEF
INSERT INTO `item_mods` VALUES (25825, 2, 182); --regal captains gloves -- HP
INSERT INTO `item_mods` VALUES (25825, 5, 29); --regal captains gloves -- MP
INSERT INTO `item_mods` VALUES (27990, 289, 2); --sombra mittens +1 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (26724, 1, 101); --sombra tiara -- DEF
INSERT INTO `item_mods` VALUES (26724, 2, 56); --sombra tiara -- HP
INSERT INTO `item_mods` VALUES (25825, 8, 40); --regal captains gloves -- STR
INSERT INTO `item_mods` VALUES (25825, 9, 40); --regal captains gloves -- DEX
INSERT INTO `item_mods` VALUES (25825, 10, 30); --regal captains gloves -- VIT
INSERT INTO `item_mods` VALUES (25825, 11, 30); --regal captains gloves -- AGI
INSERT INTO `item_mods` VALUES (26724, 5, 17); --sombra tiara -- MP
INSERT INTO `item_mods` VALUES (26724, 8, 22); --sombra tiara -- STR
INSERT INTO `item_mods` VALUES (26724, 9, 24); --sombra tiara -- DEX
INSERT INTO `item_mods` VALUES (26724, 10, 21); --sombra tiara -- VIT
INSERT INTO `item_mods` VALUES (26724, 11, 24); --sombra tiara -- AGI
INSERT INTO `item_mods` VALUES (25825, 12, 30); --regal captains gloves -- INT
INSERT INTO `item_mods` VALUES (25825, 13, 30); --regal captains gloves -- MND
INSERT INTO `item_mods` VALUES (25825, 14, 30); --regal captains gloves -- CHR
INSERT INTO `item_mods` VALUES (25825, 23, 45); --regal captains gloves -- ATT
INSERT INTO `item_mods` VALUES (26724, 12, 21); --sombra tiara -- INT
INSERT INTO `item_mods` VALUES (26724, 13, 21); --sombra tiara -- MND
INSERT INTO `item_mods` VALUES (26724, 14, 21); --sombra tiara -- CHR
INSERT INTO `item_mods` VALUES (26724, 25, 10); --sombra tiara -- ACC
INSERT INTO `item_mods` VALUES (25825, 68, 41); --regal captains gloves -- EVA
INSERT INTO `item_mods` VALUES (25825, 31, 48); --regal captains gloves -- MEVA
INSERT INTO `item_mods` VALUES (25825, 28, 2); --regal captains gloves -- MATT
INSERT INTO `item_mods` VALUES (25825, 384, 400); --regal captains gloves -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26724, 26, 10); --sombra tiara -- RACC
INSERT INTO `item_mods` VALUES (26724, 68, 41); --sombra tiara -- EVA
INSERT INTO `item_mods` VALUES (26724, 31, 43); --sombra tiara -- MEVA
INSERT INTO `item_mods` VALUES (26724, 29, 4); --sombra tiara -- MDEF
INSERT INTO `item_mods` VALUES (26702, 840, 30); --gavialis helm -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (28520, 288, 7); --steelflash earring -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (28521, 288, 7); --bladeborn earring -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (26673, 288, 2); --argosy celata +1 -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (23405, 1, 134); --fallens burgeonet +3 -- DEF
INSERT INTO `item_mods` VALUES (23405, 2, 96); --fallens burgeonet +3 -- HP
INSERT INTO `item_mods` VALUES (23405, 5, 43); --fallens burgeonet +3 -- MP
INSERT INTO `item_mods` VALUES (23405, 8, 40); --fallens burgeonet +3 -- STR
INSERT INTO `item_mods` VALUES (23405, 9, 24); --fallens burgeonet +3 -- DEX
INSERT INTO `item_mods` VALUES (23405, 10, 40); --fallens burgeonet +3 -- VIT
INSERT INTO `item_mods` VALUES (23405, 11, 24); --fallens burgeonet +3 -- AGI
INSERT INTO `item_mods` VALUES (23405, 12, 22); --fallens burgeonet +3 -- INT
INSERT INTO `item_mods` VALUES (23405, 13, 22); --fallens burgeonet +3 -- MND
INSERT INTO `item_mods` VALUES (23405, 14, 22); --fallens burgeonet +3 -- CHR
INSERT INTO `item_mods` VALUES (23405, 25, 44); --fallens burgeonet +3 -- ACC
INSERT INTO `item_mods` VALUES (23405, 23, 77); --fallens burgeonet +3 -- ATT
INSERT INTO `item_mods` VALUES (23405, 30, 37); --fallens burgeonet +3 -- MACC
INSERT INTO `item_mods` VALUES (23405, 68, 53); --fallens burgeonet +3 -- EVA
INSERT INTO `item_mods` VALUES (23405, 31, 52); --fallens burgeonet +3 -- MEVA
INSERT INTO `item_mods` VALUES (23405, 29, 4); --fallens burgeonet +3 -- MDEF
INSERT INTO `item_mods` VALUES (23405, 384, 700); --fallens burgeonet +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23472, 1, 166); --fallens cuirass +3 -- DEF
INSERT INTO `item_mods` VALUES (23472, 2, 103); --fallens cuirass +3 -- HP
INSERT INTO `item_mods` VALUES (23472, 5, 75); --fallens cuirass +3 -- MP
INSERT INTO `item_mods` VALUES (23472, 8, 42); --fallens cuirass +3 -- STR
INSERT INTO `item_mods` VALUES (23472, 9, 32); --fallens cuirass +3 -- DEX
INSERT INTO `item_mods` VALUES (23472, 10, 39); --fallens cuirass +3 -- VIT
INSERT INTO `item_mods` VALUES (23472, 11, 29); --fallens cuirass +3 -- AGI
INSERT INTO `item_mods` VALUES (23472, 12, 32); --fallens cuirass +3 -- INT
INSERT INTO `item_mods` VALUES (23472, 13, 32); --fallens cuirass +3 -- MND
INSERT INTO `item_mods` VALUES (23472, 14, 29); --fallens cuirass +3 -- CHR
INSERT INTO `item_mods` VALUES (23472, 25, 48); --fallens cuirass +3 -- ACC
INSERT INTO `item_mods` VALUES (23472, 23, 82); --fallens cuirass +3 -- ATT
INSERT INTO `item_mods` VALUES (23472, 30, 40); --fallens cuirass +3 -- MACC
INSERT INTO `item_mods` VALUES (23472, 68, 61); --fallens cuirass +3 -- EVA
INSERT INTO `item_mods` VALUES (23472, 31, 68); --fallens cuirass +3 -- MEVA
INSERT INTO `item_mods` VALUES (23472, 28, 60); --fallens cuirass +3 -- MATT
INSERT INTO `item_mods` VALUES (23472, 29, 6); --fallens cuirass +3 -- MDEF
INSERT INTO `item_mods` VALUES (23472, 384, 300); --fallens cuirass +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23472, 170, 10); --fallens cuirass +3 -- FASTCAST
INSERT INTO `item_mods` VALUES (23472, 48, 27); --fallens cuirass +3 -- WSACC
INSERT INTO `item_mods` VALUES (23539, 1, 122); --fallens finger gauntlets +3 -- DEF
INSERT INTO `item_mods` VALUES (23539, 2, 49); --fallens finger gauntlets +3 -- HP
INSERT INTO `item_mods` VALUES (23539, 8, 26); --fallens finger gauntlets +3 -- STR
INSERT INTO `item_mods` VALUES (23539, 9, 39); --fallens finger gauntlets +3 -- DEX
INSERT INTO `item_mods` VALUES (23539, 10, 43); --fallens finger gauntlets +3 -- VIT
INSERT INTO `item_mods` VALUES (23539, 12, 24); --fallens finger gauntlets +3 -- INT
INSERT INTO `item_mods` VALUES (23539, 13, 41); --fallens finger gauntlets +3 -- MND
INSERT INTO `item_mods` VALUES (23539, 14, 29); --fallens finger gauntlets +3 -- CHR
INSERT INTO `item_mods` VALUES (23539, 25, 38); --fallens finger gauntlets +3 -- ACC
INSERT INTO `item_mods` VALUES (23539, 23, 77); --fallens finger gauntlets +3 -- ATT
INSERT INTO `item_mods` VALUES (23539, 30, 38); --fallens finger gauntlets +3 -- MACC
INSERT INTO `item_mods` VALUES (23539, 68, 42); --fallens finger gauntlets +3 -- EVA
INSERT INTO `item_mods` VALUES (23539, 31, 46); --fallens finger gauntlets +3 -- MEVA
INSERT INTO `item_mods` VALUES (23539, 28, 62); --fallens finger gauntlets +3 -- MATT
INSERT INTO `item_mods` VALUES (23539, 29, 3); --fallens finger gauntlets +3 -- MDEF
INSERT INTO `item_mods` VALUES (23539, 116, 18); --fallens finger gauntlets +3 -- DARK
INSERT INTO `item_mods` VALUES (23539, 384, 400); --fallens finger gauntlets +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23539, 315, 16); --fallens finger gauntlets +3 -- ENH_DRAIN_ASPIR
INSERT INTO `item_mods` VALUES (23404, 1, 140); --caballarius coronet +3 -- DEF
INSERT INTO `item_mods` VALUES (23404, 2, 116); --caballarius coronet +3 -- HP
INSERT INTO `item_mods` VALUES (23404, 5, 98); --caballarius coronet +3 -- MP
INSERT INTO `item_mods` VALUES (23404, 8, 32); --caballarius coronet +3 -- STR
INSERT INTO `item_mods` VALUES (23404, 9, 26); --caballarius coronet +3 -- DEX
INSERT INTO `item_mods` VALUES (23404, 10, 43); --caballarius coronet +3 -- VIT
INSERT INTO `item_mods` VALUES (23404, 11, 26); --caballarius coronet +3 -- AGI
INSERT INTO `item_mods` VALUES (23404, 12, 24); --caballarius coronet +3 -- INT
INSERT INTO `item_mods` VALUES (23404, 13, 24); --caballarius coronet +3 -- MND
INSERT INTO `item_mods` VALUES (23404, 14, 24); --caballarius coronet +3 -- CHR
INSERT INTO `item_mods` VALUES (23404, 25, 37); --caballarius coronet +3 -- ACC
INSERT INTO `item_mods` VALUES (23404, 23, 62); --caballarius coronet +3 -- ATT
INSERT INTO `item_mods` VALUES (23404, 30, 37); --caballarius coronet +3 -- MACC
INSERT INTO `item_mods` VALUES (23404, 68, 53); --caballarius coronet +3 -- EVA
INSERT INTO `item_mods` VALUES (23404, 31, 52); --caballarius coronet +3 -- MEVA
INSERT INTO `item_mods` VALUES (23404, 29, 4); --caballarius coronet +3 -- MDEF
INSERT INTO `item_mods` VALUES (23404, 384, 700); --caballarius coronet +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23404, 27, 9); --caballarius coronet +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23404, 92, 30); --caballarius coronet +3 -- RAMPART_DURATION
INSERT INTO `item_mods` VALUES (23538, 1, 125); --caballarius gauntlets +3 -- DEF
INSERT INTO `item_mods` VALUES (23538, 2, 124); --caballarius gauntlets +3 -- HP
INSERT INTO `item_mods` VALUES (23538, 8, 20); --caballarius gauntlets +3 -- STR
INSERT INTO `item_mods` VALUES (23538, 9, 39); --caballarius gauntlets +3 -- DEX
INSERT INTO `item_mods` VALUES (23538, 10, 47); --caballarius gauntlets +3 -- VIT
INSERT INTO `item_mods` VALUES (23538, 12, 18); --caballarius gauntlets +3 -- INT
INSERT INTO `item_mods` VALUES (23538, 13, 39); --caballarius gauntlets +3 -- MND
INSERT INTO `item_mods` VALUES (23538, 14, 29); --caballarius gauntlets +3 -- CHR
INSERT INTO `item_mods` VALUES (23538, 25, 38); --caballarius gauntlets +3 -- ACC
INSERT INTO `item_mods` VALUES (23538, 23, 63); --caballarius gauntlets +3 -- ATT
INSERT INTO `item_mods` VALUES (23538, 30, 38); --caballarius gauntlets +3 -- MACC
INSERT INTO `item_mods` VALUES (23538, 68, 42); --caballarius gauntlets +3 -- EVA
INSERT INTO `item_mods` VALUES (23538, 31, 46); --caballarius gauntlets +3 -- MEVA
INSERT INTO `item_mods` VALUES (23538, 29, 3); --caballarius gauntlets +3 -- MDEF
INSERT INTO `item_mods` VALUES (23538, 384, 400); --caballarius gauntlets +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23538, 27, 9); --caballarius gauntlets +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23538, 385, 35); --caballarius gauntlets +3 -- SHIELD_BASH
INSERT INTO `item_mods` VALUES (23605, 1, 151); --caballarius breeches +3 -- DEF
INSERT INTO `item_mods` VALUES (23605, 2, 72); --caballarius breeches +3 -- HP
INSERT INTO `item_mods` VALUES (23605, 5, 100); --caballarius breeches +3 -- MP
INSERT INTO `item_mods` VALUES (23605, 8, 50); --caballarius breeches +3 -- STR
INSERT INTO `item_mods` VALUES (23605, 10, 36); --caballarius breeches +3 -- VIT
INSERT INTO `item_mods` VALUES (23605, 11, 26); --caballarius breeches +3 -- AGI
INSERT INTO `item_mods` VALUES (23605, 12, 35); --caballarius breeches +3 -- INT
INSERT INTO `item_mods` VALUES (23605, 13, 27); --caballarius breeches +3 -- MND
INSERT INTO `item_mods` VALUES (23605, 14, 20); --caballarius breeches +3 -- CHR
INSERT INTO `item_mods` VALUES (23605, 25, 39); --caballarius breeches +3 -- ACC
INSERT INTO `item_mods` VALUES (23605, 23, 64); --caballarius breeches +3 -- ATT
INSERT INTO `item_mods` VALUES (23605, 30, 39); --caballarius breeches +3 -- MACC
INSERT INTO `item_mods` VALUES (23605, 68, 42); --caballarius breeches +3 -- EVA
INSERT INTO `item_mods` VALUES (23605, 31, 84); --caballarius breeches +3 -- MEVA
INSERT INTO `item_mods` VALUES (23605, 29, 5); --caballarius breeches +3 -- MDEF
INSERT INTO `item_mods` VALUES (23605, 384, 500); --caballarius breeches +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23605, 27, 9); --caballarius breeches +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23605, 168, 10); --caballarius breeches +3 -- SPELLINTERRUPT
INSERT INTO `item_mods` VALUES (23605, 161, -700); --caballarius breeches +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23606, 1, 150); --fallens flanchard +3 -- DEF
INSERT INTO `item_mods` VALUES (23606, 2, 97); --fallens flanchard +3 -- HP
INSERT INTO `item_mods` VALUES (23606, 5, 45); --fallens flanchard +3 -- MP
INSERT INTO `item_mods` VALUES (23606, 8, 45); --fallens flanchard +3 -- STR
INSERT INTO `item_mods` VALUES (23606, 10, 31); --fallens flanchard +3 -- VIT
INSERT INTO `item_mods` VALUES (23606, 11, 26); --fallens flanchard +3 -- AGI
INSERT INTO `item_mods` VALUES (23606, 12, 40); --fallens flanchard +3 -- INT
INSERT INTO `item_mods` VALUES (23606, 13, 27); --fallens flanchard +3 -- MND
INSERT INTO `item_mods` VALUES (23606, 14, 20); --fallens flanchard +3 -- CHR
INSERT INTO `item_mods` VALUES (23606, 25, 39); --fallens flanchard +3 -- ACC
INSERT INTO `item_mods` VALUES (23606, 23, 64); --fallens flanchard +3 -- ATT
INSERT INTO `item_mods` VALUES (23606, 30, 39); --fallens flanchard +3 -- MACC
INSERT INTO `item_mods` VALUES (23606, 68, 42); --fallens flanchard +3 -- EVA
INSERT INTO `item_mods` VALUES (23606, 31, 84); --fallens flanchard +3 -- MEVA
INSERT INTO `item_mods` VALUES (23606, 29, 10); --fallens flanchard +3 -- MDEF
INSERT INTO `item_mods` VALUES (23606, 116, 18); --fallens flanchard +3 -- DARK
INSERT INTO `item_mods` VALUES (23606, 841, 10); --fallens flanchard +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (23606, 384, 500); --fallens flanchard +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26724, 384, 700); --sombra tiara -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26724, 289, 4); --sombra tiara -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (23468, 1, 145); --archmages coat +3 -- DEF
INSERT INTO `item_mods` VALUES (23468, 2, 74); --archmages coat +3 -- HP
INSERT INTO `item_mods` VALUES (23468, 5, 79); --archmages coat +3 -- MP
INSERT INTO `item_mods` VALUES (23468, 8, 31); --archmages coat +3 -- STR
INSERT INTO `item_mods` VALUES (23468, 9, 31); --archmages coat +3 -- DEX
INSERT INTO `item_mods` VALUES (23468, 10, 31); --archmages coat +3 -- VIT
INSERT INTO `item_mods` VALUES (23468, 11, 31); --archmages coat +3 -- AGI
INSERT INTO `item_mods` VALUES (23468, 12, 46); --archmages coat +3 -- INT
INSERT INTO `item_mods` VALUES (23468, 13, 39); --archmages coat +3 -- MND
INSERT INTO `item_mods` VALUES (23468, 14, 39); --archmages coat +3 -- CHR
INSERT INTO `item_mods` VALUES (23468, 25, 40); --archmages coat +3 -- ACC
INSERT INTO `item_mods` VALUES (23468, 30, 40); --archmages coat +3 -- MACC
INSERT INTO `item_mods` VALUES (23468, 68, 61); --archmages coat +3 -- EVA
INSERT INTO `item_mods` VALUES (23468, 31, 100); --archmages coat +3 -- MEVA
INSERT INTO `item_mods` VALUES (23468, 28, 52); --archmages coat +3 -- MATT
INSERT INTO `item_mods` VALUES (23468, 29, 8); --archmages coat +3 -- MDEF
INSERT INTO `item_mods` VALUES (23468, 115, 24); --archmages coat +3 -- ELEM
INSERT INTO `item_mods` VALUES (23468, 384, 300); --archmages coat +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23468, 27, -12); --archmages coat +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23468, 369, 3); --archmages coat +3 -- REFRESH
INSERT INTO `item_mods` VALUES (23535, 1, 99); --archmages gloves +3 -- DEF
INSERT INTO `item_mods` VALUES (23535, 2, 42); --archmages gloves +3 -- HP
INSERT INTO `item_mods` VALUES (23535, 5, 34); --archmages gloves +3 -- MP
INSERT INTO `item_mods` VALUES (23535, 8, 16); --archmages gloves +3 -- STR
INSERT INTO `item_mods` VALUES (23535, 9, 38); --archmages gloves +3 -- DEX
INSERT INTO `item_mods` VALUES (23535, 10, 35); --archmages gloves +3 -- VIT
INSERT INTO `item_mods` VALUES (23535, 11, 15); --archmages gloves +3 -- AGI
INSERT INTO `item_mods` VALUES (23535, 13, 43); --archmages gloves +3 -- MND
INSERT INTO `item_mods` VALUES (23535, 14, 29); --archmages gloves +3 -- CHR
INSERT INTO `item_mods` VALUES (23535, 25, 38); --archmages gloves +3 -- ACC
INSERT INTO `item_mods` VALUES (23535, 30, 38); --archmages gloves +3 -- MACC
INSERT INTO `item_mods` VALUES (23535, 68, 42); --archmages gloves +3 -- EVA
INSERT INTO `item_mods` VALUES (23535, 31, 57); --archmages gloves +3 -- MEVA
INSERT INTO `item_mods` VALUES (23535, 28, 50); --archmages gloves +3 -- MATT
INSERT INTO `item_mods` VALUES (23535, 29, 5); --archmages gloves +3 -- MDEF
INSERT INTO `item_mods` VALUES (23535, 115, 23); --archmages gloves +3 -- ELEM
INSERT INTO `item_mods` VALUES (23535, 116, 23); --archmages gloves +3 -- DARK
INSERT INTO `item_mods` VALUES (23535, 384, 300); --archmages gloves +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23535, 27, -7); --archmages gloves +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23535, 487, 20); --archmages gloves +3 -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (23602, 1, 123); --archmages tonban +3 -- DEF
INSERT INTO `item_mods` VALUES (23602, 2, 63); --archmages tonban +3 -- HP
INSERT INTO `item_mods` VALUES (23602, 5, 85); --archmages tonban +3 -- MP
INSERT INTO `item_mods` VALUES (23602, 8, 35); --archmages tonban +3 -- STR
INSERT INTO `item_mods` VALUES (23602, 10, 22); --archmages tonban +3 -- VIT
INSERT INTO `item_mods` VALUES (23602, 11, 27); --archmages tonban +3 -- AGI
INSERT INTO `item_mods` VALUES (23602, 12, 50); --archmages tonban +3 -- INT
INSERT INTO `item_mods` VALUES (23602, 13, 34); --archmages tonban +3 -- MND
INSERT INTO `item_mods` VALUES (23602, 14, 29); --archmages tonban +3 -- CHR
INSERT INTO `item_mods` VALUES (23602, 25, 39); --archmages tonban +3 -- ACC
INSERT INTO `item_mods` VALUES (23602, 30, 46); --archmages tonban +3 -- MACC
INSERT INTO `item_mods` VALUES (23602, 68, 47); --archmages tonban +3 -- EVA
INSERT INTO `item_mods` VALUES (23602, 31, 127); --archmages tonban +3 -- MEVA
INSERT INTO `item_mods` VALUES (23602, 28, 58); --archmages tonban +3 -- MATT
INSERT INTO `item_mods` VALUES (23602, 29, 8); --archmages tonban +3 -- MDEF
INSERT INTO `item_mods` VALUES (23602, 384, 500); --archmages tonban +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23602, 27, -7); --archmages tonban +3 -- ENMITY
INSERT INTO `item_mods` VALUES (27226, 1, 113); --sombra tights -- DEF
INSERT INTO `item_mods` VALUES (27226, 2, 77); --sombra tights -- HP
INSERT INTO `item_mods` VALUES (27226, 5, 14); --sombra tights -- MP
INSERT INTO `item_mods` VALUES (27025, 288, 2); --argosy mufflers +1 -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (27120, 487, 6); --amalric gages +1 -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (25616, 389, 2); --amalric coif +1 -- UDMGMAGIC
INSERT INTO `item_mods` VALUES (25689, 389, 2); --amalric doublet +1 -- UDMGMAGIC
INSERT INTO `item_mods` VALUES (27226, 8, 28); --sombra tights -- STR
INSERT INTO `item_mods` VALUES (27226, 9, 5); --sombra tights -- DEX
INSERT INTO `item_mods` VALUES (27226, 10, 15); --sombra tights -- VIT
INSERT INTO `item_mods` VALUES (27226, 11, 28); --sombra tights -- AGI
INSERT INTO `item_mods` VALUES (27226, 12, 30); --sombra tights -- INT
INSERT INTO `item_mods` VALUES (27305, 389, 2); --amalric slops +1 -- UDMGMAGIC
INSERT INTO `item_mods` VALUES (27476, 389, 2); --amalric nails +1 -- UDMGMAGIC
INSERT INTO `item_mods` VALUES (27226, 13, 17); --sombra tights -- MND
INSERT INTO `item_mods` VALUES (27226, 14, 11); --sombra tights -- CHR
INSERT INTO `item_mods` VALUES (27226, 25, 10); --sombra tights -- ACC
INSERT INTO `item_mods` VALUES (27226, 26, 10); --sombra tights -- RACC
INSERT INTO `item_mods` VALUES (27226, 68, 44); --sombra tights -- EVA
INSERT INTO `item_mods` VALUES (27226, 31, 96); --sombra tights -- MEVA
INSERT INTO `item_mods` VALUES (27226, 259, 3); --sombra tights -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (27226, 384, 700); --sombra tights -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27989, 1, 89); --sombra mittens -- DEF
INSERT INTO `item_mods` VALUES (27989, 2, 25); --sombra mittens -- HP
INSERT INTO `item_mods` VALUES (27989, 5, 28); --sombra mittens -- MP
INSERT INTO `item_mods` VALUES (27989, 8, 7); --sombra mittens -- STR
INSERT INTO `item_mods` VALUES (26648, 522, 12); --mochizuki hatsuburi -- NIN_NUKE_BONUS_GEAR
INSERT INTO `item_mods` VALUES (26649, 522, 15); --mochizuki hatsuburi +1 -- NIN_NUKE_BONUS_GEAR
INSERT INTO `item_mods` VALUES (23410, 1, 120); --mochizuki hatsuburi +3 -- DEF
INSERT INTO `item_mods` VALUES (23410, 2, 56); --mochizuki hatsuburi +3 -- HP
INSERT INTO `item_mods` VALUES (23410, 8, 31); --mochizuki hatsuburi +3 -- STR
INSERT INTO `item_mods` VALUES (23410, 9, 31); --mochizuki hatsuburi +3 -- DEX
INSERT INTO `item_mods` VALUES (23410, 10, 33); --mochizuki hatsuburi +3 -- VIT
INSERT INTO `item_mods` VALUES (23410, 11, 33); --mochizuki hatsuburi +3 -- AGI
INSERT INTO `item_mods` VALUES (23410, 12, 32); --mochizuki hatsuburi +3 -- INT
INSERT INTO `item_mods` VALUES (23410, 13, 32); --mochizuki hatsuburi +3 -- MND
INSERT INTO `item_mods` VALUES (23410, 14, 32); --mochizuki hatsuburi +3 -- CHR
INSERT INTO `item_mods` VALUES (23410, 25, 44); --mochizuki hatsuburi +3 -- ACC
INSERT INTO `item_mods` VALUES (23410, 23, 62); --mochizuki hatsuburi +3 -- ATT
INSERT INTO `item_mods` VALUES (23410, 30, 37); --mochizuki hatsuburi +3 -- MACC
INSERT INTO `item_mods` VALUES (23410, 68, 73); --mochizuki hatsuburi +3 -- EVA
INSERT INTO `item_mods` VALUES (23410, 31, 63); --mochizuki hatsuburi +3 -- MEVA
INSERT INTO `item_mods` VALUES (23410, 28, 61); --mochizuki hatsuburi +3 -- MATT
INSERT INTO `item_mods` VALUES (23410, 29, 6); --mochizuki hatsuburi +3 -- MDEF
INSERT INTO `item_mods` VALUES (23410, 110, 20); --mochizuki hatsuburi +3 -- PARRY
INSERT INTO `item_mods` VALUES (23410, 384, 800); --mochizuki hatsuburi +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23410, 522, 21); --mochizuki hatsuburi +3 -- NIN_NUKE_BONUS_GEAR
INSERT INTO `item_mods` VALUES (23477, 1, 154); --mochizuki chainmail +3 -- DEF
INSERT INTO `item_mods` VALUES (23477, 2, 79); --mochizuki chainmail +3 -- HP
INSERT INTO `item_mods` VALUES (23477, 8, 34); --mochizuki chainmail +3 -- STR
INSERT INTO `item_mods` VALUES (23477, 9, 35); --mochizuki chainmail +3 -- DEX
INSERT INTO `item_mods` VALUES (23477, 10, 31); --mochizuki chainmail +3 -- VIT
INSERT INTO `item_mods` VALUES (23477, 11, 35); --mochizuki chainmail +3 -- AGI
INSERT INTO `item_mods` VALUES (23477, 12, 34); --mochizuki chainmail +3 -- INT
INSERT INTO `item_mods` VALUES (23477, 13, 34); --mochizuki chainmail +3 -- MND
INSERT INTO `item_mods` VALUES (23477, 14, 34); --mochizuki chainmail +3 -- CHR
INSERT INTO `item_mods` VALUES (23477, 25, 51); --mochizuki chainmail +3 -- ACC
INSERT INTO `item_mods` VALUES (23477, 23, 87); --mochizuki chainmail +3 -- ATT
INSERT INTO `item_mods` VALUES (23477, 26, 47); --mochizuki chainmail +3 -- RACC
INSERT INTO `item_mods` VALUES (23477, 24, 79); --mochizuki chainmail +3 -- RATT
INSERT INTO `item_mods` VALUES (23477, 30, 40); --mochizuki chainmail +3 -- MACC
INSERT INTO `item_mods` VALUES (23477, 68, 72); --mochizuki chainmail +3 -- EVA
INSERT INTO `item_mods` VALUES (23477, 31, 73); --mochizuki chainmail +3 -- MEVA
INSERT INTO `item_mods` VALUES (23477, 29, 6); --mochizuki chainmail +3 -- MDEF
INSERT INTO `item_mods` VALUES (23477, 384, 400); --mochizuki chainmail +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23477, 259, 9); --mochizuki chainmail +3 -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (23477, 911, 10); --mochizuki chainmail +3 -- DAKEN
INSERT INTO `item_mods` VALUES (23544, 1, 109); --mochizuki tekko +3 -- DEF
INSERT INTO `item_mods` VALUES (23544, 2, 45); --mochizuki tekko +3 -- HP
INSERT INTO `item_mods` VALUES (23544, 8, 30); --mochizuki tekko +3 -- STR
INSERT INTO `item_mods` VALUES (23544, 9, 44); --mochizuki tekko +3 -- DEX
INSERT INTO `item_mods` VALUES (23544, 10, 37); --mochizuki tekko +3 -- VIT
INSERT INTO `item_mods` VALUES (23544, 11, 16); --mochizuki tekko +3 -- AGI
INSERT INTO `item_mods` VALUES (23544, 12, 20); --mochizuki tekko +3 -- INT
INSERT INTO `item_mods` VALUES (23544, 13, 38); --mochizuki tekko +3 -- MND
INSERT INTO `item_mods` VALUES (23544, 14, 26); --mochizuki tekko +3 -- CHR
INSERT INTO `item_mods` VALUES (23544, 25, 38); --mochizuki tekko +3 -- ACC
INSERT INTO `item_mods` VALUES (23544, 23, 79); --mochizuki tekko +3 -- ATT
INSERT INTO `item_mods` VALUES (23544, 30, 38); --mochizuki tekko +3 -- MACC
INSERT INTO `item_mods` VALUES (23544, 68, 42); --mochizuki tekko +3 -- EVA
INSERT INTO `item_mods` VALUES (23544, 31, 46); --mochizuki tekko +3 -- MEVA
INSERT INTO `item_mods` VALUES (23544, 29, 3); --mochizuki tekko +3 -- MDEF
INSERT INTO `item_mods` VALUES (23544, 384, 500); --mochizuki tekko +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23544, 289, 9); --mochizuki tekko +3 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (23544, 522, 38); --mochizuki tekko +3 -- NIN_NUKE_BONUS_GEAR
INSERT INTO `item_mods` VALUES (27989, 9, 35); --sombra mittens -- DEX
INSERT INTO `item_mods` VALUES (27989, 10, 26); --sombra mittens -- VIT
INSERT INTO `item_mods` VALUES (27989, 11, 12); --sombra mittens -- AGI
INSERT INTO `item_mods` VALUES (21747, 25, 30); --freydis -- ACC
INSERT INTO `item_mods` VALUES (21747, 23, 30); --freydis -- ATT
INSERT INTO `item_mods` VALUES (21747, 27, 6); --freydis -- ENMITY
INSERT INTO `item_mods` VALUES (27989, 12, 16); --sombra mittens -- INT
INSERT INTO `item_mods` VALUES (27989, 13, 30); --sombra mittens -- MND
INSERT INTO `item_mods` VALUES (27989, 14, 17); --sombra mittens -- CHR
INSERT INTO `item_mods` VALUES (27989, 68, 27); --sombra mittens -- EVA
INSERT INTO `item_mods` VALUES (27989, 31, 26); --sombra mittens -- MEVA
INSERT INTO `item_mods` VALUES (27989, 30, 7); --sombra mittens -- MACC
INSERT INTO `item_mods` VALUES (23742, 160, -5000); --heidrek harness -- DMG
INSERT INTO `item_mods` VALUES (21747, 161, -400); --freydis -- DMGPHYS
INSERT INTO `item_mods` VALUES (21747, 518, 3); --freydis -- SHIELDBLOCKRATE
INSERT INTO `item_mods` VALUES (27989, 384, 400); --sombra mittens -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27989, 170, 3); --sombra mittens -- FASTCAST
INSERT INTO `item_mods` VALUES (27989, 29, 4); --sombra mittens -- MDEF
INSERT INTO `item_mods` VALUES (22042, 487, 50); --wizards rod -- MAGIC_BURST_BONUS_CAPPED
INSERT INTO `item_mods` VALUES (22042, 909, 15); --wizards rod -- QUICK_MAGIC
INSERT INTO `item_mods` VALUES (22301, 563, 10); --sroda tathlum -- MAGIC_CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (28368, 840, 25); --ygnass resolve +1 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (28368, 368, 30); --ygnass resolve +1 -- REGAIN
INSERT INTO `item_mods` VALUES (27059, 296, 10); --wicce gloves +1 -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (25899, 14, 23); --pinga pants -- CHR
INSERT INTO `item_mods` VALUES (25899, 68, 37); --pinga pants -- EVA
INSERT INTO `item_mods` VALUES (25899, 31, 137); --pinga pants -- MEVA
INSERT INTO `item_mods` VALUES (25899, 29, 7); --pinga pants -- MDEF
INSERT INTO `item_mods` VALUES (26221, 23, 50); --sroda ring -- ATT
INSERT INTO `item_mods` VALUES (26118, 288, 7); --sroda earring -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (20706, 950, 8); --vampirism -- ITEM_ADDEFFECT_ELEMENT
INSERT INTO `item_mods` VALUES (20706, 902, 10); --vampirism -- OCCULT_ACUMEN
INSERT INTO `item_mods` VALUES (21755, 8, 22); --hodadenon -- STR
INSERT INTO `item_mods` VALUES (21755, 23, 45); --hodadenon -- ATT
INSERT INTO `item_mods` VALUES (21755, 288, 6); --hodadenon -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (21755, 165, 5); --hodadenon -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25687, 165, 6); --adhemar jacket +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (27303, 165, 6); --adhemar kecks +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (27197, 840, 2); --lustratio subligar +1 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (27373, 840, 2); --lustratio leggings +1 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (26851, 173, 4); --rao togi +1 -- MARTIAL_ARTS
INSERT INTO `item_mods` VALUES (27027, 173, 4); --rao kote +1 -- MARTIAL_ARTS
INSERT INTO `item_mods` VALUES (27203, 173, 4); --rao haidate +1 -- MARTIAL_ARTS
INSERT INTO `item_mods` VALUES (27379, 173, 4); --rao sune-ate +1 -- MARTIAL_ARTS
INSERT INTO `item_mods` VALUES (25610, 408, 4); --emicho coronet +1 -- DA_DOUBLE_DMG_RATE
INSERT INTO `item_mods` VALUES (27470, 408, 4); --emicho gambieras +1 -- DA_DOUBLE_DMG_RATE
INSERT INTO `item_mods` VALUES (27114, 408, 4); --emicho gauntlets +1 -- DA_DOUBLE_DMG_RATE
INSERT INTO `item_mods` VALUES (27299, 408, 4); --emicho hose +1 -- DA_DOUBLE_DMG_RATE
INSERT INTO `item_mods` VALUES (27381, 126, 4); --apogee pumps +1 -- BP_DAMAGE
INSERT INTO `item_mods` VALUES (25683, 408, 4); --emicho haubert +1 -- DA_DOUBLE_DMG_RATE
INSERT INTO `item_mods` VALUES (27205, 126, 4); --apogee slacks +1 -- BP_DAMAGE
INSERT INTO `item_mods` VALUES (27029, 126, 4); --apogee mitts +1 -- BP_DAMAGE
INSERT INTO `item_mods` VALUES (26853, 126, 4); --apogee dalmatica +1 -- BP_DAMAGE
INSERT INTO `item_mods` VALUES (21722, 840, 120); --dolichenus -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23757, 387, 500); --sakpatas helm -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23785, 387, 500); --sakpatas leggings -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23764, 387, 800); --sakpatas plate -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23771, 387, 600); --sakpatas gauntlets -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23778, 387, 700); --sakpatas cuisses -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23741, 1, 143); --hervor haubert -- DEF
INSERT INTO `item_mods` VALUES (23741, 2, 77); --hervor haubert -- HP
INSERT INTO `item_mods` VALUES (23741, 8, 58); --hervor haubert -- STR
INSERT INTO `item_mods` VALUES (23741, 9, 56); --hervor haubert -- DEX
INSERT INTO `item_mods` VALUES (25908, 1, 137); --turms subligar +1 -- DEF
INSERT INTO `item_mods` VALUES (25908, 2, 122); --turms subligar +1 -- HP
INSERT INTO `item_mods` VALUES (25908, 8, 30); --turms subligar +1 -- STR
INSERT INTO `item_mods` VALUES (25908, 9, 5); --turms subligar +1 -- DEX
INSERT INTO `item_mods` VALUES (25908, 10, 16); --turms subligar +1 -- VIT
INSERT INTO `item_mods` VALUES (25908, 11, 37); --turms subligar +1 -- AGI
INSERT INTO `item_mods` VALUES (25908, 12, 30); --turms subligar +1 -- INT
INSERT INTO `item_mods` VALUES (25908, 13, 17); --turms subligar +1 -- MND
INSERT INTO `item_mods` VALUES (25908, 14, 17); --turms subligar +1 -- CHR
INSERT INTO `item_mods` VALUES (25908, 25, 51); --turms subligar +1 -- ACC
INSERT INTO `item_mods` VALUES (25908, 68, 84); --turms subligar +1 -- EVA
INSERT INTO `item_mods` VALUES (25908, 31, 147); --turms subligar +1 -- MEVA
INSERT INTO `item_mods` VALUES (25908, 29, 9); --turms subligar +1 -- MDEF
INSERT INTO `item_mods` VALUES (25908, 384, 900); --turms subligar +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25908, 370, 8); --turms subligar +1 -- REGEN
INSERT INTO `item_mods` VALUES (25908, 165, 8); --turms subligar +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25975, 1, 95); --turms leggings +1 -- DEF
INSERT INTO `item_mods` VALUES (25975, 2, 76); --turms leggings +1 -- HP
INSERT INTO `item_mods` VALUES (25975, 8, 14); --turms leggings +1 -- STR
INSERT INTO `item_mods` VALUES (25975, 9, 39); --turms leggings +1 -- DEX
INSERT INTO `item_mods` VALUES (25975, 10, 12); --turms leggings +1 -- VIT
INSERT INTO `item_mods` VALUES (25975, 11, 53); --turms leggings +1 -- AGI
INSERT INTO `item_mods` VALUES (25975, 13, 12); --turms leggings +1 -- MND
INSERT INTO `item_mods` VALUES (25975, 14, 38); --turms leggings +1 -- CHR
INSERT INTO `item_mods` VALUES (25975, 25, 48); --turms leggings +1 -- ACC
INSERT INTO `item_mods` VALUES (25975, 68, 119); --turms leggings +1 -- EVA
INSERT INTO `item_mods` VALUES (25975, 31, 147); --turms leggings +1 -- MEVA
INSERT INTO `item_mods` VALUES (25975, 29, 7); --turms leggings +1 -- MDEF
INSERT INTO `item_mods` VALUES (25975, 384, 300); --turms leggings +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25975, 370, 5); --turms leggings +1 -- REGEN
INSERT INTO `item_mods` VALUES (25995, 1, 113); --turms mittens +1 -- DEF
INSERT INTO `item_mods` VALUES (25995, 2, 74); --turms mittens +1 -- HP
INSERT INTO `item_mods` VALUES (25995, 8, 12); --turms mittens +1 -- STR
INSERT INTO `item_mods` VALUES (25995, 9, 51); --turms mittens +1 -- DEX
INSERT INTO `item_mods` VALUES (25995, 10, 32); --turms mittens +1 -- VIT
INSERT INTO `item_mods` VALUES (25995, 11, 5); --turms mittens +1 -- AGI
INSERT INTO `item_mods` VALUES (25995, 12, 15); --turms mittens +1 -- INT
INSERT INTO `item_mods` VALUES (25995, 13, 30); --turms mittens +1 -- MND
INSERT INTO `item_mods` VALUES (25995, 14, 23); --turms mittens +1 -- CHR
INSERT INTO `item_mods` VALUES (25995, 25, 49); --turms mittens +1 -- ACC
INSERT INTO `item_mods` VALUES (25995, 68, 80); --turms mittens +1 -- EVA
INSERT INTO `item_mods` VALUES (25995, 31, 101); --turms mittens +1 -- MEVA
INSERT INTO `item_mods` VALUES (25995, 29, 5); --turms mittens +1 -- MDEF
INSERT INTO `item_mods` VALUES (25995, 384, 400); --turms mittens +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25995, 370, 6); --turms mittens +1 -- REGEN
INSERT INTO `item_mods` VALUES (26544, 1, 155); --turms harness +1 -- DEF
INSERT INTO `item_mods` VALUES (26544, 2, 129); --turms harness +1 -- HP
INSERT INTO `item_mods` VALUES (26544, 8, 25); --turms harness +1 -- STR
INSERT INTO `item_mods` VALUES (26544, 9, 47); --turms harness +1 -- DEX
INSERT INTO `item_mods` VALUES (26544, 10, 24); --turms harness +1 -- VIT
INSERT INTO `item_mods` VALUES (26544, 11, 44); --turms harness +1 -- AGI
INSERT INTO `item_mods` VALUES (26544, 12, 23); --turms harness +1 -- INT
INSERT INTO `item_mods` VALUES (26544, 13, 23); --turms harness +1 -- MND
INSERT INTO `item_mods` VALUES (26544, 14, 29); --turms harness +1 -- CHR
INSERT INTO `item_mods` VALUES (26544, 25, 52); --turms harness +1 -- ACC
INSERT INTO `item_mods` VALUES (26544, 68, 98); --turms harness +1 -- EVA
INSERT INTO `item_mods` VALUES (26544, 31, 128); --turms harness +1 -- MEVA
INSERT INTO `item_mods` VALUES (26544, 29, 9); --turms harness +1 -- MDEF
INSERT INTO `item_mods` VALUES (26544, 384, 400); --turms harness +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26544, 73, 12); --turms harness +1 -- STORETP
INSERT INTO `item_mods` VALUES (26544, 370, 9); --turms harness +1 -- REGEN
INSERT INTO `item_mods` VALUES (23741, 10, 58); --hervor haubert -- VIT
INSERT INTO `item_mods` VALUES (23741, 11, 55); --hervor haubert -- AGI
INSERT INTO `item_mods` VALUES (23741, 12, 55); --hervor haubert -- INT
INSERT INTO `item_mods` VALUES (23741, 13, 55); --hervor haubert -- MND
INSERT INTO `item_mods` VALUES (23741, 14, 55); --hervor haubert -- CHR
INSERT INTO `item_mods` VALUES (23741, 25, 25); --hervor haubert -- ACC
INSERT INTO `item_mods` VALUES (23741, 30, 15); --hervor haubert -- MACC
INSERT INTO `item_mods` VALUES (23667, 27, -9); --hesychasts gaiters +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23667, 519, -14); --hesychasts gaiters +3 -- CURE_CAST_TIME
INSERT INTO `item_mods` VALUES (26525, 1, 139); --oshosi vest -- DEF
INSERT INTO `item_mods` VALUES (26525, 2, 91); --oshosi vest -- HP
INSERT INTO `item_mods` VALUES (26525, 8, 33); --oshosi vest -- STR
INSERT INTO `item_mods` VALUES (26525, 9, 30); --oshosi vest -- DEX
INSERT INTO `item_mods` VALUES (26525, 10, 26); --oshosi vest -- VIT
INSERT INTO `item_mods` VALUES (26525, 11, 44); --oshosi vest -- AGI
INSERT INTO `item_mods` VALUES (26525, 12, 21); --oshosi vest -- INT
INSERT INTO `item_mods` VALUES (26525, 13, 21); --oshosi vest -- MND
INSERT INTO `item_mods` VALUES (26525, 14, 26); --oshosi vest -- CHR
INSERT INTO `item_mods` VALUES (26525, 26, 37); --oshosi vest -- RACC
INSERT INTO `item_mods` VALUES (26525, 29, 8); --oshosi vest -- MDEF
INSERT INTO `item_mods` VALUES (26525, 30, 42); --oshosi vest -- MACC
INSERT INTO `item_mods` VALUES (26525, 31, 96); --oshosi vest -- MEVA
INSERT INTO `item_mods` VALUES (26525, 68, 55); --oshosi vest -- EVA
INSERT INTO `item_mods` VALUES (26525, 73, 7); --oshosi vest -- STORETP
INSERT INTO `item_mods` VALUES (26525, 365, 12); --oshosi vest -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (26525, 422, 7); --oshosi vest -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (26525, 999, 6); --oshosi vest -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (23467, 1, 144); --piety briault +3 -- DEF
INSERT INTO `item_mods` VALUES (23467, 2, 74); --piety briault +3 -- HP
INSERT INTO `item_mods` VALUES (23467, 4, 105); --piety briault +3 -- CONVMPTOHP
INSERT INTO `item_mods` VALUES (23467, 8, 31); --piety briault +3 -- STR
INSERT INTO `item_mods` VALUES (23467, 9, 31); --piety briault +3 -- DEX
INSERT INTO `item_mods` VALUES (23467, 10, 31); --piety briault +3 -- VIT
INSERT INTO `item_mods` VALUES (23467, 11, 31); --piety briault +3 -- AGI
INSERT INTO `item_mods` VALUES (23467, 12, 39); --piety briault +3 -- INT
INSERT INTO `item_mods` VALUES (23467, 13, 39); --piety briault +3 -- MND
INSERT INTO `item_mods` VALUES (23467, 14, 39); --piety briault +3 -- CHR
INSERT INTO `item_mods` VALUES (23467, 25, 40); --piety briault +3 -- ACC
INSERT INTO `item_mods` VALUES (23467, 23, 65); --piety briault +3 -- ATT
INSERT INTO `item_mods` VALUES (23467, 30, 40); --piety briault +3 -- MACC
INSERT INTO `item_mods` VALUES (23467, 68, 61); --piety briault +3 -- EVA
INSERT INTO `item_mods` VALUES (23467, 31, 100); --piety briault +3 -- MEVA
INSERT INTO `item_mods` VALUES (23467, 29, 8); --piety briault +3 -- MDEF
INSERT INTO `item_mods` VALUES (23467, 384, 300); --piety briault +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23467, 27, -8); --piety briault +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23467, 838, 52); --piety briault +3 -- REGEN_MULTIPLIER
INSERT INTO `item_mods` VALUES (23467, 369, 3); --piety briault +3 -- REFRESH
INSERT INTO `item_mods` VALUES (23534, 1, 105); --piety mitts +3 -- DEF
INSERT INTO `item_mods` VALUES (23534, 2, 72); --piety mitts +3 -- HP
INSERT INTO `item_mods` VALUES (23534, 5, 64); --piety mitts +3 -- MP
INSERT INTO `item_mods` VALUES (23534, 8, 16); --piety mitts +3 -- STR
INSERT INTO `item_mods` VALUES (23534, 9, 38); --piety mitts +3 -- DEX
INSERT INTO `item_mods` VALUES (23534, 10, 35); --piety mitts +3 -- VIT
INSERT INTO `item_mods` VALUES (23534, 11, 15); --piety mitts +3 -- AGI
INSERT INTO `item_mods` VALUES (23534, 12, 29); --piety mitts +3 -- INT
INSERT INTO `item_mods` VALUES (23534, 13, 43); --piety mitts +3 -- MND
INSERT INTO `item_mods` VALUES (23534, 14, 29); --piety mitts +3 -- CHR
INSERT INTO `item_mods` VALUES (23534, 25, 38); --piety mitts +3 -- ACC
INSERT INTO `item_mods` VALUES (23534, 23, 63); --piety mitts +3 -- ATT
INSERT INTO `item_mods` VALUES (23534, 30, 38); --piety mitts +3 -- MACC
INSERT INTO `item_mods` VALUES (23534, 68, 42); --piety mitts +3 -- EVA
INSERT INTO `item_mods` VALUES (23534, 31, 57); --piety mitts +3 -- MEVA
INSERT INTO `item_mods` VALUES (23534, 29, 5); --piety mitts +3 -- MDEF
INSERT INTO `item_mods` VALUES (23534, 111, 26); --piety mitts +3 -- DIVINE
INSERT INTO `item_mods` VALUES (23534, 114, 26); --piety mitts +3 -- ENFEEBLE
INSERT INTO `item_mods` VALUES (23534, 384, 300); --piety mitts +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23534, 27, -9); --piety mitts +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23412, 1, 113); --glyphic horn +3 -- DEF
INSERT INTO `item_mods` VALUES (23412, 2, 51); --glyphic horn +3 -- HP
INSERT INTO `item_mods` VALUES (23412, 5, 115); --glyphic horn +3 -- MP
INSERT INTO `item_mods` VALUES (23412, 8, 22); --glyphic horn +3 -- STR
INSERT INTO `item_mods` VALUES (23412, 9, 24); --glyphic horn +3 -- DEX
INSERT INTO `item_mods` VALUES (23412, 10, 24); --glyphic horn +3 -- VIT
INSERT INTO `item_mods` VALUES (23412, 11, 24); --glyphic horn +3 -- AGI
INSERT INTO `item_mods` VALUES (23412, 12, 29); --glyphic horn +3 -- INT
INSERT INTO `item_mods` VALUES (23412, 13, 29); --glyphic horn +3 -- MND
INSERT INTO `item_mods` VALUES (23412, 14, 29); --glyphic horn +3 -- CHR
INSERT INTO `item_mods` VALUES (23412, 25, 37); --glyphic horn +3 -- ACC
INSERT INTO `item_mods` VALUES (23412, 23, 62); --glyphic horn +3 -- ATT
INSERT INTO `item_mods` VALUES (23412, 30, 37); --glyphic horn +3 -- MACC
INSERT INTO `item_mods` VALUES (23412, 68, 56); --glyphic horn +3 -- EVA
INSERT INTO `item_mods` VALUES (23412, 31, 95); --glyphic horn +3 -- MEVA
INSERT INTO `item_mods` VALUES (23412, 29, 7); --glyphic horn +3 -- MDEF
INSERT INTO `item_mods` VALUES (23412, 384, 600); --glyphic horn +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23412, 346, 5); --glyphic horn +3 -- PERPETUATION_REDUCTION
INSERT INTO `item_mods` VALUES (23412, 357, 10); --glyphic horn +3 -- BP_DELAY
INSERT INTO `item_mods` VALUES (23479, 1, 143); --glyphic doublet +3 -- DEF
INSERT INTO `item_mods` VALUES (23479, 2, 135); --glyphic doublet +3 -- HP
INSERT INTO `item_mods` VALUES (23479, 8, 31); --glyphic doublet +3 -- STR
INSERT INTO `item_mods` VALUES (23479, 9, 30); --glyphic doublet +3 -- DEX
INSERT INTO `item_mods` VALUES (23479, 10, 31); --glyphic doublet +3 -- VIT
INSERT INTO `item_mods` VALUES (23479, 11, 31); --glyphic doublet +3 -- AGI
INSERT INTO `item_mods` VALUES (23479, 12, 39); --glyphic doublet +3 -- INT
INSERT INTO `item_mods` VALUES (23479, 13, 39); --glyphic doublet +3 -- MND
INSERT INTO `item_mods` VALUES (23479, 14, 39); --glyphic doublet +3 -- CHR
INSERT INTO `item_mods` VALUES (23479, 25, 40); --glyphic doublet +3 -- ACC
INSERT INTO `item_mods` VALUES (23479, 23, 65); --glyphic doublet +3 -- ATT
INSERT INTO `item_mods` VALUES (23479, 30, 40); --glyphic doublet +3 -- MACC
INSERT INTO `item_mods` VALUES (23479, 68, 61); --glyphic doublet +3 -- EVA
INSERT INTO `item_mods` VALUES (23479, 31, 100); --glyphic doublet +3 -- MEVA
INSERT INTO `item_mods` VALUES (23479, 29, 8); --glyphic doublet +3 -- MDEF
INSERT INTO `item_mods` VALUES (23479, 384, 300); --glyphic doublet +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23479, 346, 6); --glyphic doublet +3 -- PERPETUATION_REDUCTION
INSERT INTO `item_mods` VALUES (23479, 541, 4); --glyphic doublet +3 -- BP_DELAY_II
INSERT INTO `item_mods` VALUES (23546, 1, 101); --glyphic bracers +3 -- DEF
INSERT INTO `item_mods` VALUES (23546, 2, 38); --glyphic bracers +3 -- HP
INSERT INTO `item_mods` VALUES (23546, 5, 61); --glyphic bracers +3 -- MP
INSERT INTO `item_mods` VALUES (23546, 8, 16); --glyphic bracers +3 -- STR
INSERT INTO `item_mods` VALUES (23546, 9, 38); --glyphic bracers +3 -- DEX
INSERT INTO `item_mods` VALUES (23546, 10, 34); --glyphic bracers +3 -- VIT
INSERT INTO `item_mods` VALUES (23546, 11, 15); --glyphic bracers +3 -- AGI
INSERT INTO `item_mods` VALUES (23546, 12, 29); --glyphic bracers +3 -- INT
INSERT INTO `item_mods` VALUES (23546, 13, 43); --glyphic bracers +3 -- MND
INSERT INTO `item_mods` VALUES (23546, 14, 29); --glyphic bracers +3 -- CHR
INSERT INTO `item_mods` VALUES (23546, 25, 38); --glyphic bracers +3 -- ACC
INSERT INTO `item_mods` VALUES (23546, 23, 63); --glyphic bracers +3 -- ATT
INSERT INTO `item_mods` VALUES (23546, 30, 38); --glyphic bracers +3 -- MACC
INSERT INTO `item_mods` VALUES (23546, 68, 42); --glyphic bracers +3 -- EVA
INSERT INTO `item_mods` VALUES (23546, 31, 57); --glyphic bracers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23546, 29, 5); --glyphic bracers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23546, 117, 23); --glyphic bracers +3 -- SUMMONING
INSERT INTO `item_mods` VALUES (23546, 384, 300); --glyphic bracers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23546, 357, 8); --glyphic bracers +3 -- BP_DELAY
INSERT INTO `item_mods` VALUES (23613, 1, 123); --glyphic spats +3 -- DEF
INSERT INTO `item_mods` VALUES (23613, 2, 58); --glyphic spats +3 -- HP
INSERT INTO `item_mods` VALUES (23613, 5, 105); --glyphic spats +3 -- MP
INSERT INTO `item_mods` VALUES (23613, 8, 35); --glyphic spats +3 -- STR
INSERT INTO `item_mods` VALUES (23613, 10, 21); --glyphic spats +3 -- VIT
INSERT INTO `item_mods` VALUES (23613, 11, 27); --glyphic spats +3 -- AGI
INSERT INTO `item_mods` VALUES (23613, 12, 44); --glyphic spats +3 -- INT
INSERT INTO `item_mods` VALUES (23613, 13, 34); --glyphic spats +3 -- MND
INSERT INTO `item_mods` VALUES (23613, 14, 29); --glyphic spats +3 -- CHR
INSERT INTO `item_mods` VALUES (23613, 25, 39); --glyphic spats +3 -- ACC
INSERT INTO `item_mods` VALUES (23613, 23, 64); --glyphic spats +3 -- ATT
INSERT INTO `item_mods` VALUES (23613, 30, 39); --glyphic spats +3 -- MACC
INSERT INTO `item_mods` VALUES (23613, 68, 47); --glyphic spats +3 -- EVA
INSERT INTO `item_mods` VALUES (23613, 31, 127); --glyphic spats +3 -- MEVA
INSERT INTO `item_mods` VALUES (23613, 29, 8); --glyphic spats +3 -- MDEF
INSERT INTO `item_mods` VALUES (23613, 384, 500); --glyphic spats +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23613, 357, 8); --glyphic spats +3 -- BP_DELAY
INSERT INTO `item_mods` VALUES (23601, 1, 127); --piety pantaloons +3 -- DEF
INSERT INTO `item_mods` VALUES (23601, 2, 93); --piety pantaloons +3 -- HP
INSERT INTO `item_mods` VALUES (23601, 5, 79); --piety pantaloons +3 -- MP
INSERT INTO `item_mods` VALUES (26526, 1, 149); --oshosi vest +1 -- DEF
INSERT INTO `item_mods` VALUES (26526, 2, 111); --oshosi vest +1 -- HP
INSERT INTO `item_mods` VALUES (26526, 8, 38); --oshosi vest +1 -- STR
INSERT INTO `item_mods` VALUES (26526, 9, 30); --oshosi vest +1 -- DEX
INSERT INTO `item_mods` VALUES (26526, 10, 26); --oshosi vest +1 -- VIT
INSERT INTO `item_mods` VALUES (26526, 11, 49); --oshosi vest +1 -- AGI
INSERT INTO `item_mods` VALUES (26526, 12, 21); --oshosi vest +1 -- INT
INSERT INTO `item_mods` VALUES (26526, 13, 21); --oshosi vest +1 -- MND
INSERT INTO `item_mods` VALUES (26526, 14, 26); --oshosi vest +1 -- CHR
INSERT INTO `item_mods` VALUES (26526, 26, 47); --oshosi vest +1 -- RACC
INSERT INTO `item_mods` VALUES (26526, 29, 9); --oshosi vest +1 -- MDEF
INSERT INTO `item_mods` VALUES (26526, 30, 52); --oshosi vest +1 -- MACC
INSERT INTO `item_mods` VALUES (26526, 31, 106); --oshosi vest +1 -- MEVA
INSERT INTO `item_mods` VALUES (26526, 68, 65); --oshosi vest +1 -- EVA
INSERT INTO `item_mods` VALUES (26526, 73, 10); --oshosi vest +1 -- STORETP
INSERT INTO `item_mods` VALUES (26526, 365, 14); --oshosi vest +1 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (26526, 422, 8); --oshosi vest +1 -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (26526, 999, 7); --oshosi vest +1 -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (23601, 8, 35); --piety pantaloons +3 -- STR
INSERT INTO `item_mods` VALUES (23601, 10, 22); --piety pantaloons +3 -- VIT
INSERT INTO `item_mods` VALUES (23601, 11, 27); --piety pantaloons +3 -- AGI
INSERT INTO `item_mods` VALUES (23601, 12, 44); --piety pantaloons +3 -- INT
INSERT INTO `item_mods` VALUES (23601, 13, 34); --piety pantaloons +3 -- MND
INSERT INTO `item_mods` VALUES (23601, 14, 29); --piety pantaloons +3 -- CHR
INSERT INTO `item_mods` VALUES (23601, 25, 39); --piety pantaloons +3 -- ACC
INSERT INTO `item_mods` VALUES (23601, 23, 64); --piety pantaloons +3 -- ATT
INSERT INTO `item_mods` VALUES (23601, 30, 39); --piety pantaloons +3 -- MACC
INSERT INTO `item_mods` VALUES (23601, 68, 47); --piety pantaloons +3 -- EVA
INSERT INTO `item_mods` VALUES (23601, 31, 127); --piety pantaloons +3 -- MEVA
INSERT INTO `item_mods` VALUES (23601, 29, 8); --piety pantaloons +3 -- MDEF
INSERT INTO `item_mods` VALUES (23601, 112, 26); --piety pantaloons +3 -- HEALING
INSERT INTO `item_mods` VALUES (23601, 113, 26); --piety pantaloons +3 -- ENHANCE
INSERT INTO `item_mods` VALUES (23601, 384, 500); --piety pantaloons +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23601, 27, -8); --piety pantaloons +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23601, 567, 36); --piety pantaloons +3 -- BARSPELL_AMOUNT
INSERT INTO `item_mods` VALUES (23741, 68, 58); --hervor haubert -- EVA
INSERT INTO `item_mods` VALUES (23741, 31, 86); --hervor haubert -- MEVA
INSERT INTO `item_mods` VALUES (23741, 28, 6); --hervor haubert -- MATT
INSERT INTO `item_mods` VALUES (23741, 384, 400); --hervor haubert -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (21585, 950, 8); --crepuscular knife -- ITEM_ADDEFFECT_ELEMENT
INSERT INTO `item_mods` VALUES (25987, 170, 7); --pinga mittens +1 -- FASTCAST
INSERT INTO `item_mods` VALUES (25987, 374, 7); --pinga mittens +1 -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (21585, 902, 10); --crepuscular knife -- OCCULT_ACUMEN
INSERT INTO `item_mods` VALUES (21585, 10, 15); --crepuscular knife -- VIT
INSERT INTO `item_mods` VALUES (25987, 68, 37); --pinga mittens +1 -- EVA
INSERT INTO `item_mods` VALUES (25987, 31, 91); --pinga mittens +1 -- MEVA
INSERT INTO `item_mods` VALUES (25987, 29, 5); --pinga mittens +1 -- MDEF
INSERT INTO `item_mods` VALUES (25987, 27, -6); --pinga mittens +1 -- ENMITY
INSERT INTO `item_mods` VALUES (25976, 1, 97); --oshosi gloves -- DEF
INSERT INTO `item_mods` VALUES (25976, 2, 29); --oshosi gloves -- HP
INSERT INTO `item_mods` VALUES (25976, 8, 20); --oshosi gloves -- STR
INSERT INTO `item_mods` VALUES (25976, 9, 35); --oshosi gloves -- DEX
INSERT INTO `item_mods` VALUES (25976, 10, 34); --oshosi gloves -- VIT
INSERT INTO `item_mods` VALUES (25976, 12, 11); --oshosi gloves -- INT
INSERT INTO `item_mods` VALUES (25976, 13, 29); --oshosi gloves -- MND
INSERT INTO `item_mods` VALUES (25976, 26, 34); --oshosi gloves -- RACC
INSERT INTO `item_mods` VALUES (25976, 29, 4); --oshosi gloves -- MDEF
INSERT INTO `item_mods` VALUES (25976, 30, 39); --oshosi gloves -- MACC
INSERT INTO `item_mods` VALUES (25976, 31, 69); --oshosi gloves -- MEVA
INSERT INTO `item_mods` VALUES (25976, 68, 37); --oshosi gloves -- EVA
INSERT INTO `item_mods` VALUES (25976, 289, 10); --oshosi gloves -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25976, 365, 8); --oshosi gloves -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (25976, 422, 4); --oshosi gloves -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25976, 999, 3); --oshosi gloves -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (21664, 8, 25); --zantetsuken x -- STR
INSERT INTO `item_mods` VALUES (25987, 10, 30); --pinga mittens +1 -- VIT
INSERT INTO `item_mods` VALUES (25987, 12, 29); --pinga mittens +1 -- INT
INSERT INTO `item_mods` VALUES (25987, 13, 49); --pinga mittens +1 -- MND
INSERT INTO `item_mods` VALUES (25987, 14, 23); --pinga mittens +1 -- CHR
INSERT INTO `item_mods` VALUES (21664, 25, 42); --zantetsuken x -- ACC
INSERT INTO `item_mods` VALUES (21664, 23, 48); --zantetsuken x -- ATT
INSERT INTO `item_mods` VALUES (21664, 384, 700); --zantetsuken x -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25987, 1, 103); --pinga mittens +1 -- DEF
INSERT INTO `item_mods` VALUES (25987, 2, 53); --pinga mittens +1 -- HP
INSERT INTO `item_mods` VALUES (25987, 5, 88); --pinga mittens +1 -- MP
INSERT INTO `item_mods` VALUES (25987, 8, 7); --pinga mittens +1 -- STR
INSERT INTO `item_mods` VALUES (25987, 9, 29); --pinga mittens +1 -- DEX
INSERT INTO `item_mods` VALUES (26535, 1, 135); --pinga tunic -- DEF
INSERT INTO `item_mods` VALUES (26535, 2, 81); --pinga tunic -- HP
INSERT INTO `item_mods` VALUES (26535, 5, 88); --pinga tunic -- MP
INSERT INTO `item_mods` VALUES (26535, 8, 23); --pinga tunic -- STR
INSERT INTO `item_mods` VALUES (26535, 9, 24); --pinga tunic -- DEX
INSERT INTO `item_mods` VALUES (21664, 506, 150); --zantetsuken x -- EXTRA_DMG_CHANCE
INSERT INTO `item_mods` VALUES (26535, 10, 26); --pinga tunic -- VIT
INSERT INTO `item_mods` VALUES (26535, 11, 26); --pinga tunic -- AGI
INSERT INTO `item_mods` VALUES (26535, 12, 34); --pinga tunic -- INT
INSERT INTO `item_mods` VALUES (26535, 13, 35); --pinga tunic -- MND
INSERT INTO `item_mods` VALUES (26535, 14, 34); --pinga tunic -- CHR
INSERT INTO `item_mods` VALUES (21664, 507, 300); --zantetsuken x -- OCC_DO_EXTRA_DMG
INSERT INTO `item_mods` VALUES (25986, 31, 91); --pinga mittens -- MEVA
INSERT INTO `item_mods` VALUES (25986, 29, 4); --pinga mittens -- MDEF
INSERT INTO `item_mods` VALUES (25986, 27, -5); --pinga mittens -- ENMITY
INSERT INTO `item_mods` VALUES (25986, 170, 5); --pinga mittens -- FASTCAST
INSERT INTO `item_mods` VALUES (23064, 840, 5); --hesychasts crown +2 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23466, 1, 142); --hesychasts cyclas +3 -- DEF
INSERT INTO `item_mods` VALUES (23466, 2, 122); --hesychasts cyclas +3 -- HP
INSERT INTO `item_mods` VALUES (23466, 8, 34); --hesychasts cyclas +3 -- STR
INSERT INTO `item_mods` VALUES (23466, 9, 35); --hesychasts cyclas +3 -- DEX
INSERT INTO `item_mods` VALUES (23466, 10, 35); --hesychasts cyclas +3 -- VIT
INSERT INTO `item_mods` VALUES (23466, 11, 39); --hesychasts cyclas +3 -- AGI
INSERT INTO `item_mods` VALUES (23466, 12, 34); --hesychasts cyclas +3 -- INT
INSERT INTO `item_mods` VALUES (23466, 13, 34); --hesychasts cyclas +3 -- MND
INSERT INTO `item_mods` VALUES (23466, 14, 34); --hesychasts cyclas +3 -- CHR
INSERT INTO `item_mods` VALUES (23466, 25, 40); --hesychasts cyclas +3 -- ACC
INSERT INTO `item_mods` VALUES (26875, 1, 145); --ravenous breastplate -- DEF
INSERT INTO `item_mods` VALUES (26875, 2, 63); --ravenous breastplate -- HP
INSERT INTO `item_mods` VALUES (26875, 5, 35); --ravenous breastplate -- MP
INSERT INTO `item_mods` VALUES (26875, 8, 37); --ravenous breastplate -- STR
INSERT INTO `item_mods` VALUES (26875, 9, 24); --ravenous breastplate -- DEX
INSERT INTO `item_mods` VALUES (26875, 10, 35); --ravenous breastplate -- VIT
INSERT INTO `item_mods` VALUES (26875, 11, 24); --ravenous breastplate -- AGI
INSERT INTO `item_mods` VALUES (26875, 12, 24); --ravenous breastplate -- INT
INSERT INTO `item_mods` VALUES (26875, 13, 24); --ravenous breastplate -- MND
INSERT INTO `item_mods` VALUES (26875, 14, 24); --ravenous breastplate -- CHR
INSERT INTO `item_mods` VALUES (26875, 25, 35); --ravenous breastplate -- ACC
INSERT INTO `item_mods` VALUES (26875, 68, 41); --ravenous breastplate -- EVA
INSERT INTO `item_mods` VALUES (26875, 31, 48); --ravenous breastplate -- MEVA
INSERT INTO `item_mods` VALUES (26875, 29, 4); --ravenous breastplate -- MDEF
INSERT INTO `item_mods` VALUES (26875, 384, 300); --ravenous breastplate -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26875, 288, 4); --ravenous breastplate -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (26876, 1, 146); --ravenous breastplate +1 -- DEF
INSERT INTO `item_mods` VALUES (26876, 2, 63); --ravenous breastplate +1 -- HP
INSERT INTO `item_mods` VALUES (26876, 5, 35); --ravenous breastplate +1 -- MP
INSERT INTO `item_mods` VALUES (26876, 8, 38); --ravenous breastplate +1 -- STR
INSERT INTO `item_mods` VALUES (26876, 9, 25); --ravenous breastplate +1 -- DEX
INSERT INTO `item_mods` VALUES (26876, 10, 36); --ravenous breastplate +1 -- VIT
INSERT INTO `item_mods` VALUES (26876, 11, 25); --ravenous breastplate +1 -- AGI
INSERT INTO `item_mods` VALUES (26876, 12, 25); --ravenous breastplate +1 -- INT
INSERT INTO `item_mods` VALUES (26876, 13, 25); --ravenous breastplate +1 -- MND
INSERT INTO `item_mods` VALUES (26876, 14, 25); --ravenous breastplate +1 -- CHR
INSERT INTO `item_mods` VALUES (26876, 25, 36); --ravenous breastplate +1 -- ACC
INSERT INTO `item_mods` VALUES (26876, 68, 41); --ravenous breastplate +1 -- EVA
INSERT INTO `item_mods` VALUES (26876, 31, 48); --ravenous breastplate +1 -- MEVA
INSERT INTO `item_mods` VALUES (26876, 29, 4); --ravenous breastplate +1 -- MDEF
INSERT INTO `item_mods` VALUES (26876, 384, 300); --ravenous breastplate +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23466, 23, 65); --hesychasts cyclas +3 -- ATT
INSERT INTO `item_mods` VALUES (23466, 30, 40); --hesychasts cyclas +3 -- MACC
INSERT INTO `item_mods` VALUES (23466, 68, 72); --hesychasts cyclas +3 -- EVA
INSERT INTO `item_mods` VALUES (23466, 31, 73); --hesychasts cyclas +3 -- MEVA
INSERT INTO `item_mods` VALUES (23466, 29, 6); --hesychasts cyclas +3 -- MDEF
INSERT INTO `item_mods` VALUES (23466, 384, 400); --hesychasts cyclas +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23466, 291, 5); --hesychasts cyclas +3 -- COUNTER
INSERT INTO `item_mods` VALUES (23466, 370, 5); --hesychasts cyclas +3 -- REGEN
INSERT INTO `item_mods` VALUES (23466, 161, -500); --hesychasts cyclas +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23413, 1, 121); --luhlaza keffiyeh +3 -- DEF
INSERT INTO `item_mods` VALUES (23413, 2, 91); --luhlaza keffiyeh +3 -- HP
INSERT INTO `item_mods` VALUES (23413, 5, 78); --luhlaza keffiyeh +3 -- MP
INSERT INTO `item_mods` VALUES (23413, 8, 30); --luhlaza keffiyeh +3 -- STR
INSERT INTO `item_mods` VALUES (23413, 9, 29); --luhlaza keffiyeh +3 -- DEX
INSERT INTO `item_mods` VALUES (23413, 10, 30); --luhlaza keffiyeh +3 -- VIT
INSERT INTO `item_mods` VALUES (23413, 11, 29); --luhlaza keffiyeh +3 -- AGI
INSERT INTO `item_mods` VALUES (23413, 12, 30); --luhlaza keffiyeh +3 -- INT
INSERT INTO `item_mods` VALUES (23413, 13, 30); --luhlaza keffiyeh +3 -- MND
INSERT INTO `item_mods` VALUES (23413, 14, 26); --luhlaza keffiyeh +3 -- CHR
INSERT INTO `item_mods` VALUES (23413, 25, 37); --luhlaza keffiyeh +3 -- ACC
INSERT INTO `item_mods` VALUES (23413, 23, 62); --luhlaza keffiyeh +3 -- ATT
INSERT INTO `item_mods` VALUES (23413, 30, 37); --luhlaza keffiyeh +3 -- MACC
INSERT INTO `item_mods` VALUES (23413, 68, 64); --luhlaza keffiyeh +3 -- EVA
INSERT INTO `item_mods` VALUES (23413, 31, 73); --luhlaza keffiyeh +3 -- MEVA
INSERT INTO `item_mods` VALUES (23413, 29, 4); --luhlaza keffiyeh +3 -- MDEF
INSERT INTO `item_mods` VALUES (23413, 122, 17); --luhlaza keffiyeh +3 -- BLUE
INSERT INTO `item_mods` VALUES (23413, 384, 800); --luhlaza keffiyeh +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23480, 1, 155); --luhlaza jubbah +3 -- DEF
INSERT INTO `item_mods` VALUES (23480, 2, 79); --luhlaza jubbah +3 -- HP
INSERT INTO `item_mods` VALUES (23480, 5, 64); --luhlaza jubbah +3 -- MP
INSERT INTO `item_mods` VALUES (23480, 8, 37); --luhlaza jubbah +3 -- STR
INSERT INTO `item_mods` VALUES (25977, 1, 107); --oshosi gloves +1 -- DEF
INSERT INTO `item_mods` VALUES (25977, 2, 49); --oshosi gloves +1 -- HP
INSERT INTO `item_mods` VALUES (25977, 8, 25); --oshosi gloves +1 -- STR
INSERT INTO `item_mods` VALUES (25977, 9, 35); --oshosi gloves +1 -- DEX
INSERT INTO `item_mods` VALUES (25977, 10, 34); --oshosi gloves +1 -- VIT
INSERT INTO `item_mods` VALUES (25977, 12, 11); --oshosi gloves +1 -- INT
INSERT INTO `item_mods` VALUES (25977, 13, 29); --oshosi gloves +1 -- MND
INSERT INTO `item_mods` VALUES (25977, 14, 20); --oshosi gloves +1 -- CHR
INSERT INTO `item_mods` VALUES (25977, 26, 44); --oshosi gloves +1 -- RACC
INSERT INTO `item_mods` VALUES (25977, 29, 5); --oshosi gloves +1 -- MDEF
INSERT INTO `item_mods` VALUES (25977, 30, 49); --oshosi gloves +1 -- MACC
INSERT INTO `item_mods` VALUES (25977, 31, 79); --oshosi gloves +1 -- MEVA
INSERT INTO `item_mods` VALUES (25977, 68, 47); --oshosi gloves +1 -- EVA
INSERT INTO `item_mods` VALUES (25977, 289, 15); --oshosi gloves +1 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25977, 365, 10); --oshosi gloves +1 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (25977, 422, 5); --oshosi gloves +1 -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25977, 999, 4); --oshosi gloves +1 -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (23480, 9, 42); --luhlaza jubbah +3 -- DEX
INSERT INTO `item_mods` VALUES (23480, 10, 34); --luhlaza jubbah +3 -- VIT
INSERT INTO `item_mods` VALUES (23480, 11, 38); --luhlaza jubbah +3 -- AGI
INSERT INTO `item_mods` VALUES (23480, 12, 33); --luhlaza jubbah +3 -- INT
INSERT INTO `item_mods` VALUES (23480, 13, 33); --luhlaza jubbah +3 -- MND
INSERT INTO `item_mods` VALUES (23480, 14, 33); --luhlaza jubbah +3 -- CHR
INSERT INTO `item_mods` VALUES (23480, 25, 50); --luhlaza jubbah +3 -- ACC
INSERT INTO `item_mods` VALUES (23480, 23, 86); --luhlaza jubbah +3 -- ATT
INSERT INTO `item_mods` VALUES (23480, 30, 40); --luhlaza jubbah +3 -- MACC
INSERT INTO `item_mods` VALUES (23480, 68, 69); --luhlaza jubbah +3 -- EVA
INSERT INTO `item_mods` VALUES (23480, 31, 84); --luhlaza jubbah +3 -- MEVA
INSERT INTO `item_mods` VALUES (23480, 29, 8); --luhlaza jubbah +3 -- MDEF
INSERT INTO `item_mods` VALUES (23480, 384, 400); --luhlaza jubbah +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23480, 170, 9); --luhlaza jubbah +3 -- FASTCAST
INSERT INTO `item_mods` VALUES (23480, 369, 3); --luhlaza jubbah +3 -- REFRESH
INSERT INTO `item_mods` VALUES (23547, 1, 109); --luhlaza bazubands +3 -- DEF
INSERT INTO `item_mods` VALUES (23547, 2, 70); --luhlaza bazubands +3 -- HP
INSERT INTO `item_mods` VALUES (23547, 5, 45); --luhlaza bazubands +3 -- MP
INSERT INTO `item_mods` VALUES (23547, 8, 21); --luhlaza bazubands +3 -- STR
INSERT INTO `item_mods` VALUES (23547, 9, 49); --luhlaza bazubands +3 -- DEX
INSERT INTO `item_mods` VALUES (23547, 10, 42); --luhlaza bazubands +3 -- VIT
INSERT INTO `item_mods` VALUES (23547, 11, 15); --luhlaza bazubands +3 -- AGI
INSERT INTO `item_mods` VALUES (23547, 12, 22); --luhlaza bazubands +3 -- INT
INSERT INTO `item_mods` VALUES (23547, 13, 44); --luhlaza bazubands +3 -- MND
INSERT INTO `item_mods` VALUES (23547, 14, 27); --luhlaza bazubands +3 -- CHR
INSERT INTO `item_mods` VALUES (23547, 25, 44); --luhlaza bazubands +3 -- ACC
INSERT INTO `item_mods` VALUES (23547, 23, 63); --luhlaza bazubands +3 -- ATT
INSERT INTO `item_mods` VALUES (23547, 30, 38); --luhlaza bazubands +3 -- MACC
INSERT INTO `item_mods` VALUES (23547, 68, 57); --luhlaza bazubands +3 -- EVA
INSERT INTO `item_mods` VALUES (23547, 31, 57); --luhlaza bazubands +3 -- MEVA
INSERT INTO `item_mods` VALUES (23547, 29, 4); --luhlaza bazubands +3 -- MDEF
INSERT INTO `item_mods` VALUES (23547, 384, 400); --luhlaza bazubands +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23547, 289, 11); --luhlaza bazubands +3 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (23614, 1, 133); --luhlaza shalwar +3 -- DEF
INSERT INTO `item_mods` VALUES (23614, 2, 87); --luhlaza shalwar +3 -- HP
INSERT INTO `item_mods` VALUES (23614, 5, 40); --luhlaza shalwar +3 -- MP
INSERT INTO `item_mods` VALUES (23614, 8, 41); --luhlaza shalwar +3 -- STR
INSERT INTO `item_mods` VALUES (23614, 10, 26); --luhlaza shalwar +3 -- VIT
INSERT INTO `item_mods` VALUES (23614, 11, 32); --luhlaza shalwar +3 -- AGI
INSERT INTO `item_mods` VALUES (23614, 12, 40); --luhlaza shalwar +3 -- INT
INSERT INTO `item_mods` VALUES (23614, 13, 27); --luhlaza shalwar +3 -- MND
INSERT INTO `item_mods` VALUES (23614, 14, 21); --luhlaza shalwar +3 -- CHR
INSERT INTO `item_mods` VALUES (23614, 25, 45); --luhlaza shalwar +3 -- ACC
INSERT INTO `item_mods` VALUES (23614, 30, 45); --luhlaza shalwar +3 -- MACC
INSERT INTO `item_mods` VALUES (23614, 68, 58); --luhlaza shalwar +3 -- EVA
INSERT INTO `item_mods` VALUES (23614, 31, 89); --luhlaza shalwar +3 -- MEVA
INSERT INTO `item_mods` VALUES (23614, 28, 57); --luhlaza shalwar +3 -- MATT
INSERT INTO `item_mods` VALUES (23614, 29, 7); --luhlaza shalwar +3 -- MDEF
INSERT INTO `item_mods` VALUES (23614, 841, 10); --luhlaza shalwar +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (23614, 384, 600); --luhlaza shalwar +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23600, 1, 124); --hesychasts hose +3 -- DEF
INSERT INTO `item_mods` VALUES (23600, 2, 116); --hesychasts hose +3 -- HP
INSERT INTO `item_mods` VALUES (23600, 8, 42); --hesychasts hose +3 -- STR
INSERT INTO `item_mods` VALUES (23600, 9, 21); --hesychasts hose +3 -- DEX
INSERT INTO `item_mods` VALUES (23600, 10, 24); --hesychasts hose +3 -- VIT
INSERT INTO `item_mods` VALUES (23600, 11, 31); --hesychasts hose +3 -- AGI
INSERT INTO `item_mods` VALUES (23600, 12, 42); --hesychasts hose +3 -- INT
INSERT INTO `item_mods` VALUES (23600, 13, 27); --hesychasts hose +3 -- MND
INSERT INTO `item_mods` VALUES (23408, 1, 120); --arcadian beret +3 -- DEF
INSERT INTO `item_mods` VALUES (23408, 2, 56); --arcadian beret +3 -- HP
INSERT INTO `item_mods` VALUES (23408, 8, 31); --arcadian beret +3 -- STR
INSERT INTO `item_mods` VALUES (23408, 9, 29); --arcadian beret +3 -- DEX
INSERT INTO `item_mods` VALUES (23408, 10, 22); --arcadian beret +3 -- VIT
INSERT INTO `item_mods` VALUES (23408, 11, 37); --arcadian beret +3 -- AGI
INSERT INTO `item_mods` VALUES (23408, 12, 25); --arcadian beret +3 -- INT
INSERT INTO `item_mods` VALUES (23408, 13, 31); --arcadian beret +3 -- MND
INSERT INTO `item_mods` VALUES (23408, 14, 26); --arcadian beret +3 -- CHR
INSERT INTO `item_mods` VALUES (23408, 26, 37); --arcadian beret +3 -- RACC
INSERT INTO `item_mods` VALUES (23408, 24, 62); --arcadian beret +3 -- RATT
INSERT INTO `item_mods` VALUES (23408, 30, 37); --arcadian beret +3 -- MACC
INSERT INTO `item_mods` VALUES (23408, 68, 64); --arcadian beret +3 -- EVA
INSERT INTO `item_mods` VALUES (23408, 31, 73); --arcadian beret +3 -- MEVA
INSERT INTO `item_mods` VALUES (23408, 29, 4); --arcadian beret +3 -- MDEF
INSERT INTO `item_mods` VALUES (23408, 384, 800); --arcadian beret +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23408, 27, -8); --arcadian beret +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23408, 359, 14); --arcadian beret +3 -- RAPID_SHOT
INSERT INTO `item_mods` VALUES (23408, 305, 38); --arcadian beret +3 -- RECYCLE
INSERT INTO `item_mods` VALUES (23475, 1, 151); --arcadian jerkin +3 -- DEF
INSERT INTO `item_mods` VALUES (23475, 2, 79); --arcadian jerkin +3 -- HP
INSERT INTO `item_mods` VALUES (23475, 5, 64); --arcadian jerkin +3 -- MP
INSERT INTO `item_mods` VALUES (23475, 8, 37); --arcadian jerkin +3 -- STR
INSERT INTO `item_mods` VALUES (23475, 9, 39); --arcadian jerkin +3 -- DEX
INSERT INTO `item_mods` VALUES (23475, 10, 31); --arcadian jerkin +3 -- VIT
INSERT INTO `item_mods` VALUES (23475, 11, 43); --arcadian jerkin +3 -- AGI
INSERT INTO `item_mods` VALUES (23475, 12, 33); --arcadian jerkin +3 -- INT
INSERT INTO `item_mods` VALUES (23475, 13, 33); --arcadian jerkin +3 -- MND
INSERT INTO `item_mods` VALUES (23475, 14, 33); --arcadian jerkin +3 -- CHR
INSERT INTO `item_mods` VALUES (23475, 26, 40); --arcadian jerkin +3 -- RACC
INSERT INTO `item_mods` VALUES (23475, 24, 65); --arcadian jerkin +3 -- RATT
INSERT INTO `item_mods` VALUES (23475, 30, 40); --arcadian jerkin +3 -- MACC
INSERT INTO `item_mods` VALUES (23475, 68, 69); --arcadian jerkin +3 -- EVA
INSERT INTO `item_mods` VALUES (23475, 31, 84); --arcadian jerkin +3 -- MEVA
INSERT INTO `item_mods` VALUES (23475, 29, 8); --arcadian jerkin +3 -- MDEF
INSERT INTO `item_mods` VALUES (23475, 384, 400); --arcadian jerkin +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23475, 27, -8); --arcadian jerkin +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23475, 359, 16); --arcadian jerkin +3 -- RAPID_SHOT
INSERT INTO `item_mods` VALUES (23542, 1, 106); --arcadian bracers +3 -- DEF
INSERT INTO `item_mods` VALUES (23542, 2, 45); --arcadian bracers +3 -- HP
INSERT INTO `item_mods` VALUES (23542, 8, 25); --arcadian bracers +3 -- STR
INSERT INTO `item_mods` VALUES (23542, 9, 45); --arcadian bracers +3 -- DEX
INSERT INTO `item_mods` VALUES (23542, 10, 39); --arcadian bracers +3 -- VIT
INSERT INTO `item_mods` VALUES (23542, 11, 21); --arcadian bracers +3 -- AGI
INSERT INTO `item_mods` VALUES (23542, 12, 22); --arcadian bracers +3 -- INT
INSERT INTO `item_mods` VALUES (23542, 13, 40); --arcadian bracers +3 -- MND
INSERT INTO `item_mods` VALUES (23542, 14, 27); --arcadian bracers +3 -- CHR
INSERT INTO `item_mods` VALUES (23542, 26, 38); --arcadian bracers +3 -- RACC
INSERT INTO `item_mods` VALUES (23542, 24, 79); --arcadian bracers +3 -- RATT
INSERT INTO `item_mods` VALUES (23542, 30, 38); --arcadian bracers +3 -- MACC
INSERT INTO `item_mods` VALUES (23542, 68, 60); --arcadian bracers +3 -- EVA
INSERT INTO `item_mods` VALUES (23542, 31, 57); --arcadian bracers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23542, 29, 4); --arcadian bracers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23542, 384, 500); --arcadian bracers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23542, 27, -6); --arcadian bracers +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23542, 365, 6); --arcadian bracers +3 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (25760, 1, 99); --mrigavyadha gloves -- DEF
INSERT INTO `item_mods` VALUES (25760, 2, 22); --mrigavyadha gloves -- HP
INSERT INTO `item_mods` VALUES (25760, 8, 16); --mrigavyadha gloves -- STR
INSERT INTO `item_mods` VALUES (25760, 9, 34); --mrigavyadha gloves -- DEX
INSERT INTO `item_mods` VALUES (25760, 10, 28); --mrigavyadha gloves -- VIT
INSERT INTO `item_mods` VALUES (25760, 11, 15); --mrigavyadha gloves -- AGI
INSERT INTO `item_mods` VALUES (25760, 12, 8); --mrigavyadha gloves -- INT
INSERT INTO `item_mods` VALUES (25760, 13, 29); --mrigavyadha gloves -- MND
INSERT INTO `item_mods` VALUES (25760, 14, 16); --mrigavyadha gloves -- CHR
INSERT INTO `item_mods` VALUES (25760, 29, 2); --mrigavyadha gloves -- MDEF
INSERT INTO `item_mods` VALUES (25760, 31, 43); --mrigavyadha gloves -- MEVA
INSERT INTO `item_mods` VALUES (25760, 68, 27); --mrigavyadha gloves -- EVA
INSERT INTO `item_mods` VALUES (25760, 73, 8); --mrigavyadha gloves -- STORETP
INSERT INTO `item_mods` VALUES (25760, 225, 10); --mrigavyadha gloves -- BIRD_KILLER
INSERT INTO `item_mods` VALUES (25760, 359, 15); --mrigavyadha gloves -- RAPID_SHOT
INSERT INTO `item_mods` VALUES (25760, 384, 500); --mrigavyadha gloves -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23609, 1, 130); --arcadian braccae +3 -- DEF
INSERT INTO `item_mods` VALUES (23609, 2, 87); --arcadian braccae +3 -- HP
INSERT INTO `item_mods` VALUES (23609, 5, 43); --arcadian braccae +3 -- MP
INSERT INTO `item_mods` VALUES (23609, 8, 39); --arcadian braccae +3 -- STR
INSERT INTO `item_mods` VALUES (23609, 10, 24); --arcadian braccae +3 -- VIT
INSERT INTO `item_mods` VALUES (23609, 11, 33); --arcadian braccae +3 -- AGI
INSERT INTO `item_mods` VALUES (23609, 12, 40); --arcadian braccae +3 -- INT
INSERT INTO `item_mods` VALUES (23609, 13, 27); --arcadian braccae +3 -- MND
INSERT INTO `item_mods` VALUES (23609, 14, 21); --arcadian braccae +3 -- CHR
INSERT INTO `item_mods` VALUES (23609, 26, 47); --arcadian braccae +3 -- RACC
INSERT INTO `item_mods` VALUES (23609, 24, 81); --arcadian braccae +3 -- RATT
INSERT INTO `item_mods` VALUES (23609, 30, 39); --arcadian braccae +3 -- MACC
INSERT INTO `item_mods` VALUES (23609, 68, 58); --arcadian braccae +3 -- EVA
INSERT INTO `item_mods` VALUES (23609, 31, 89); --arcadian braccae +3 -- MEVA
INSERT INTO `item_mods` VALUES (23609, 29, 7); --arcadian braccae +3 -- MDEF
INSERT INTO `item_mods` VALUES (23609, 384, 600); --arcadian braccae +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23609, 27, -7); --arcadian braccae +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23609, 365, 7); --arcadian braccae +3 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (23609, 841, 10); --arcadian braccae +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (20753, 1, 105); --epeolatry -- DEF
INSERT INTO `item_mods` VALUES (20753, 2, 46); --epeolatry -- HP
INSERT INTO `item_mods` VALUES (20753, 5, 42); --epeolatry -- MP
INSERT INTO `item_mods` VALUES (20753, 8, 16); --epeolatry -- STR
INSERT INTO `item_mods` VALUES (20753, 9, 19); --epeolatry -- DEX
INSERT INTO `item_mods` VALUES (20753, 10, 23); --epeolatry -- VIT
INSERT INTO `item_mods` VALUES (20753, 11, 19); --epeolatry -- AGI
INSERT INTO `item_mods` VALUES (20753, 12, 24); --epeolatry -- INT
INSERT INTO `item_mods` VALUES (20753, 14, 35); --epeolatry -- CHR
INSERT INTO `item_mods` VALUES (20753, 25, 27); --epeolatry -- ACC
INSERT INTO `item_mods` VALUES (20753, 23, 47); --epeolatry -- ATT
INSERT INTO `item_mods` VALUES (20753, 30, 41); --epeolatry -- MACC
INSERT INTO `item_mods` VALUES (20753, 68, 48); --epeolatry -- EVA
INSERT INTO `item_mods` VALUES (20753, 31, 85); --epeolatry -- MEVA
INSERT INTO `item_mods` VALUES (20753, 29, 6); --epeolatry -- MDEF
INSERT INTO `item_mods` VALUES (20753, 119, 16); --epeolatry -- SINGING
INSERT INTO `item_mods` VALUES (20753, 384, 600); --epeolatry -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (20753, 27, -8); --epeolatry -- ENMITY
INSERT INTO `item_mods` VALUES (20753, 161, -500); --epeolatry -- DMGPHYS
INSERT INTO `item_mods` VALUES (23407, 1, 115); --bihu roundlet +3 -- DEF
INSERT INTO `item_mods` VALUES (23407, 2, 56); --bihu roundlet +3 -- HP
INSERT INTO `item_mods` VALUES (23407, 5, 52); --bihu roundlet +3 -- MP
INSERT INTO `item_mods` VALUES (23407, 8, 21); --bihu roundlet +3 -- STR
INSERT INTO `item_mods` VALUES (23407, 9, 24); --bihu roundlet +3 -- DEX
INSERT INTO `item_mods` VALUES (23407, 10, 28); --bihu roundlet +3 -- VIT
INSERT INTO `item_mods` VALUES (23407, 11, 24); --bihu roundlet +3 -- AGI
INSERT INTO `item_mods` VALUES (23407, 12, 29); --bihu roundlet +3 -- INT
INSERT INTO `item_mods` VALUES (23407, 13, 27); --bihu roundlet +3 -- MND
INSERT INTO `item_mods` VALUES (23407, 14, 40); --bihu roundlet +3 -- CHR
INSERT INTO `item_mods` VALUES (23407, 25, 37); --bihu roundlet +3 -- ACC
INSERT INTO `item_mods` VALUES (23407, 23, 62); --bihu roundlet +3 -- ATT
INSERT INTO `item_mods` VALUES (23407, 30, 51); --bihu roundlet +3 -- MACC
INSERT INTO `item_mods` VALUES (23407, 68, 58); --bihu roundlet +3 -- EVA
INSERT INTO `item_mods` VALUES (23407, 31, 95); --bihu roundlet +3 -- MEVA
INSERT INTO `item_mods` VALUES (23407, 29, 7); --bihu roundlet +3 -- MDEF
INSERT INTO `item_mods` VALUES (23407, 119, 18); --bihu roundlet +3 -- SINGING
INSERT INTO `item_mods` VALUES (23407, 384, 600); --bihu roundlet +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23407, 27, -9); --bihu roundlet +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23407, 161, -600); --bihu roundlet +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23474, 1, 145); --bihu justaucorps +3 -- DEF
INSERT INTO `item_mods` VALUES (23474, 2, 89); --bihu justaucorps +3 -- HP
INSERT INTO `item_mods` VALUES (23474, 5, 94); --bihu justaucorps +3 -- MP
INSERT INTO `item_mods` VALUES (23474, 8, 39); --bihu justaucorps +3 -- STR
INSERT INTO `item_mods` VALUES (23474, 9, 41); --bihu justaucorps +3 -- DEX
INSERT INTO `item_mods` VALUES (23474, 10, 39); --bihu justaucorps +3 -- VIT
INSERT INTO `item_mods` VALUES (23474, 11, 41); --bihu justaucorps +3 -- AGI
INSERT INTO `item_mods` VALUES (23474, 12, 39); --bihu justaucorps +3 -- INT
INSERT INTO `item_mods` VALUES (23474, 13, 38); --bihu justaucorps +3 -- MND
INSERT INTO `item_mods` VALUES (23474, 14, 43); --bihu justaucorps +3 -- CHR
INSERT INTO `item_mods` VALUES (23474, 25, 53); --bihu justaucorps +3 -- ACC
INSERT INTO `item_mods` VALUES (23474, 23, 92); --bihu justaucorps +3 -- ATT
INSERT INTO `item_mods` VALUES (23474, 30, 54); --bihu justaucorps +3 -- MACC
INSERT INTO `item_mods` VALUES (23474, 68, 64); --bihu justaucorps +3 -- EVA
INSERT INTO `item_mods` VALUES (23474, 31, 100); --bihu justaucorps +3 -- MEVA
INSERT INTO `item_mods` VALUES (23474, 29, 8); --bihu justaucorps +3 -- MDEF
INSERT INTO `item_mods` VALUES (23474, 384, 300); --bihu justaucorps +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23474, 841, 10); --bihu justaucorps +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (23474, 161, -700); --bihu justaucorps +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (25835, 1, 111); --flamma manopolas +2 -- DEF
INSERT INTO `item_mods` VALUES (25835, 2, 60); --flamma manopolas +2 -- HP
INSERT INTO `item_mods` VALUES (25835, 5, 15); --flamma manopolas +2 -- MP
INSERT INTO `item_mods` VALUES (25835, 8, 33); --flamma manopolas +2 -- STR
INSERT INTO `item_mods` VALUES (25835, 9, 56); --flamma manopolas +2 -- DEX
INSERT INTO `item_mods` VALUES (25835, 10, 45); --flamma manopolas +2 -- VIT
INSERT INTO `item_mods` VALUES (25835, 11, 8); --flamma manopolas +2 -- AGI
INSERT INTO `item_mods` VALUES (25835, 12, 7); --flamma manopolas +2 -- INT
INSERT INTO `item_mods` VALUES (25835, 13, 24); --flamma manopolas +2 -- MND
INSERT INTO `item_mods` VALUES (25835, 14, 17); --flamma manopolas +2 -- CHR
INSERT INTO `item_mods` VALUES (25835, 25, 43); --flamma manopolas +2 -- ACC
INSERT INTO `item_mods` VALUES (25835, 30, 43); --flamma manopolas +2 -- MACC
INSERT INTO `item_mods` VALUES (25835, 68, 36); --flamma manopolas +2 -- EVA
INSERT INTO `item_mods` VALUES (25835, 31, 48); --flamma manopolas +2 -- MEVA
INSERT INTO `item_mods` VALUES (25835, 29, 2); --flamma manopolas +2 -- MDEF
INSERT INTO `item_mods` VALUES (25835, 368, 400); --flamma manopolas +2 -- REGAIN
INSERT INTO `item_mods` VALUES (25835, 73, 6); --flamma manopolas +2 -- STORETP
INSERT INTO `item_mods` VALUES (25835, 165, 8); --flamma manopolas +2 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23541, 160, 104); --bihu cuffs +3 -- DMG
INSERT INTO `item_mods` VALUES (23541, 2, 42); --bihu cuffs +3 -- HP
INSERT INTO `item_mods` VALUES (23541, 5, 34); --bihu cuffs +3 -- MP
INSERT INTO `item_mods` VALUES (23541, 8, 16); --bihu cuffs +3 -- STR
INSERT INTO `item_mods` VALUES (23541, 9, 38); --bihu cuffs +3 -- DEX
INSERT INTO `item_mods` VALUES (23541, 10, 35); --bihu cuffs +3 -- VIT
INSERT INTO `item_mods` VALUES (23541, 11, 15); --bihu cuffs +3 -- AGI
INSERT INTO `item_mods` VALUES (23541, 12, 29); --bihu cuffs +3 -- INT
INSERT INTO `item_mods` VALUES (23541, 13, 42); --bihu cuffs +3 -- MND
INSERT INTO `item_mods` VALUES (23541, 14, 33); --bihu cuffs +3 -- CHR
INSERT INTO `item_mods` VALUES (23541, 25, 38); --bihu cuffs +3 -- ACC
INSERT INTO `item_mods` VALUES (23541, 23, 63); --bihu cuffs +3 -- ATT
INSERT INTO `item_mods` VALUES (23541, 30, 44); --bihu cuffs +3 -- MACC
INSERT INTO `item_mods` VALUES (23541, 68, 44); --bihu cuffs +3 -- EVA
INSERT INTO `item_mods` VALUES (23541, 31, 57); --bihu cuffs +3 -- MEVA
INSERT INTO `item_mods` VALUES (23541, 29, 5); --bihu cuffs +3 -- MDEF
INSERT INTO `item_mods` VALUES (23541, 121, 15); --bihu cuffs +3 -- WIND
INSERT INTO `item_mods` VALUES (23541, 384, 300); --bihu cuffs +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23541, 27, -9); --bihu cuffs +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23541, 161, -500); --bihu cuffs +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23608, 1, 127); --bihu cannions +3 -- DEF
INSERT INTO `item_mods` VALUES (23608, 2, 103); --bihu cannions +3 -- HP
INSERT INTO `item_mods` VALUES (23608, 5, 89); --bihu cannions +3 -- MP
INSERT INTO `item_mods` VALUES (23608, 8, 33); --bihu cannions +3 -- STR
INSERT INTO `item_mods` VALUES (23608, 10, 20); --bihu cannions +3 -- VIT
INSERT INTO `item_mods` VALUES (23608, 11, 27); --bihu cannions +3 -- AGI
INSERT INTO `item_mods` VALUES (23608, 12, 54); --bihu cannions +3 -- INT
INSERT INTO `item_mods` VALUES (23608, 13, 43); --bihu cannions +3 -- MND
INSERT INTO `item_mods` VALUES (23608, 14, 43); --bihu cannions +3 -- CHR
INSERT INTO `item_mods` VALUES (23608, 25, 39); --bihu cannions +3 -- ACC
INSERT INTO `item_mods` VALUES (23608, 23, 64); --bihu cannions +3 -- ATT
INSERT INTO `item_mods` VALUES (23608, 30, 52); --bihu cannions +3 -- MACC
INSERT INTO `item_mods` VALUES (23608, 68, 50); --bihu cannions +3 -- EVA
INSERT INTO `item_mods` VALUES (23608, 31, 127); --bihu cannions +3 -- MEVA
INSERT INTO `item_mods` VALUES (23608, 29, 8); --bihu cannions +3 -- MDEF
INSERT INTO `item_mods` VALUES (23608, 161, -600); --bihu cannions +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23608, 384, 500); --bihu cannions +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23600, 14, 20); --hesychasts hose +3 -- CHR
INSERT INTO `item_mods` VALUES (23600, 25, 39); --hesychasts hose +3 -- ACC
INSERT INTO `item_mods` VALUES (23600, 23, 64); --hesychasts hose +3 -- ATT
INSERT INTO `item_mods` VALUES (23600, 30, 39); --hesychasts hose +3 -- MACC
INSERT INTO `item_mods` VALUES (23600, 68, 53); --hesychasts hose +3 -- EVA
INSERT INTO `item_mods` VALUES (23600, 31, 84); --hesychasts hose +3 -- MEVA
INSERT INTO `item_mods` VALUES (23600, 29, 5); --hesychasts hose +3 -- MDEF
INSERT INTO `item_mods` VALUES (23600, 384, 600); --hesychasts hose +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23600, 292, 19); --hesychasts hose +3 -- KICK_ATTACK_RATE
INSERT INTO `item_mods` VALUES (23600, 289, 10); --hesychasts hose +3 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (23600, 165, 8); --hesychasts hose +3 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25986, 374, 5); --pinga mittens -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (26535, 68, 45); --pinga tunic -- EVA
INSERT INTO `item_mods` VALUES (26535, 31, 118); --pinga tunic -- MEVA
INSERT INTO `item_mods` VALUES (23465, 1, 165); --agoge lorica +3 -- DEF
INSERT INTO `item_mods` VALUES (23465, 2, 81); --agoge lorica +3 -- HP
INSERT INTO `item_mods` VALUES (23465, 8, 36); --agoge lorica +3 -- STR
INSERT INTO `item_mods` VALUES (23465, 9, 35); --agoge lorica +3 -- DEX
INSERT INTO `item_mods` VALUES (23465, 10, 36); --agoge lorica +3 -- VIT
INSERT INTO `item_mods` VALUES (23465, 11, 30); --agoge lorica +3 -- AGI
INSERT INTO `item_mods` VALUES (23465, 12, 30); --agoge lorica +3 -- INT
INSERT INTO `item_mods` VALUES (23465, 13, 30); --agoge lorica +3 -- MND
INSERT INTO `item_mods` VALUES (23465, 14, 30); --agoge lorica +3 -- CHR
INSERT INTO `item_mods` VALUES (23465, 25, 50); --agoge lorica +3 -- ACC
INSERT INTO `item_mods` VALUES (23465, 23, 85); --agoge lorica +3 -- ATT
INSERT INTO `item_mods` VALUES (23465, 30, 40); --agoge lorica +3 -- MACC
INSERT INTO `item_mods` VALUES (23465, 68, 64); --agoge lorica +3 -- EVA
INSERT INTO `item_mods` VALUES (23465, 31, 84); --agoge lorica +3 -- MEVA
INSERT INTO `item_mods` VALUES (23465, 29, 7); --agoge lorica +3 -- MDEF
INSERT INTO `item_mods` VALUES (23465, 384, 400); --agoge lorica +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23465, 288, 7); --agoge lorica +3 -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (23778, 301, 5); --sakpatas cuisses -- PHALANX
INSERT INTO `item_mods` VALUES (15194, 1, 200); --maats cap -- DEF
INSERT INTO `item_mods` VALUES (15194, 2, 200); --maats cap -- HP
INSERT INTO `item_mods` VALUES (15194, 5, 200); --maats cap -- MP
INSERT INTO `item_mods` VALUES (15194, 8, 66); --maats cap -- STR
INSERT INTO `item_mods` VALUES (15194, 9, 66); --maats cap -- DEX
INSERT INTO `item_mods` VALUES (15194, 10, 66); --maats cap -- VIT
INSERT INTO `item_mods` VALUES (15194, 11, 66); --maats cap -- AGI
INSERT INTO `item_mods` VALUES (15194, 12, 66); --maats cap -- INT
INSERT INTO `item_mods` VALUES (25731, 1, 135); --sayadios kaftan -- DEF
INSERT INTO `item_mods` VALUES (25731, 2, 57); --sayadios kaftan -- HP
INSERT INTO `item_mods` VALUES (25731, 5, 59); --sayadios kaftan -- MP
INSERT INTO `item_mods` VALUES (25731, 8, 25); --sayadios kaftan -- STR
INSERT INTO `item_mods` VALUES (25731, 9, 33); --sayadios kaftan -- DEX
INSERT INTO `item_mods` VALUES (25731, 10, 23); --sayadios kaftan -- VIT
INSERT INTO `item_mods` VALUES (25731, 11, 39); --sayadios kaftan -- AGI
INSERT INTO `item_mods` VALUES (25731, 12, 19); --sayadios kaftan -- INT
INSERT INTO `item_mods` VALUES (25731, 13, 19); --sayadios kaftan -- MND
INSERT INTO `item_mods` VALUES (25731, 14, 19); --sayadios kaftan -- CHR
INSERT INTO `item_mods` VALUES (25731, 24, 35); --sayadios kaftan -- RATT
INSERT INTO `item_mods` VALUES (25731, 25, 45); --sayadios kaftan -- ACC
INSERT INTO `item_mods` VALUES (25731, 26, 35); --sayadios kaftan -- RACC
INSERT INTO `item_mods` VALUES (25731, 29, 6); --sayadios kaftan -- MDEF
INSERT INTO `item_mods` VALUES (25731, 31, 69); --sayadios kaftan -- MEVA
INSERT INTO `item_mods` VALUES (25731, 68, 52); --sayadios kaftan -- EVA
INSERT INTO `item_mods` VALUES (25731, 165, 5); --sayadios kaftan -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25731, 384, 400); --sayadios kaftan -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (15194, 13, 66); --maats cap -- MND
INSERT INTO `item_mods` VALUES (15194, 14, 66); --maats cap -- CHR
INSERT INTO `item_mods` VALUES (15194, 23, 66); --maats cap -- ATT
INSERT INTO `item_mods` VALUES (15194, 24, 66); --maats cap -- RATT
INSERT INTO `item_mods` VALUES (15194, 25, 66); --maats cap -- ACC
INSERT INTO `item_mods` VALUES (15194, 26, 66); --maats cap -- RACC
INSERT INTO `item_mods` VALUES (15194, 27, 66); --maats cap -- ENMITY
INSERT INTO `item_mods` VALUES (15194, 28, 66); --maats cap -- MATT
INSERT INTO `item_mods` VALUES (15194, 29, 66); --maats cap -- MDEF
INSERT INTO `item_mods` VALUES (15194, 30, 66); --maats cap -- MACC
INSERT INTO `item_mods` VALUES (15194, 31, 166); --maats cap -- MEVA
INSERT INTO `item_mods` VALUES (15194, 68, 166); --maats cap -- EVA
INSERT INTO `item_mods` VALUES (15194, 73, 16); --maats cap -- STORETP
INSERT INTO `item_mods` VALUES (15194, 890, 50); --maats cap -- ENH_MAGIC_DURATION
INSERT INTO `item_mods` VALUES (15194, 80, 33); --maats cap -- HTH
INSERT INTO `item_mods` VALUES (15194, 81, 33); --maats cap -- DAGGER
INSERT INTO `item_mods` VALUES (15194, 82, 33); --maats cap -- SWORD
INSERT INTO `item_mods` VALUES (15194, 83, 33); --maats cap -- GSWORD
INSERT INTO `item_mods` VALUES (15194, 84, 33); --maats cap -- AXE
INSERT INTO `item_mods` VALUES (15194, 85, 33); --maats cap -- GAXE
INSERT INTO `item_mods` VALUES (15194, 86, 33); --maats cap -- SCYTHE
INSERT INTO `item_mods` VALUES (15194, 87, 33); --maats cap -- POLEARM
INSERT INTO `item_mods` VALUES (15194, 88, 33); --maats cap -- KATANA
INSERT INTO `item_mods` VALUES (15194, 89, 33); --maats cap -- GKATANA
INSERT INTO `item_mods` VALUES (15194, 90, 33); --maats cap -- CLUB
INSERT INTO `item_mods` VALUES (15194, 91, 33); --maats cap -- STAFF
INSERT INTO `item_mods` VALUES (15194, 104, 33); --maats cap -- ARCHERY
INSERT INTO `item_mods` VALUES (15194, 105, 33); --maats cap -- MARKSMAN
INSERT INTO `item_mods` VALUES (15194, 106, 33); --maats cap -- THROW
INSERT INTO `item_mods` VALUES (15194, 107, 33); --maats cap -- GUARD
INSERT INTO `item_mods` VALUES (15194, 108, 33); --maats cap -- EVASION
INSERT INTO `item_mods` VALUES (15194, 109, 33); --maats cap -- SHIELD
INSERT INTO `item_mods` VALUES (15194, 110, 33); --maats cap -- PARRY
INSERT INTO `item_mods` VALUES (15194, 160, -1500); --maats cap -- DMG
INSERT INTO `item_mods` VALUES (15194, 190, -1500); --maats cap -- DMGPHYS_II
INSERT INTO `item_mods` VALUES (15194, 831, -1500); --maats cap -- DMGMAGIC_II
INSERT INTO `item_mods` VALUES (15194, 165, 10); --maats cap -- CRITHITRATE
INSERT INTO `item_mods` VALUES (15194, 421, 10); --maats cap -- CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (15194, 964, 10); --maats cap -- RANGED_CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (15194, 908, 10); --maats cap -- CRIT_DEF_BONUS
INSERT INTO `item_mods` VALUES (15194, 166, 10); --maats cap -- CRITICAL_HIT_EVASION
INSERT INTO `item_mods` VALUES (15194, 562, 10); --maats cap -- MAGIC_CRITHITRATE
INSERT INTO `item_mods` VALUES (15194, 563, 10); --maats cap -- MAGIC_CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (15194, 167, 1000); --maats cap -- HASTE_MAGIC
INSERT INTO `item_mods` VALUES (15194, 168, 33); --maats cap -- SPELLINTERRUPT
INSERT INTO `item_mods` VALUES (15194, 383, 1000); --maats cap -- HASTE_ABILITY
INSERT INTO `item_mods` VALUES (15194, 384, 1000); --maats cap -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (15194, 979, 10); --maats cap -- ADDITIONAL_SWING_CHANCE
INSERT INTO `item_mods` VALUES (15194, 169, 10); --maats cap -- MOVE_SPEED_OVERIDE
INSERT INTO `item_mods` VALUES (15194, 1040, 10); --maats cap -- AVATAR_LVL_BONUS
INSERT INTO `item_mods` VALUES (15194, 1041, 10); --maats cap -- CARBUNCLE_LVL_BONUS
INSERT INTO `item_mods` VALUES (15194, 1042, 10); --maats cap -- CAIT_SITH_LVL_BONUS
INSERT INTO `item_mods` VALUES (15194, 1043, 10); --maats cap -- WYVERN_LVL_BONUS
INSERT INTO `item_mods` VALUES (15194, 1044, 10); --maats cap -- AUTOMATON_LVL_BONUS
INSERT INTO `item_mods` VALUES (15194, 1033, 10); --maats cap -- AUGMENT_DAMAGE_HP
INSERT INTO `item_mods` VALUES (15194, 1036, 10); --maats cap -- AUGMENT_BLU_MAGIC
INSERT INTO `item_mods` VALUES (15194, 1035, 10); --maats cap -- AUGMENT_BLOOD_BOON
INSERT INTO `item_mods` VALUES (15194, 1032, 10); --maats cap -- AUGMENT_COMPOSURE
INSERT INTO `item_mods` VALUES (15194, 1031, 10); --maats cap -- AUGMENT_CONSERVE_MP
INSERT INTO `item_mods` VALUES (15194, 1034, 10); --maats cap -- AUGMENT_DAMAGE_PET_HP
INSERT INTO `item_mods` VALUES (15194, 407, 10); --maats cap -- UFASTCAST
INSERT INTO `item_mods` VALUES (15194, 311, 200); --maats cap -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (15194, 958, 90); --maats cap -- STATUSRES
INSERT INTO `item_mods` VALUES (15194, 259, 10); --maats cap -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (15194, 173, 55); --maats cap -- MARTIAL_ARTS
INSERT INTO `item_mods` VALUES (15194, 303, 10); --maats cap -- TREASURE_HUNTER
INSERT INTO `item_mods` VALUES (15194, 345, 10); --maats cap -- TP_BONUS
INSERT INTO `item_mods` VALUES (15194, 347, 10); --maats cap -- FIRE_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 348, 10); --maats cap -- ICE_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 349, 10); --maats cap -- WIND_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 350, 10); --maats cap -- EARTH_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 351, 10); --maats cap -- THUNDER_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 352, 10); --maats cap -- WATER_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 353, 10); --maats cap -- LIGHT_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 354, 10); --maats cap -- DARK_AFFINITY_DMG
INSERT INTO `item_mods` VALUES (15194, 368, 10); --maats cap -- REGAIN
INSERT INTO `item_mods` VALUES (15194, 369, 10); --maats cap -- REFRESH
INSERT INTO `item_mods` VALUES (15194, 370, 10); --maats cap -- REGEN
INSERT INTO `item_mods` VALUES (15194, 374, 10); --maats cap -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (15194, 260, 10); --maats cap -- CURE_POTENCY_II
INSERT INTO `item_mods` VALUES (15194, 291, 10); --maats cap -- COUNTER
INSERT INTO `item_mods` VALUES (15194, 292, 10); --maats cap -- KICK_ATTACK_RATE
INSERT INTO `item_mods` VALUES (15194, 543, 10); --maats cap -- COUNTERSTANCE_EFFECT
INSERT INTO `item_mods` VALUES (15194, 375, 10); --maats cap -- CURE_POTENCY_RCVD
INSERT INTO `item_mods` VALUES (15194, 458, 1); --maats cap -- RERAISE_III
INSERT INTO `item_mods` VALUES (15194, 475, 10); --maats cap -- MAGIC_ABSORB
INSERT INTO `item_mods` VALUES (15194, 512, 10); --maats cap -- PHYS_ABSORB
INSERT INTO `item_mods` VALUES (15194, 518, 10); --maats cap -- SHIELDBLOCKRATE
INSERT INTO `item_mods` VALUES (15194, 840, 10); --maats cap -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (15194, 915, 25); --maats cap -- CAPACITY_BONUS
INSERT INTO `item_mods` VALUES (15194, 973, 10); --maats cap -- SUBTLE_BLOW_II
INSERT INTO `item_mods` VALUES (15194, 430, 10); --maats cap -- QUAD_ATTACK
INSERT INTO `item_mods` VALUES (15194, 909, 10); --maats cap -- QUICK_MAGIC
INSERT INTO `item_mods` VALUES (23763, 1, 184); --gletis cuirass -- DEF
INSERT INTO `item_mods` VALUES (23763, 2, 91); --gletis cuirass -- HP
INSERT INTO `item_mods` VALUES (23763, 8, 39); --gletis cuirass -- STR
INSERT INTO `item_mods` VALUES (23763, 9, 34); --gletis cuirass -- DEX
INSERT INTO `item_mods` VALUES (23763, 10, 39); --gletis cuirass -- VIT
INSERT INTO `item_mods` VALUES (23763, 11, 26); --gletis cuirass -- AGI
INSERT INTO `item_mods` VALUES (23763, 12, 26); --gletis cuirass -- INT
INSERT INTO `item_mods` VALUES (23763, 13, 26); --gletis cuirass -- MND
INSERT INTO `item_mods` VALUES (23763, 14, 26); --gletis cuirass -- CHR
INSERT INTO `item_mods` VALUES (23763, 25, 40); --gletis cuirass -- ACC
INSERT INTO `item_mods` VALUES (23763, 23, 40); --gletis cuirass -- ATT
INSERT INTO `item_mods` VALUES (23763, 30, 40); --gletis cuirass -- MACC
INSERT INTO `item_mods` VALUES (23763, 31, 102); --gletis cuirass -- MEVA
INSERT INTO `item_mods` VALUES (23763, 68, 94); --gletis cuirass -- EVA
INSERT INTO `item_mods` VALUES (23763, 29, 15); --gletis cuirass -- MDEF
INSERT INTO `item_mods` VALUES (23763, 384, 300); --gletis cuirass -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23763, 387, 900); --gletis cuirass -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23763, 165, 8); --gletis cuirass -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23763, 161, -900); --gletis cuirass -- DMGPHYS
INSERT INTO `item_mods` VALUES (23763, 368, 3); --gletis cuirass -- REGAIN
INSERT INTO `item_mods` VALUES (23763, 491, 10); --gletis cuirass -- WALTZ_POTENCY
INSERT INTO `item_mods` VALUES (23532, 1, 119); --agoge mufflers +3 -- DEF
INSERT INTO `item_mods` VALUES (23532, 2, 70); --agoge mufflers +3 -- HP
INSERT INTO `item_mods` VALUES (23532, 8, 25); --agoge mufflers +3 -- STR
INSERT INTO `item_mods` VALUES (23532, 9, 39); --agoge mufflers +3 -- DEX
INSERT INTO `item_mods` VALUES (23532, 10, 47); --agoge mufflers +3 -- VIT
INSERT INTO `item_mods` VALUES (23532, 11, 13); --agoge mufflers +3 -- AGI
INSERT INTO `item_mods` VALUES (23532, 12, 21); --agoge mufflers +3 -- INT
INSERT INTO `item_mods` VALUES (23532, 13, 36); --agoge mufflers +3 -- MND
INSERT INTO `item_mods` VALUES (23532, 14, 26); --agoge mufflers +3 -- CHR
INSERT INTO `item_mods` VALUES (23532, 25, 38); --agoge mufflers +3 -- ACC
INSERT INTO `item_mods` VALUES (23532, 23, 86); --agoge mufflers +3 -- ATT
INSERT INTO `item_mods` VALUES (23532, 30, 38); --agoge mufflers +3 -- MACC
INSERT INTO `item_mods` VALUES (23532, 68, 42); --agoge mufflers +3 -- EVA
INSERT INTO `item_mods` VALUES (23770, 1, 138); --gletis gauntlets -- DEF
INSERT INTO `item_mods` VALUES (23770, 2, 68); --gletis gauntlets -- HP
INSERT INTO `item_mods` VALUES (23770, 8, 20); --gletis gauntlets -- STR
INSERT INTO `item_mods` VALUES (23770, 9, 42); --gletis gauntlets -- DEX
INSERT INTO `item_mods` VALUES (23770, 10, 43); --gletis gauntlets -- VIT
INSERT INTO `item_mods` VALUES (23770, 11, 15); --gletis gauntlets -- AGI
INSERT INTO `item_mods` VALUES (23770, 12, 14); --gletis gauntlets -- INT
INSERT INTO `item_mods` VALUES (23770, 13, 30); --gletis gauntlets -- MND
INSERT INTO `item_mods` VALUES (23770, 14, 24); --gletis gauntlets -- CHR
INSERT INTO `item_mods` VALUES (23770, 25, 40); --gletis gauntlets -- ACC
INSERT INTO `item_mods` VALUES (23770, 23, 40); --gletis gauntlets -- ATT
INSERT INTO `item_mods` VALUES (23770, 30, 40); --gletis gauntlets -- MACC
INSERT INTO `item_mods` VALUES (23770, 31, 75); --gletis gauntlets -- MEVA
INSERT INTO `item_mods` VALUES (23770, 68, 72); --gletis gauntlets -- EVA
INSERT INTO `item_mods` VALUES (23770, 29, 12); --gletis gauntlets -- MDEF
INSERT INTO `item_mods` VALUES (23770, 384, 300); --gletis gauntlets -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23770, 387, 700); --gletis gauntlets -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23770, 165, 7); --gletis gauntlets -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23770, 161, -700); --gletis gauntlets -- DMGPHYS
INSERT INTO `item_mods` VALUES (23770, 368, 2); --gletis gauntlets -- REGAIN
INSERT INTO `item_mods` VALUES (23532, 31, 63); --agoge mufflers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23532, 29, 4); --agoge mufflers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23532, 384, 500); --agoge mufflers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23532, 161, -600); --agoge mufflers +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (25957, 1, 89); --oshosi leggings +1 -- DEF
INSERT INTO `item_mods` VALUES (25957, 2, 58); --oshosi leggings +1 -- HP
INSERT INTO `item_mods` VALUES (25957, 8, 26); --oshosi leggings +1 -- STR
INSERT INTO `item_mods` VALUES (25957, 9, 24); --oshosi leggings +1 -- DEX
INSERT INTO `item_mods` VALUES (25957, 10, 15); --oshosi leggings +1 -- VIT
INSERT INTO `item_mods` VALUES (25957, 11, 56); --oshosi leggings +1 -- AGI
INSERT INTO `item_mods` VALUES (25957, 13, 11); --oshosi leggings +1 -- MND
INSERT INTO `item_mods` VALUES (25957, 14, 34); --oshosi leggings +1 -- CHR
INSERT INTO `item_mods` VALUES (25957, 26, 43); --oshosi leggings +1 -- RACC
INSERT INTO `item_mods` VALUES (25957, 27, -15); --oshosi leggings +1 -- ENMITY
INSERT INTO `item_mods` VALUES (25957, 29, 7); --oshosi leggings +1 -- MDEF
INSERT INTO `item_mods` VALUES (25957, 30, 48); --oshosi leggings +1 -- MACC
INSERT INTO `item_mods` VALUES (25957, 31, 131); --oshosi leggings +1 -- MEVA
INSERT INTO `item_mods` VALUES (25957, 68, 73); --oshosi leggings +1 -- EVA
INSERT INTO `item_mods` VALUES (25957, 165, 10); --oshosi leggings +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25957, 422, 4); --oshosi leggings +1 -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25957, 999, 3); --oshosi leggings +1 -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (23777, 1, 165); --gletis breeches -- DEF
INSERT INTO `item_mods` VALUES (23777, 2, 79); --gletis breeches -- HP
INSERT INTO `item_mods` VALUES (23777, 8, 49); --gletis breeches -- STR
INSERT INTO `item_mods` VALUES (23777, 9, 37); --gletis breeches -- DEX
INSERT INTO `item_mods` VALUES (23777, 10, 37); --gletis breeches -- VIT
INSERT INTO `item_mods` VALUES (23777, 11, 23); --gletis breeches -- AGI
INSERT INTO `item_mods` VALUES (23777, 12, 30); --gletis breeches -- INT
INSERT INTO `item_mods` VALUES (23777, 13, 20); --gletis breeches -- MND
INSERT INTO `item_mods` VALUES (23777, 14, 17); --gletis breeches -- CHR
INSERT INTO `item_mods` VALUES (23777, 25, 40); --gletis breeches -- ACC
INSERT INTO `item_mods` VALUES (23777, 23, 40); --gletis breeches -- ATT
INSERT INTO `item_mods` VALUES (23777, 30, 40); --gletis breeches -- MACC
INSERT INTO `item_mods` VALUES (23777, 31, 112); --gletis breeches -- MEVA
INSERT INTO `item_mods` VALUES (23777, 68, 77); --gletis breeches -- EVA
INSERT INTO `item_mods` VALUES (23777, 29, 14); --gletis breeches -- MDEF
INSERT INTO `item_mods` VALUES (23777, 384, 500); --gletis breeches -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23777, 387, 800); --gletis breeches -- UDMGPHYS
INSERT INTO `item_mods` VALUES (23777, 165, 7); --gletis breeches -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23777, 161, -800); --gletis breeches -- DMGPHYS
INSERT INTO `item_mods` VALUES (23777, 368, 3); --gletis breeches -- REGAIN
INSERT INTO `item_mods` VALUES (23074, 26, 35); --sakonji kabuto +2 -- RACC
INSERT INTO `item_mods` VALUES (23074, 24, 64); --sakonji kabuto +2 -- RATT
INSERT INTO `item_mods` VALUES (23409, 1, 135); --sakonji kabuto +3 -- DEF
INSERT INTO `item_mods` VALUES (23409, 2, 78); --sakonji kabuto +3 -- HP
INSERT INTO `item_mods` VALUES (23409, 5, 43); --sakonji kabuto +3 -- MP
INSERT INTO `item_mods` VALUES (23409, 8, 34); --sakonji kabuto +3 -- STR
INSERT INTO `item_mods` VALUES (23409, 9, 30); --sakonji kabuto +3 -- DEX
INSERT INTO `item_mods` VALUES (23409, 10, 32); --sakonji kabuto +3 -- VIT
INSERT INTO `item_mods` VALUES (23409, 11, 30); --sakonji kabuto +3 -- AGI
INSERT INTO `item_mods` VALUES (23409, 12, 29); --sakonji kabuto +3 -- INT
INSERT INTO `item_mods` VALUES (23409, 13, 29); --sakonji kabuto +3 -- MND
INSERT INTO `item_mods` VALUES (23409, 14, 29); --sakonji kabuto +3 -- CHR
INSERT INTO `item_mods` VALUES (23409, 25, 45); --sakonji kabuto +3 -- ACC
INSERT INTO `item_mods` VALUES (23409, 23, 79); --sakonji kabuto +3 -- ATT
INSERT INTO `item_mods` VALUES (23409, 26, 45); --sakonji kabuto +3 -- RACC
INSERT INTO `item_mods` VALUES (23784, 1043, 1); --gletis boots -- WYVERN_LVL_BONUS
INSERT INTO `item_mods` VALUES (23784, 1044, 1); --gletis boots -- AUTOMATON_LVL_BONUS
INSERT INTO `item_mods` VALUES (23409, 24, 79); --sakonji kabuto +3 -- RATT
INSERT INTO `item_mods` VALUES (23409, 30, 37); --sakonji kabuto +3 -- MACC
INSERT INTO `item_mods` VALUES (23409, 68, 53); --sakonji kabuto +3 -- EVA
INSERT INTO `item_mods` VALUES (23409, 31, 63); --sakonji kabuto +3 -- MEVA
INSERT INTO `item_mods` VALUES (23409, 29, 4); --sakonji kabuto +3 -- MDEF
INSERT INTO `item_mods` VALUES (23409, 384, 700); --sakonji kabuto +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23409, 365, 5); --sakonji kabuto +3 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (23409, 73, 8); --sakonji kabuto +3 -- STORETP
INSERT INTO `item_mods` VALUES (23476, 1, 165); --sakonji domaru +3 -- DEF
INSERT INTO `item_mods` VALUES (23476, 2, 101); --sakonji domaru +3 -- HP
INSERT INTO `item_mods` VALUES (23476, 5, 64); --sakonji domaru +3 -- MP
INSERT INTO `item_mods` VALUES (23476, 8, 42); --sakonji domaru +3 -- STR
INSERT INTO `item_mods` VALUES (23476, 9, 37); --sakonji domaru +3 -- DEX
INSERT INTO `item_mods` VALUES (23476, 10, 36); --sakonji domaru +3 -- VIT
INSERT INTO `item_mods` VALUES (23476, 11, 31); --sakonji domaru +3 -- AGI
INSERT INTO `item_mods` VALUES (23476, 12, 31); --sakonji domaru +3 -- INT
INSERT INTO `item_mods` VALUES (23476, 13, 31); --sakonji domaru +3 -- MND
INSERT INTO `item_mods` VALUES (23476, 14, 31); --sakonji domaru +3 -- CHR
INSERT INTO `item_mods` VALUES (23476, 25, 47); --sakonji domaru +3 -- ACC
INSERT INTO `item_mods` VALUES (23476, 23, 80); --sakonji domaru +3 -- ATT
INSERT INTO `item_mods` VALUES (23476, 30, 40); --sakonji domaru +3 -- MACC
INSERT INTO `item_mods` VALUES (23476, 68, 61); --sakonji domaru +3 -- EVA
INSERT INTO `item_mods` VALUES (23476, 31, 73); --sakonji domaru +3 -- MEVA
INSERT INTO `item_mods` VALUES (23476, 29, 6); --sakonji domaru +3 -- MDEF
INSERT INTO `item_mods` VALUES (23476, 384, 300); --sakonji domaru +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23476, 73, 10); --sakonji domaru +3 -- STORETP
INSERT INTO `item_mods` VALUES (23476, 841, 10); --sakonji domaru +3 -- ALL_WSDMG_FIRST_HIT
INSERT INTO `item_mods` VALUES (23543, 1, 125); --sakonji kote +3 -- DEF
INSERT INTO `item_mods` VALUES (23543, 2, 47); --sakonji kote +3 -- HP
INSERT INTO `item_mods` VALUES (23543, 8, 16); --sakonji kote +3 -- STR
INSERT INTO `item_mods` VALUES (23543, 9, 40); --sakonji kote +3 -- DEX
INSERT INTO `item_mods` VALUES (23543, 10, 40); --sakonji kote +3 -- VIT
INSERT INTO `item_mods` VALUES (23543, 11, 17); --sakonji kote +3 -- AGI
INSERT INTO `item_mods` VALUES (23543, 12, 20); --sakonji kote +3 -- INT
INSERT INTO `item_mods` VALUES (23543, 13, 36); --sakonji kote +3 -- MND
INSERT INTO `item_mods` VALUES (23543, 14, 30); --sakonji kote +3 -- CHR
INSERT INTO `item_mods` VALUES (23543, 25, 47); --sakonji kote +3 -- ACC
INSERT INTO `item_mods` VALUES (23543, 23, 81); --sakonji kote +3 -- ATT
INSERT INTO `item_mods` VALUES (25766, 1, 155); --hjarrandi breast -- DEF
INSERT INTO `item_mods` VALUES (25766, 2, 228); --hjarrandi breast -- HP
INSERT INTO `item_mods` VALUES (25766, 8, 38); --hjarrandi breast -- STR
INSERT INTO `item_mods` VALUES (25766, 9, 24); --hjarrandi breast -- DEX
INSERT INTO `item_mods` VALUES (25766, 10, 51); --hjarrandi breast -- VIT
INSERT INTO `item_mods` VALUES (25766, 11, 19); --hjarrandi breast -- AGI
INSERT INTO `item_mods` VALUES (25766, 12, 24); --hjarrandi breast -- INT
INSERT INTO `item_mods` VALUES (25766, 13, 29); --hjarrandi breast -- MND
INSERT INTO `item_mods` VALUES (25766, 14, 35); --hjarrandi breast -- CHR
INSERT INTO `item_mods` VALUES (25766, 25, 50); --hjarrandi breast -- ACC
INSERT INTO `item_mods` VALUES (25766, 23, 60); --hjarrandi breast -- ATT
INSERT INTO `item_mods` VALUES (25766, 30, 35); --hjarrandi breast -- MACC
INSERT INTO `item_mods` VALUES (25766, 68, 55); --hjarrandi breast -- EVA
INSERT INTO `item_mods` VALUES (25766, 31, 75); --hjarrandi breast -- MEVA
INSERT INTO `item_mods` VALUES (25766, 28, 15); --hjarrandi breast -- MATT
INSERT INTO `item_mods` VALUES (25766, 72, 12); --hjarrandi breast -- HPHEAL
INSERT INTO `item_mods` VALUES (25766, 165, 15); --hjarrandi breast -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25766, 160, -1300); --hjarrandi breast -- DMG
INSERT INTO `item_mods` VALUES (23543, 30, 38); --sakonji kote +3 -- MACC
INSERT INTO `item_mods` VALUES (23543, 68, 42); --sakonji kote +3 -- EVA
INSERT INTO `item_mods` VALUES (23543, 31, 46); --sakonji kote +3 -- MEVA
INSERT INTO `item_mods` VALUES (23543, 29, 3); --sakonji kote +3 -- MDEF
INSERT INTO `item_mods` VALUES (23543, 384, 400); --sakonji kote +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23543, 94, 12); --sakonji kote +3 -- MEDITATE_DURATION
INSERT INTO `item_mods` VALUES (23543, 161, -600); --sakonji kote +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23610, 1, 145); --sakonji haidate +3 -- DEF
INSERT INTO `item_mods` VALUES (23610, 2, 70); --sakonji haidate +3 -- HP
INSERT INTO `item_mods` VALUES (23610, 8, 43); --sakonji haidate +3 -- STR
INSERT INTO `item_mods` VALUES (23610, 10, 29); --sakonji haidate +3 -- VIT
INSERT INTO `item_mods` VALUES (23610, 11, 25); --sakonji haidate +3 -- AGI
INSERT INTO `item_mods` VALUES (23610, 12, 36); --sakonji haidate +3 -- INT
INSERT INTO `item_mods` VALUES (23610, 13, 26); --sakonji haidate +3 -- MND
INSERT INTO `item_mods` VALUES (23610, 14, 22); --sakonji haidate +3 -- CHR
INSERT INTO `item_mods` VALUES (23610, 25, 39); --sakonji haidate +3 -- ACC
INSERT INTO `item_mods` VALUES (23610, 23, 82); --sakonji haidate +3 -- ATT
INSERT INTO `item_mods` VALUES (23610, 30, 39); --sakonji haidate +3 -- MACC
INSERT INTO `item_mods` VALUES (23610, 68, 60); --sakonji haidate +3 -- EVA
INSERT INTO `item_mods` VALUES (23610, 31, 95); --sakonji haidate +3 -- MEVA
INSERT INTO `item_mods` VALUES (23610, 29, 5); --sakonji haidate +3 -- MDEF
INSERT INTO `item_mods` VALUES (23610, 384, 500); --sakonji haidate +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23610, 508, 35); --sakonji haidate +3 -- THIRD_EYE_COUNTER_RATE
INSERT INTO `item_mods` VALUES (23610, 163, -700); --sakonji haidate +3 -- DMGMAGIC
INSERT INTO `item_mods` VALUES (26034, 1, 14); --moonbeam nodowa -- DEF
INSERT INTO `item_mods` VALUES (26034, 25, 20); --moonbeam nodowa -- ACC
INSERT INTO `item_mods` VALUES (26034, 73, 8); --moonbeam nodowa -- STORETP
INSERT INTO `item_mods` VALUES (26034, 306, 8); --moonbeam nodowa -- ZANSHIN
INSERT INTO `item_mods` VALUES (26036, 1, 14); --moonbeam necklace -- DEF
INSERT INTO `item_mods` VALUES (26036, 30, 10); --moonbeam necklace -- MACC
INSERT INTO `item_mods` VALUES (26036, 31, 10); --moonbeam necklace -- MEVA
INSERT INTO `item_mods` VALUES (26036, 27, 10); --moonbeam necklace -- ENMITY
INSERT INTO `item_mods` VALUES (26036, 168, 10); --moonbeam necklace -- SPELLINTERRUPT
INSERT INTO `item_mods` VALUES (26189, 2, 100); --moonbeam ring -- HP
INSERT INTO `item_mods` VALUES (26189, 25, 5); --moonbeam ring -- ACC
INSERT INTO `item_mods` VALUES (26189, 23, 5); --moonbeam ring -- ATT
INSERT INTO `item_mods` VALUES (26189, 73, 3); --moonbeam ring -- STORETP
INSERT INTO `item_mods` VALUES (26189, 160, -400); --moonbeam ring -- DMG
INSERT INTO `item_mods` VALUES (26535, 29, 8); --pinga tunic -- MDEF
INSERT INTO `item_mods` VALUES (26535, 27, -8); --pinga tunic -- ENMITY
INSERT INTO `item_mods` VALUES (26535, 170, 13); --pinga tunic -- FASTCAST
INSERT INTO `item_mods` VALUES (21664, 73, 6); --zantetsuken x -- STORETP
INSERT INTO `item_mods` VALUES (26535, 374, 13); --pinga tunic -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (26536, 1, 145); --pinga tunic +1 -- DEF
INSERT INTO `item_mods` VALUES (26536, 2, 101); --pinga tunic +1 -- HP
INSERT INTO `item_mods` VALUES (26536, 5, 103); --pinga tunic +1 -- MP
INSERT INTO `item_mods` VALUES (25986, 10, 30); --pinga mittens -- VIT
INSERT INTO `item_mods` VALUES (25986, 12, 24); --pinga mittens -- INT
INSERT INTO `item_mods` VALUES (25986, 13, 44); --pinga mittens -- MND
INSERT INTO `item_mods` VALUES (25986, 14, 23); --pinga mittens -- CHR
INSERT INTO `item_mods` VALUES (25986, 68, 27); --pinga mittens -- EVA
INSERT INTO `item_mods` VALUES (23084, 4, 78); --futhark bandeau +2 -- CONVMPTOHP
INSERT INTO `item_mods` VALUES (25986, 1, 93); --pinga mittens -- DEF
INSERT INTO `item_mods` VALUES (25986, 2, 33); --pinga mittens -- HP
INSERT INTO `item_mods` VALUES (26536, 8, 23); --pinga tunic +1 -- STR
INSERT INTO `item_mods` VALUES (26536, 9, 24); --pinga tunic +1 -- DEX
INSERT INTO `item_mods` VALUES (26536, 10, 26); --pinga tunic +1 -- VIT
INSERT INTO `item_mods` VALUES (26536, 11, 26); --pinga tunic +1 -- AGI
INSERT INTO `item_mods` VALUES (26536, 12, 39); --pinga tunic +1 -- INT
INSERT INTO `item_mods` VALUES (25986, 5, 73); --pinga mittens -- MP
INSERT INTO `item_mods` VALUES (25986, 8, 7); --pinga mittens -- STR
INSERT INTO `item_mods` VALUES (25986, 9, 29); --pinga mittens -- DEX
INSERT INTO `item_mods` VALUES (25967, 27, -5); --pinga pumps +1 -- ENMITY
INSERT INTO `item_mods` VALUES (25967, 170, 5); --pinga pumps +1 -- FASTCAST
INSERT INTO `item_mods` VALUES (25967, 374, 5); --pinga pumps +1 -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (26536, 13, 40); --pinga tunic +1 -- MND
INSERT INTO `item_mods` VALUES (26536, 14, 34); --pinga tunic +1 -- CHR
INSERT INTO `item_mods` VALUES (26536, 68, 55); --pinga tunic +1 -- EVA
INSERT INTO `item_mods` VALUES (26536, 31, 128); --pinga tunic +1 -- MEVA
INSERT INTO `item_mods` VALUES (25608, 127, 1); --tlahtlamah glasses -- FISH
INSERT INTO `item_mods` VALUES (25608, 1, 1); --tlahtlamah glasses -- DEF
INSERT INTO `item_mods` VALUES (26536, 29, 9); --pinga tunic +1 -- MDEF
INSERT INTO `item_mods` VALUES (26536, 27, -9); --pinga tunic +1 -- ENMITY
INSERT INTO `item_mods` VALUES (26536, 170, 15); --pinga tunic +1 -- FASTCAST
INSERT INTO `item_mods` VALUES (26536, 374, 15); --pinga tunic +1 -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (25967, 14, 39); --pinga pumps +1 -- CHR
INSERT INTO `item_mods` VALUES (25967, 68, 66); --pinga pumps +1 -- EVA
INSERT INTO `item_mods` VALUES (25967, 31, 147); --pinga pumps +1 -- MEVA
INSERT INTO `item_mods` VALUES (25967, 29, 6); --pinga pumps +1 -- MDEF
INSERT INTO `item_mods` VALUES (25967, 2, 84); --pinga pumps +1 -- HP
INSERT INTO `item_mods` VALUES (25967, 5, 81); --pinga pumps +1 -- MP
INSERT INTO `item_mods` VALUES (25967, 8, 11); --pinga pumps +1 -- STR
INSERT INTO `item_mods` VALUES (25967, 9, 14); --pinga pumps +1 -- DEX
INSERT INTO `item_mods` VALUES (25967, 10, 15); --pinga pumps +1 -- VIT
INSERT INTO `item_mods` VALUES (25967, 11, 38); --pinga pumps +1 -- AGI
INSERT INTO `item_mods` VALUES (25967, 12, 5); --pinga pumps +1 -- INT
INSERT INTO `item_mods` VALUES (25967, 13, 35); --pinga pumps +1 -- MND
INSERT INTO `item_mods` VALUES (25956, 1, 79); --oshosi leggings -- DEF
INSERT INTO `item_mods` VALUES (25956, 2, 38); --oshosi leggings -- HP
INSERT INTO `item_mods` VALUES (25956, 8, 21); --oshosi leggings -- STR
INSERT INTO `item_mods` VALUES (25956, 9, 24); --oshosi leggings -- DEX
INSERT INTO `item_mods` VALUES (25956, 10, 15); --oshosi leggings -- VIT
INSERT INTO `item_mods` VALUES (25956, 11, 51); --oshosi leggings -- AGI
INSERT INTO `item_mods` VALUES (25956, 13, 11); --oshosi leggings -- MND
INSERT INTO `item_mods` VALUES (25956, 14, 34); --oshosi leggings -- CHR
INSERT INTO `item_mods` VALUES (25956, 26, 33); --oshosi leggings -- RACC
INSERT INTO `item_mods` VALUES (25956, 27, -10); --oshosi leggings -- ENMITY
INSERT INTO `item_mods` VALUES (25956, 29, 6); --oshosi leggings -- MDEF
INSERT INTO `item_mods` VALUES (25956, 30, 38); --oshosi leggings -- MACC
INSERT INTO `item_mods` VALUES (25956, 31, 121); --oshosi leggings -- MEVA
INSERT INTO `item_mods` VALUES (25956, 68, 63); --oshosi leggings -- EVA
INSERT INTO `item_mods` VALUES (25956, 165, 8); --oshosi leggings -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25956, 422, 3); --oshosi leggings -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25956, 999, 2); --oshosi leggings -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25982, 1, 114); --ratri gadlings -- DEF
INSERT INTO `item_mods` VALUES (25982, 2, 399); --ratri gadlings -- HP
INSERT INTO `item_mods` VALUES (25982, 8, 23); --ratri gadlings -- STR
INSERT INTO `item_mods` VALUES (25982, 9, 43); --ratri gadlings -- DEX
INSERT INTO `item_mods` VALUES (25982, 10, 34); --ratri gadlings -- VIT
INSERT INTO `item_mods` VALUES (25982, 12, 14); --ratri gadlings -- INT
INSERT INTO `item_mods` VALUES (25982, 13, 32); --ratri gadlings -- MND
INSERT INTO `item_mods` VALUES (25982, 14, 24); --ratri gadlings -- CHR
INSERT INTO `item_mods` VALUES (25982, 30, 34); --ratri gadlings -- MACC
INSERT INTO `item_mods` VALUES (25982, 68, 41); --ratri gadlings -- EVA
INSERT INTO `item_mods` VALUES (25982, 31, 80); --ratri gadlings -- MEVA
INSERT INTO `item_mods` VALUES (25982, 86, 43); --ratri gadlings -- SCYTHE
INSERT INTO `item_mods` VALUES (25982, 384, 400); --ratri gadlings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25982, 27, -7); --ratri gadlings -- ENMITY
INSERT INTO `item_mods` VALUES (25982, 570, 6); --ratri gadlings -- WEAPONSKILL_DAMAGE_BASE
INSERT INTO `item_mods` VALUES (25982, 160, 900); --ratri gadlings -- DMG
INSERT INTO `item_mods` VALUES (25966, 27, -4); --pinga pumps -- ENMITY
INSERT INTO `item_mods` VALUES (25966, 170, 3); --pinga pumps -- FASTCAST
INSERT INTO `item_mods` VALUES (25966, 374, 3); --pinga pumps -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (25967, 1, 85); --pinga pumps +1 -- DEF
INSERT INTO `item_mods` VALUES (26533, 1, 159); --arke corazza -- DEF
INSERT INTO `item_mods` VALUES (26533, 2, 205); --arke corazza -- HP
INSERT INTO `item_mods` VALUES (26533, 8, 34); --arke corazza -- STR
INSERT INTO `item_mods` VALUES (26533, 9, 26); --arke corazza -- DEX
INSERT INTO `item_mods` VALUES (26533, 10, 38); --arke corazza -- VIT
INSERT INTO `item_mods` VALUES (26533, 11, 21); --arke corazza -- AGI
INSERT INTO `item_mods` VALUES (26533, 12, 24); --arke corazza -- INT
INSERT INTO `item_mods` VALUES (26533, 13, 26); --arke corazza -- MND
INSERT INTO `item_mods` VALUES (26533, 14, 24); --arke corazza -- CHR
INSERT INTO `item_mods` VALUES (26533, 25, 42); --arke corazza -- ACC
INSERT INTO `item_mods` VALUES (26533, 160, -1200); --arke corazza -- DMG
INSERT INTO `item_mods` VALUES (26533, 384, 300); --arke corazza -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26533, 958, 7); --arke corazza -- STATUSRES
INSERT INTO `item_mods` VALUES (26534, 1, 169); --arke corazza +1 -- DEF
INSERT INTO `item_mods` VALUES (26534, 2, 225); --arke corazza +1 -- HP
INSERT INTO `item_mods` VALUES (26534, 8, 39); --arke corazza +1 -- STR
INSERT INTO `item_mods` VALUES (26534, 9, 26); --arke corazza +1 -- DEX
INSERT INTO `item_mods` VALUES (26534, 10, 43); --arke corazza +1 -- VIT
INSERT INTO `item_mods` VALUES (26534, 11, 21); --arke corazza +1 -- AGI
INSERT INTO `item_mods` VALUES (26534, 12, 24); --arke corazza +1 -- INT
INSERT INTO `item_mods` VALUES (26534, 13, 26); --arke corazza +1 -- MND
INSERT INTO `item_mods` VALUES (26534, 14, 24); --arke corazza +1 -- CHR
INSERT INTO `item_mods` VALUES (26534, 25, 52); --arke corazza +1 -- ACC
INSERT INTO `item_mods` VALUES (26534, 160, -1300); --arke corazza +1 -- DMG
INSERT INTO `item_mods` VALUES (25966, 14, 39); --pinga pumps -- CHR
INSERT INTO `item_mods` VALUES (25966, 68, 56); --pinga pumps -- EVA
INSERT INTO `item_mods` VALUES (25966, 31, 137); --pinga pumps -- MEVA
INSERT INTO `item_mods` VALUES (25966, 29, 5); --pinga pumps -- MDEF
INSERT INTO `item_mods` VALUES (26534, 384, 300); --arke corazza +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26534, 958, 8); --arke corazza +1 -- STATUSRES
INSERT INTO `item_mods` VALUES (25897, 1, 141); --arke cosciales -- DEF
INSERT INTO `item_mods` VALUES (25897, 2, 171); --arke cosciales -- HP
INSERT INTO `item_mods` VALUES (25897, 8, 40); --arke cosciales -- STR
INSERT INTO `item_mods` VALUES (25897, 10, 30); --arke cosciales -- VIT
INSERT INTO `item_mods` VALUES (25897, 11, 19); --arke cosciales -- AGI
INSERT INTO `item_mods` VALUES (25897, 12, 30); --arke cosciales -- INT
INSERT INTO `item_mods` VALUES (25897, 13, 20); --arke cosciales -- MND
INSERT INTO `item_mods` VALUES (25897, 14, 15); --arke cosciales -- CHR
INSERT INTO `item_mods` VALUES (25897, 25, 41); --arke cosciales -- ACC
INSERT INTO `item_mods` VALUES (25966, 10, 15); --pinga pumps -- VIT
INSERT INTO `item_mods` VALUES (25966, 11, 38); --pinga pumps -- AGI
INSERT INTO `item_mods` VALUES (25966, 9, 14); --pinga pumps -- DEX
INSERT INTO `item_mods` VALUES (25966, 13, 30); --pinga pumps -- MND
INSERT INTO `item_mods` VALUES (25897, 160, -1000); --arke cosciales -- DMG
INSERT INTO `item_mods` VALUES (25897, 384, 500); --arke cosciales -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25897, 958, 6); --arke cosciales -- STATUSRES
INSERT INTO `item_mods` VALUES (25898, 1, 151); --arke cosciales +1 -- DEF
INSERT INTO `item_mods` VALUES (25898, 2, 191); --arke cosciales +1 -- HP
INSERT INTO `item_mods` VALUES (25966, 1, 78); --pinga pumps -- DEF
INSERT INTO `item_mods` VALUES (25966, 2, 64); --pinga pumps -- HP
INSERT INTO `item_mods` VALUES (25966, 5, 66); --pinga pumps -- MP
INSERT INTO `item_mods` VALUES (25966, 8, 11); --pinga pumps -- STR
INSERT INTO `item_mods` VALUES (25898, 8, 45); --arke cosciales +1 -- STR
INSERT INTO `item_mods` VALUES (25898, 10, 35); --arke cosciales +1 -- VIT
INSERT INTO `item_mods` VALUES (25898, 11, 19); --arke cosciales +1 -- AGI
INSERT INTO `item_mods` VALUES (25984, 1, 117); --arke manopolas -- DEF
INSERT INTO `item_mods` VALUES (25984, 2, 102); --arke manopolas -- HP
INSERT INTO `item_mods` VALUES (25984, 8, 15); --arke manopolas -- STR
INSERT INTO `item_mods` VALUES (25984, 9, 38); --arke manopolas -- DEX
INSERT INTO `item_mods` VALUES (25984, 10, 42); --arke manopolas -- VIT
INSERT INTO `item_mods` VALUES (25984, 12, 12); --arke manopolas -- INT
INSERT INTO `item_mods` VALUES (25984, 13, 33); --arke manopolas -- MND
INSERT INTO `item_mods` VALUES (25984, 14, 24); --arke manopolas -- CHR
INSERT INTO `item_mods` VALUES (25984, 25, 39); --arke manopolas -- ACC
INSERT INTO `item_mods` VALUES (25984, 160, -600); --arke manopolas -- DMG
INSERT INTO `item_mods` VALUES (25984, 384, 400); --arke manopolas -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25984, 958, 3); --arke manopolas -- STATUSRES
INSERT INTO `item_mods` VALUES (25984, 2803, 6); --arke manopolas -- MPP
INSERT INTO `item_mods` VALUES (25900, 29, 8); --pinga pants +1 -- MDEF
INSERT INTO `item_mods` VALUES (25900, 27, -8); --pinga pants +1 -- ENMITY
INSERT INTO `item_mods` VALUES (25900, 170, 13); --pinga pants +1 -- FASTCAST
INSERT INTO `item_mods` VALUES (25900, 374, 13); --pinga pants +1 -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (25985, 1, 127); --arke manopolas +1 -- DEF
INSERT INTO `item_mods` VALUES (25900, 13, 35); --pinga pants +1 -- MND
INSERT INTO `item_mods` VALUES (25900, 14, 23); --pinga pants +1 -- CHR
INSERT INTO `item_mods` VALUES (25900, 68, 47); --pinga pants +1 -- EVA
INSERT INTO `item_mods` VALUES (25900, 31, 147); --pinga pants +1 -- MEVA
INSERT INTO `item_mods` VALUES (25985, 2, 122); --arke manopolas +1 -- HP
INSERT INTO `item_mods` VALUES (25985, 8, 20); --arke manopolas +1 -- STR
INSERT INTO `item_mods` VALUES (25985, 9, 38); --arke manopolas +1 -- DEX
INSERT INTO `item_mods` VALUES (25985, 10, 47); --arke manopolas +1 -- VIT
INSERT INTO `item_mods` VALUES (25985, 12, 12); --arke manopolas +1 -- INT
INSERT INTO `item_mods` VALUES (25985, 13, 33); --arke manopolas +1 -- MND
INSERT INTO `item_mods` VALUES (25964, 1, 99); --arke gambieras -- DEF
INSERT INTO `item_mods` VALUES (25964, 2, 114); --arke gambieras -- HP
INSERT INTO `item_mods` VALUES (25964, 8, 21); --arke gambieras -- STR
INSERT INTO `item_mods` VALUES (25964, 9, 20); --arke gambieras -- DEX
INSERT INTO `item_mods` VALUES (25964, 10, 26); --arke gambieras -- VIT
INSERT INTO `item_mods` VALUES (26964, 11, 33); --pupils camisa -- AGI
INSERT INTO `item_mods` VALUES (25965, 1, 109); --arke gambieras +1 -- DEF
INSERT INTO `item_mods` VALUES (25965, 2, 134); --arke gambieras +1 -- HP
INSERT INTO `item_mods` VALUES (25965, 8, 26); --arke gambieras +1 -- STR
INSERT INTO `item_mods` VALUES (25965, 9, 20); --arke gambieras +1 -- DEX
INSERT INTO `item_mods` VALUES (25900, 8, 26); --pinga pants +1 -- STR
INSERT INTO `item_mods` VALUES (25900, 10, 17); --pinga pants +1 -- VIT
INSERT INTO `item_mods` VALUES (25900, 11, 24); --pinga pants +1 -- AGI
INSERT INTO `item_mods` VALUES (25900, 12, 44); --pinga pants +1 -- INT
INSERT INTO `item_mods` VALUES (25965, 10, 31); --arke gambieras +1 -- VIT
INSERT INTO `item_mods` VALUES (25965, 11, 33); --arke gambieras +1 -- AGI
INSERT INTO `item_mods` VALUES (25898, 12, 30); --arke cosciales +1 -- INT
INSERT INTO `item_mods` VALUES (25898, 13, 20); --arke cosciales +1 -- MND
INSERT INTO `item_mods` VALUES (25898, 14, 15); --arke cosciales +1 -- CHR
INSERT INTO `item_mods` VALUES (26527, 1, 140); --kendatsuba samue -- DEF
INSERT INTO `item_mods` VALUES (26527, 2, 102); --kendatsuba samue -- HP
INSERT INTO `item_mods` VALUES (26527, 8, 33); --kendatsuba samue -- STR
INSERT INTO `item_mods` VALUES (26527, 9, 34); --kendatsuba samue -- DEX
INSERT INTO `item_mods` VALUES (26527, 10, 21); --kendatsuba samue -- VIT
INSERT INTO `item_mods` VALUES (26527, 11, 32); --kendatsuba samue -- AGI
INSERT INTO `item_mods` VALUES (26527, 12, 24); --kendatsuba samue -- INT
INSERT INTO `item_mods` VALUES (26527, 13, 23); --kendatsuba samue -- MND
INSERT INTO `item_mods` VALUES (26527, 14, 21); --kendatsuba samue -- CHR
INSERT INTO `item_mods` VALUES (26527, 25, 42); --kendatsuba samue -- ACC
INSERT INTO `item_mods` VALUES (26527, 26, 37); --kendatsuba samue -- RACC
INSERT INTO `item_mods` VALUES (26527, 68, 60); --kendatsuba samue -- EVA
INSERT INTO `item_mods` VALUES (26527, 31, 107); --kendatsuba samue -- MEVA
INSERT INTO `item_mods` VALUES (26527, 29, 8); --kendatsuba samue -- MDEF
INSERT INTO `item_mods` VALUES (26527, 384, 400); --kendatsuba samue -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26527, 302, 5); --kendatsuba samue -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (26527, 289, 9); --kendatsuba samue -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (26527, 165, 7); --kendatsuba samue -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25978, 1, 98); --kendatsuba tekko -- DEF
INSERT INTO `item_mods` VALUES (25978, 2, 41); --kendatsuba tekko -- HP
INSERT INTO `item_mods` VALUES (25978, 8, 14); --kendatsuba tekko -- STR
INSERT INTO `item_mods` VALUES (25978, 9, 57); --kendatsuba tekko -- DEX
INSERT INTO `item_mods` VALUES (25978, 10, 37); --kendatsuba tekko -- VIT
INSERT INTO `item_mods` VALUES (25978, 12, 14); --kendatsuba tekko -- INT
INSERT INTO `item_mods` VALUES (25978, 13, 28); --kendatsuba tekko -- MND
INSERT INTO `item_mods` VALUES (25978, 14, 21); --kendatsuba tekko -- CHR
INSERT INTO `item_mods` VALUES (25978, 25, 39); --kendatsuba tekko -- ACC
INSERT INTO `item_mods` VALUES (25978, 26, 34); --kendatsuba tekko -- RACC
INSERT INTO `item_mods` VALUES (25978, 68, 41); --kendatsuba tekko -- EVA
INSERT INTO `item_mods` VALUES (25978, 31, 80); --kendatsuba tekko -- MEVA
INSERT INTO `item_mods` VALUES (25978, 29, 4); --kendatsuba tekko -- MDEF
INSERT INTO `item_mods` VALUES (25978, 384, 400); --kendatsuba tekko -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25978, 302, 3); --kendatsuba tekko -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25890, 1, 131); --oshosi trousers +1 -- DEF
INSERT INTO `item_mods` VALUES (25890, 2, 104); --oshosi trousers +1 -- HP
INSERT INTO `item_mods` VALUES (25890, 8, 43); --oshosi trousers +1 -- STR
INSERT INTO `item_mods` VALUES (25890, 10, 19); --oshosi trousers +1 -- VIT
INSERT INTO `item_mods` VALUES (25890, 11, 43); --oshosi trousers +1 -- AGI
INSERT INTO `item_mods` VALUES (25890, 12, 29); --oshosi trousers +1 -- INT
INSERT INTO `item_mods` VALUES (25890, 13, 20); --oshosi trousers +1 -- MND
INSERT INTO `item_mods` VALUES (25890, 14, 15); --oshosi trousers +1 -- CHR
INSERT INTO `item_mods` VALUES (25890, 26, 46); --oshosi trousers +1 -- RACC
INSERT INTO `item_mods` VALUES (25890, 29, 9); --oshosi trousers +1 -- MDEF
INSERT INTO `item_mods` VALUES (25890, 30, 51); --oshosi trousers +1 -- MACC
INSERT INTO `item_mods` VALUES (25890, 31, 131); --oshosi trousers +1 -- MEVA
INSERT INTO `item_mods` VALUES (25890, 68, 54); --oshosi trousers +1 -- EVA
INSERT INTO `item_mods` VALUES (25890, 365, 12); --oshosi trousers +1 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (25890, 422, 7); --oshosi trousers +1 -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25890, 999, 6); --oshosi trousers +1 -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25978, 289, 5); --kendatsuba tekko -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25978, 165, 3); --kendatsuba tekko -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25979, 1, 98); --kendatsuba tekko +1 -- DEF
INSERT INTO `item_mods` VALUES (25979, 2, 41); --kendatsuba tekko +1 -- HP
INSERT INTO `item_mods` VALUES (25979, 8, 14); --kendatsuba tekko +1 -- STR
INSERT INTO `item_mods` VALUES (25979, 9, 57); --kendatsuba tekko +1 -- DEX
INSERT INTO `item_mods` VALUES (25979, 10, 37); --kendatsuba tekko +1 -- VIT
INSERT INTO `item_mods` VALUES (25979, 12, 14); --kendatsuba tekko +1 -- INT
INSERT INTO `item_mods` VALUES (25979, 13, 28); --kendatsuba tekko +1 -- MND
INSERT INTO `item_mods` VALUES (25979, 14, 21); --kendatsuba tekko +1 -- CHR
INSERT INTO `item_mods` VALUES (25979, 25, 39); --kendatsuba tekko +1 -- ACC
INSERT INTO `item_mods` VALUES (25979, 26, 34); --kendatsuba tekko +1 -- RACC
INSERT INTO `item_mods` VALUES (25979, 68, 41); --kendatsuba tekko +1 -- EVA
INSERT INTO `item_mods` VALUES (25979, 31, 80); --kendatsuba tekko +1 -- MEVA
INSERT INTO `item_mods` VALUES (25979, 29, 4); --kendatsuba tekko +1 -- MDEF
INSERT INTO `item_mods` VALUES (25979, 384, 400); --kendatsuba tekko +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25979, 302, 3); --kendatsuba tekko +1 -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25979, 289, 5); --kendatsuba tekko +1 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25979, 165, 3); --kendatsuba tekko +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25958, 1, 80); --kendatsuba sune-ate -- DEF
INSERT INTO `item_mods` VALUES (25958, 2, 50); --kendatsuba sune-ate -- HP
INSERT INTO `item_mods` VALUES (25958, 8, 20); --kendatsuba sune-ate -- STR
INSERT INTO `item_mods` VALUES (25958, 9, 39); --kendatsuba sune-ate -- DEX
INSERT INTO `item_mods` VALUES (25958, 10, 21); --kendatsuba sune-ate -- VIT
INSERT INTO `item_mods` VALUES (25958, 11, 39); --kendatsuba sune-ate -- AGI
INSERT INTO `item_mods` VALUES (25958, 13, 14); --kendatsuba sune-ate -- MND
INSERT INTO `item_mods` VALUES (25958, 14, 26); --kendatsuba sune-ate -- CHR
INSERT INTO `item_mods` VALUES (25958, 25, 38); --kendatsuba sune-ate -- ACC
INSERT INTO `item_mods` VALUES (25958, 26, 33); --kendatsuba sune-ate -- RACC
INSERT INTO `item_mods` VALUES (25958, 68, 70); --kendatsuba sune-ate -- EVA
INSERT INTO `item_mods` VALUES (25958, 31, 129); --kendatsuba sune-ate -- MEVA
INSERT INTO `item_mods` VALUES (25958, 29, 5); --kendatsuba sune-ate -- MDEF
INSERT INTO `item_mods` VALUES (25958, 384, 300); --kendatsuba sune-ate -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25958, 302, 3); --kendatsuba sune-ate -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25958, 289, 5); --kendatsuba sune-ate -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25958, 165, 3); --kendatsuba sune-ate -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25959, 1, 81); --kendatsuba sune-ate +1 -- DEF
INSERT INTO `item_mods` VALUES (25959, 2, 70); --kendatsuba sune-ate +1 -- HP
INSERT INTO `item_mods` VALUES (25959, 8, 20); --kendatsuba sune-ate +1 -- STR
INSERT INTO `item_mods` VALUES (25959, 9, 44); --kendatsuba sune-ate +1 -- DEX
INSERT INTO `item_mods` VALUES (25959, 10, 21); --kendatsuba sune-ate +1 -- VIT
INSERT INTO `item_mods` VALUES (25959, 11, 44); --kendatsuba sune-ate +1 -- AGI
INSERT INTO `item_mods` VALUES (25959, 13, 14); --kendatsuba sune-ate +1 -- MND
INSERT INTO `item_mods` VALUES (25959, 14, 26); --kendatsuba sune-ate +1 -- CHR
INSERT INTO `item_mods` VALUES (25959, 25, 48); --kendatsuba sune-ate +1 -- ACC
INSERT INTO `item_mods` VALUES (25959, 26, 43); --kendatsuba sune-ate +1 -- RACC
INSERT INTO `item_mods` VALUES (25959, 68, 80); --kendatsuba sune-ate +1 -- EVA
INSERT INTO `item_mods` VALUES (25959, 31, 139); --kendatsuba sune-ate +1 -- MEVA
INSERT INTO `item_mods` VALUES (25959, 29, 6); --kendatsuba sune-ate +1 -- MDEF
INSERT INTO `item_mods` VALUES (25959, 384, 300); --kendatsuba sune-ate +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25959, 302, 4); --kendatsuba sune-ate +1 -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25959, 289, 8); --kendatsuba sune-ate +1 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25959, 165, 5); --kendatsuba sune-ate +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25891, 1, 122); --kendatsuba hakama -- DEF
INSERT INTO `item_mods` VALUES (25891, 2, 95); --kendatsuba hakama -- HP
INSERT INTO `item_mods` VALUES (25891, 8, 37); --kendatsuba hakama -- STR
INSERT INTO `item_mods` VALUES (25891, 10, 25); --kendatsuba hakama -- VIT
INSERT INTO `item_mods` VALUES (25891, 11, 28); --kendatsuba hakama -- AGI
INSERT INTO `item_mods` VALUES (25891, 12, 32); --kendatsuba hakama -- INT
INSERT INTO `item_mods` VALUES (25891, 13, 16); --kendatsuba hakama -- MND
INSERT INTO `item_mods` VALUES (25891, 14, 12); --kendatsuba hakama -- CHR
INSERT INTO `item_mods` VALUES (25891, 25, 41); --kendatsuba hakama -- ACC
INSERT INTO `item_mods` VALUES (25891, 26, 36); --kendatsuba hakama -- RACC
INSERT INTO `item_mods` VALUES (25891, 68, 49); --kendatsuba hakama -- EVA
INSERT INTO `item_mods` VALUES (25891, 31, 129); --kendatsuba hakama -- MEVA
INSERT INTO `item_mods` VALUES (25891, 29, 7); --kendatsuba hakama -- MDEF
INSERT INTO `item_mods` VALUES (25891, 384, 900); --kendatsuba hakama -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25891, 302, 4); --kendatsuba hakama -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25891, 289, 7); --kendatsuba hakama -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25891, 165, 5); --kendatsuba hakama -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25892, 1, 132); --kendatsuba hakama +1 -- DEF
INSERT INTO `item_mods` VALUES (25892, 2, 115); --kendatsuba hakama +1 -- HP
INSERT INTO `item_mods` VALUES (25892, 8, 37); --kendatsuba hakama +1 -- STR
INSERT INTO `item_mods` VALUES (25892, 9, 5); --kendatsuba hakama +1 -- DEX
INSERT INTO `item_mods` VALUES (25892, 10, 25); --kendatsuba hakama +1 -- VIT
INSERT INTO `item_mods` VALUES (25892, 11, 33); --kendatsuba hakama +1 -- AGI
INSERT INTO `item_mods` VALUES (25892, 12, 32); --kendatsuba hakama +1 -- INT
INSERT INTO `item_mods` VALUES (25892, 13, 16); --kendatsuba hakama +1 -- MND
INSERT INTO `item_mods` VALUES (25892, 14, 12); --kendatsuba hakama +1 -- CHR
INSERT INTO `item_mods` VALUES (25892, 25, 51); --kendatsuba hakama +1 -- ACC
INSERT INTO `item_mods` VALUES (25892, 26, 46); --kendatsuba hakama +1 -- RACC
INSERT INTO `item_mods` VALUES (25892, 68, 59); --kendatsuba hakama +1 -- EVA
INSERT INTO `item_mods` VALUES (25892, 31, 139); --kendatsuba hakama +1 -- MEVA
INSERT INTO `item_mods` VALUES (25892, 29, 8); --kendatsuba hakama +1 -- MDEF
INSERT INTO `item_mods` VALUES (25892, 384, 900); --kendatsuba hakama +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25892, 302, 5); --kendatsuba hakama +1 -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (25892, 289, 10); --kendatsuba hakama +1 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (25892, 165, 7); --kendatsuba hakama +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25898, 25, 51); --arke cosciales +1 -- ACC
INSERT INTO `item_mods` VALUES (25898, 160, -1100); --arke cosciales +1 -- DMG
INSERT INTO `item_mods` VALUES (25898, 384, 500); --arke cosciales +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25898, 958, 7); --arke cosciales +1 -- STATUSRES
INSERT INTO `item_mods` VALUES (25985, 14, 24); --arke manopolas +1 -- CHR
INSERT INTO `item_mods` VALUES (25985, 25, 49); --arke manopolas +1 -- ACC
INSERT INTO `item_mods` VALUES (25985, 160, -700); --arke manopolas +1 -- DMG
INSERT INTO `item_mods` VALUES (25985, 384, 400); --arke manopolas +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25985, 958, 4); --arke manopolas +1 -- STATUSRES
INSERT INTO `item_mods` VALUES (25964, 13, 19); --arke gambieras -- MND
INSERT INTO `item_mods` VALUES (25899, 27, -7); --pinga pants -- ENMITY
INSERT INTO `item_mods` VALUES (25899, 170, 11); --pinga pants -- FASTCAST
INSERT INTO `item_mods` VALUES (25899, 374, 11); --pinga pants -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (25964, 14, 31); --arke gambieras -- CHR
INSERT INTO `item_mods` VALUES (25964, 25, 38); --arke gambieras -- ACC
INSERT INTO `item_mods` VALUES (25964, 160, -400); --arke gambieras -- DMG
INSERT INTO `item_mods` VALUES (25889, 1, 121); --oshosi trousers -- DEF
INSERT INTO `item_mods` VALUES (25889, 2, 84); --oshosi trousers -- HP
INSERT INTO `item_mods` VALUES (25889, 8, 38); --oshosi trousers -- STR
INSERT INTO `item_mods` VALUES (25889, 10, 19); --oshosi trousers -- VIT
INSERT INTO `item_mods` VALUES (25889, 11, 38); --oshosi trousers -- AGI
INSERT INTO `item_mods` VALUES (25889, 12, 29); --oshosi trousers -- INT
INSERT INTO `item_mods` VALUES (25889, 13, 20); --oshosi trousers -- MND
INSERT INTO `item_mods` VALUES (25889, 14, 15); --oshosi trousers -- CHR
INSERT INTO `item_mods` VALUES (25889, 26, 36); --oshosi trousers -- RACC
INSERT INTO `item_mods` VALUES (25889, 29, 8); --oshosi trousers -- MDEF
INSERT INTO `item_mods` VALUES (25889, 30, 41); --oshosi trousers -- MACC
INSERT INTO `item_mods` VALUES (25889, 31, 121); --oshosi trousers -- MEVA
INSERT INTO `item_mods` VALUES (25889, 68, 44); --oshosi trousers -- EVA
INSERT INTO `item_mods` VALUES (25889, 365, 10); --oshosi trousers -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (25889, 422, 6); --oshosi trousers -- DOUBLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25889, 999, 5); --oshosi trousers -- TRIPLE_SHOT_RATE
INSERT INTO `item_mods` VALUES (25964, 384, 300); --arke gambieras -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25964, 958, 4); --arke gambieras -- STATUSRES
INSERT INTO `item_mods` VALUES (25965, 13, 19); --arke gambieras +1 -- MND
INSERT INTO `item_mods` VALUES (25900, 1, 127); --pinga pants +1 -- DEF
INSERT INTO `item_mods` VALUES (25900, 2, 84); --pinga pants +1 -- HP
INSERT INTO `item_mods` VALUES (25900, 5, 58); --pinga pants +1 -- MP
INSERT INTO `item_mods` VALUES (25965, 14, 31); --arke gambieras +1 -- CHR
INSERT INTO `item_mods` VALUES (25965, 25, 48); --arke gambieras +1 -- ACC
INSERT INTO `item_mods` VALUES (25965, 160, -500); --arke gambieras +1 -- DMG
INSERT INTO `item_mods` VALUES (25965, 384, 300); --arke gambieras +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25965, 958, 5); --arke gambieras +1 -- STATUSRES
INSERT INTO `item_mods` VALUES (26539, 1, 139); --heyoka harness -- DEF
INSERT INTO `item_mods` VALUES (26539, 2, 91); --heyoka harness -- HP
INSERT INTO `item_mods` VALUES (26539, 8, 34); --heyoka harness -- STR
INSERT INTO `item_mods` VALUES (26539, 9, 46); --heyoka harness -- DEX
INSERT INTO `item_mods` VALUES (26539, 10, 24); --heyoka harness -- VIT
INSERT INTO `item_mods` VALUES (26539, 11, 32); --heyoka harness -- AGI
INSERT INTO `item_mods` VALUES (26539, 12, 21); --heyoka harness -- INT
INSERT INTO `item_mods` VALUES (26539, 13, 20); --heyoka harness -- MND
INSERT INTO `item_mods` VALUES (26539, 14, 33); --heyoka harness -- CHR
INSERT INTO `item_mods` VALUES (26539, 25, 42); --heyoka harness -- ACC
INSERT INTO `item_mods` VALUES (26539, 68, 60); --heyoka harness -- EVA
INSERT INTO `item_mods` VALUES (26539, 31, 107); --heyoka harness -- MEVA
INSERT INTO `item_mods` VALUES (26539, 29, 8); --heyoka harness -- MDEF
INSERT INTO `item_mods` VALUES (26539, 384, 400); --heyoka harness -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26539, 165, 9); --heyoka harness -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25970, 1, 79); --heyoka leggings -- DEF
INSERT INTO `item_mods` VALUES (25970, 2, 38); --heyoka leggings -- HP
INSERT INTO `item_mods` VALUES (25970, 8, 16); --heyoka leggings -- STR
INSERT INTO `item_mods` VALUES (25970, 9, 38); --heyoka leggings -- DEX
INSERT INTO `item_mods` VALUES (25970, 10, 14); --heyoka leggings -- VIT
INSERT INTO `item_mods` VALUES (25970, 11, 40); --heyoka leggings -- AGI
INSERT INTO `item_mods` VALUES (25970, 13, 14); --heyoka leggings -- MND
INSERT INTO `item_mods` VALUES (25970, 14, 35); --heyoka leggings -- CHR
INSERT INTO `item_mods` VALUES (25970, 25, 38); --heyoka leggings -- ACC
INSERT INTO `item_mods` VALUES (25970, 68, 70); --heyoka leggings -- EVA
INSERT INTO `item_mods` VALUES (25970, 31, 129); --heyoka leggings -- MEVA
INSERT INTO `item_mods` VALUES (25970, 29, 5); --heyoka leggings -- MDEF
INSERT INTO `item_mods` VALUES (25970, 384, 300); --heyoka leggings -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25970, 165, 5); --heyoka leggings -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25990, 1, 97); --heyoka mittens -- DEF
INSERT INTO `item_mods` VALUES (25990, 2, 29); --heyoka mittens -- HP
INSERT INTO `item_mods` VALUES (25990, 8, 15); --heyoka mittens -- STR
INSERT INTO `item_mods` VALUES (25990, 9, 51); --heyoka mittens -- DEX
INSERT INTO `item_mods` VALUES (25990, 10, 32); --heyoka mittens -- VIT
INSERT INTO `item_mods` VALUES (25990, 12, 11); --heyoka mittens -- INT
INSERT INTO `item_mods` VALUES (25990, 13, 30); --heyoka mittens -- MND
INSERT INTO `item_mods` VALUES (25990, 14, 25); --heyoka mittens -- CHR
INSERT INTO `item_mods` VALUES (25990, 25, 39); --heyoka mittens -- ACC
INSERT INTO `item_mods` VALUES (25990, 68, 41); --heyoka mittens -- EVA
INSERT INTO `item_mods` VALUES (25990, 31, 80); --heyoka mittens -- MEVA
INSERT INTO `item_mods` VALUES (25990, 29, 4); --heyoka mittens -- MDEF
INSERT INTO `item_mods` VALUES (25990, 384, 400); --heyoka mittens -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25990, 165, 5); --heyoka mittens -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25903, 1, 121); --heyoka subligar -- DEF
INSERT INTO `item_mods` VALUES (25903, 2, 84); --heyoka subligar -- HP
INSERT INTO `item_mods` VALUES (25903, 8, 34); --heyoka subligar -- STR
INSERT INTO `item_mods` VALUES (25903, 10, 17); --heyoka subligar -- VIT
INSERT INTO `item_mods` VALUES (25903, 11, 24); --heyoka subligar -- AGI
INSERT INTO `item_mods` VALUES (25903, 12, 29); --heyoka subligar -- INT
INSERT INTO `item_mods` VALUES (25903, 13, 16); --heyoka subligar -- MND
INSERT INTO `item_mods` VALUES (25903, 14, 16); --heyoka subligar -- CHR
INSERT INTO `item_mods` VALUES (25903, 25, 41); --heyoka subligar -- ACC
INSERT INTO `item_mods` VALUES (25903, 68, 49); --heyoka subligar -- EVA
INSERT INTO `item_mods` VALUES (25903, 31, 129); --heyoka subligar -- MEVA
INSERT INTO `item_mods` VALUES (25903, 29, 7); --heyoka subligar -- MDEF
INSERT INTO `item_mods` VALUES (25903, 384, 900); --heyoka subligar -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25903, 165, 7); --heyoka subligar -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25904, 1, 131); --heyoka subligar +1 -- DEF
INSERT INTO `item_mods` VALUES (25904, 2, 104); --heyoka subligar +1 -- HP
INSERT INTO `item_mods` VALUES (25904, 8, 39); --heyoka subligar +1 -- STR
INSERT INTO `item_mods` VALUES (25904, 9, 5); --heyoka subligar +1 -- DEX
INSERT INTO `item_mods` VALUES (25904, 10, 17); --heyoka subligar +1 -- VIT
INSERT INTO `item_mods` VALUES (25904, 11, 24); --heyoka subligar +1 -- AGI
INSERT INTO `item_mods` VALUES (25904, 12, 29); --heyoka subligar +1 -- INT
INSERT INTO `item_mods` VALUES (25904, 13, 16); --heyoka subligar +1 -- MND
INSERT INTO `item_mods` VALUES (25904, 14, 16); --heyoka subligar +1 -- CHR
INSERT INTO `item_mods` VALUES (25904, 25, 51); --heyoka subligar +1 -- ACC
INSERT INTO `item_mods` VALUES (25904, 68, 59); --heyoka subligar +1 -- EVA
INSERT INTO `item_mods` VALUES (25904, 31, 139); --heyoka subligar +1 -- MEVA
INSERT INTO `item_mods` VALUES (25904, 29, 8); --heyoka subligar +1 -- MDEF
INSERT INTO `item_mods` VALUES (25904, 384, 900); --heyoka subligar +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25904, 165, 9); --heyoka subligar +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (26540, 1, 149); --heyoka harness +1 -- DEF
INSERT INTO `item_mods` VALUES (26540, 2, 111); --heyoka harness +1 -- HP
INSERT INTO `item_mods` VALUES (26540, 8, 39); --heyoka harness +1 -- STR
INSERT INTO `item_mods` VALUES (26540, 9, 51); --heyoka harness +1 -- DEX
INSERT INTO `item_mods` VALUES (26540, 10, 24); --heyoka harness +1 -- VIT
INSERT INTO `item_mods` VALUES (26540, 11, 32); --heyoka harness +1 -- AGI
INSERT INTO `item_mods` VALUES (26540, 12, 21); --heyoka harness +1 -- INT
INSERT INTO `item_mods` VALUES (26540, 13, 20); --heyoka harness +1 -- MND
INSERT INTO `item_mods` VALUES (26540, 14, 33); --heyoka harness +1 -- CHR
INSERT INTO `item_mods` VALUES (26540, 25, 52); --heyoka harness +1 -- ACC
INSERT INTO `item_mods` VALUES (26540, 68, 70); --heyoka harness +1 -- EVA
INSERT INTO `item_mods` VALUES (26540, 31, 117); --heyoka harness +1 -- MEVA
INSERT INTO `item_mods` VALUES (26540, 29, 9); --heyoka harness +1 -- MDEF
INSERT INTO `item_mods` VALUES (26540, 384, 400); --heyoka harness +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26540, 165, 11); --heyoka harness +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25971, 1, 89); --heyoka leggings +1 -- DEF
INSERT INTO `item_mods` VALUES (25971, 2, 58); --heyoka leggings +1 -- HP
INSERT INTO `item_mods` VALUES (25971, 8, 21); --heyoka leggings +1 -- STR
INSERT INTO `item_mods` VALUES (25971, 9, 43); --heyoka leggings +1 -- DEX
INSERT INTO `item_mods` VALUES (25971, 10, 14); --heyoka leggings +1 -- VIT
INSERT INTO `item_mods` VALUES (25971, 11, 40); --heyoka leggings +1 -- AGI
INSERT INTO `item_mods` VALUES (25971, 13, 14); --heyoka leggings +1 -- MND
INSERT INTO `item_mods` VALUES (25971, 14, 35); --heyoka leggings +1 -- CHR
INSERT INTO `item_mods` VALUES (25971, 25, 48); --heyoka leggings +1 -- ACC
INSERT INTO `item_mods` VALUES (25971, 68, 80); --heyoka leggings +1 -- EVA
INSERT INTO `item_mods` VALUES (25971, 31, 139); --heyoka leggings +1 -- MEVA
INSERT INTO `item_mods` VALUES (25971, 29, 6); --heyoka leggings +1 -- MDEF
INSERT INTO `item_mods` VALUES (25971, 384, 300); --heyoka leggings +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25971, 165, 7); --heyoka leggings +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25991, 1, 107); --heyoka mittens +1 -- DEF
INSERT INTO `item_mods` VALUES (25991, 2, 49); --heyoka mittens +1 -- HP
INSERT INTO `item_mods` VALUES (25991, 8, 20); --heyoka mittens +1 -- STR
INSERT INTO `item_mods` VALUES (25991, 9, 56); --heyoka mittens +1 -- DEX
INSERT INTO `item_mods` VALUES (25991, 10, 32); --heyoka mittens +1 -- VIT
INSERT INTO `item_mods` VALUES (25991, 12, 11); --heyoka mittens +1 -- INT
INSERT INTO `item_mods` VALUES (25991, 13, 30); --heyoka mittens +1 -- MND
INSERT INTO `item_mods` VALUES (25991, 14, 25); --heyoka mittens +1 -- CHR
INSERT INTO `item_mods` VALUES (25991, 25, 49); --heyoka mittens +1 -- ACC
INSERT INTO `item_mods` VALUES (25991, 68, 51); --heyoka mittens +1 -- EVA
INSERT INTO `item_mods` VALUES (25991, 31, 90); --heyoka mittens +1 -- MEVA
INSERT INTO `item_mods` VALUES (25991, 29, 5); --heyoka mittens +1 -- MDEF
INSERT INTO `item_mods` VALUES (25991, 384, 400); --heyoka mittens +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25991, 165, 7); --heyoka mittens +1 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (25988, 1, 93); --mousai gages -- DEF
INSERT INTO `item_mods` VALUES (25988, 2, 68); --mousai gages -- HP
INSERT INTO `item_mods` VALUES (25988, 8, 8); --mousai gages -- STR
INSERT INTO `item_mods` VALUES (25988, 9, 33); --mousai gages -- DEX
INSERT INTO `item_mods` VALUES (25988, 10, 40); --mousai gages -- VIT
INSERT INTO `item_mods` VALUES (25988, 12, 20); --mousai gages -- INT
INSERT INTO `item_mods` VALUES (25988, 13, 32); --mousai gages -- MND
INSERT INTO `item_mods` VALUES (25988, 14, 33); --mousai gages -- CHR
INSERT INTO `item_mods` VALUES (25988, 68, 37); --mousai gages -- EVA
INSERT INTO `item_mods` VALUES (25988, 31, 91); --mousai gages -- MEVA
INSERT INTO `item_mods` VALUES (25988, 29, 4); --mousai gages -- MDEF
INSERT INTO `item_mods` VALUES (25988, 384, 300); --mousai gages -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25988, 445, 1); --mousai gages -- CAROL_EFFECT
INSERT INTO `item_mods` VALUES (25968, 1, 78); --mousai crackows -- DEF
INSERT INTO `item_mods` VALUES (25968, 2, 79); --mousai crackows -- HP
INSERT INTO `item_mods` VALUES (25968, 8, 10); --mousai crackows -- STR
INSERT INTO `item_mods` VALUES (25968, 9, 16); --mousai crackows -- DEX
INSERT INTO `item_mods` VALUES (25968, 10, 23); --mousai crackows -- VIT
INSERT INTO `item_mods` VALUES (25968, 11, 38); --mousai crackows -- AGI
INSERT INTO `item_mods` VALUES (25968, 13, 16); --mousai crackows -- MND
INSERT INTO `item_mods` VALUES (25968, 14, 40); --mousai crackows -- CHR
INSERT INTO `item_mods` VALUES (25968, 68, 63); --mousai crackows -- EVA
INSERT INTO `item_mods` VALUES (25968, 31, 137); --mousai crackows -- MEVA
INSERT INTO `item_mods` VALUES (25968, 29, 6); --mousai crackows -- MDEF
INSERT INTO `item_mods` VALUES (25968, 384, 300); --mousai crackows -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25968, 439, 1); --mousai crackows -- MAMBO_EFFECT
INSERT INTO `item_mods` VALUES (26537, 1, 135); --mousai manteel -- DEF
INSERT INTO `item_mods` VALUES (26537, 2, 171); --mousai manteel -- HP
INSERT INTO `item_mods` VALUES (26537, 8, 21); --mousai manteel -- STR
INSERT INTO `item_mods` VALUES (26537, 9, 28); --mousai manteel -- DEX
INSERT INTO `item_mods` VALUES (26537, 10, 34); --mousai manteel -- VIT
INSERT INTO `item_mods` VALUES (26537, 11, 24); --mousai manteel -- AGI
INSERT INTO `item_mods` VALUES (26537, 12, 30); --mousai manteel -- INT
INSERT INTO `item_mods` VALUES (26537, 13, 28); --mousai manteel -- MND
INSERT INTO `item_mods` VALUES (26537, 14, 37); --mousai manteel -- CHR
INSERT INTO `item_mods` VALUES (26537, 30, 42); --mousai manteel -- MACC
INSERT INTO `item_mods` VALUES (26537, 68, 55); --mousai manteel -- EVA
INSERT INTO `item_mods` VALUES (26537, 31, 118); --mousai manteel -- MEVA
INSERT INTO `item_mods` VALUES (26537, 29, 8); --mousai manteel -- MDEF
INSERT INTO `item_mods` VALUES (26537, 384, 300); --mousai manteel -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26537, 437, 1); --mousai manteel -- THRENODY_EFFECT
INSERT INTO `item_mods` VALUES (25901, 1, 117); --mousai seraweels -- DEF
INSERT INTO `item_mods` VALUES (25901, 2, 136); --mousai seraweels -- HP
INSERT INTO `item_mods` VALUES (25901, 8, 25); --mousai seraweels -- STR
INSERT INTO `item_mods` VALUES (25901, 10, 25); --mousai seraweels -- VIT
INSERT INTO `item_mods` VALUES (25901, 11, 20); --mousai seraweels -- AGI
INSERT INTO `item_mods` VALUES (25901, 12, 35); --mousai seraweels -- INT
INSERT INTO `item_mods` VALUES (25901, 13, 23); --mousai seraweels -- MND
INSERT INTO `item_mods` VALUES (25901, 14, 28); --mousai seraweels -- CHR
INSERT INTO `item_mods` VALUES (25901, 68, 44); --mousai seraweels -- EVA
INSERT INTO `item_mods` VALUES (25901, 31, 137); --mousai seraweels -- MEVA
INSERT INTO `item_mods` VALUES (25901, 29, 8); --mousai seraweels -- MDEF
INSERT INTO `item_mods` VALUES (25901, 384, 500); --mousai seraweels -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25901, 433, 1); --mousai seraweels -- MINNE_EFFECT
INSERT INTO `item_mods` VALUES (25989, 1, 103); --mousai gages +1 -- DEF
INSERT INTO `item_mods` VALUES (25989, 2, 88); --mousai gages +1 -- HP
INSERT INTO `item_mods` VALUES (25989, 8, 8); --mousai gages +1 -- STR
INSERT INTO `item_mods` VALUES (25989, 9, 33); --mousai gages +1 -- DEX
INSERT INTO `item_mods` VALUES (25989, 10, 45); --mousai gages +1 -- VIT
INSERT INTO `item_mods` VALUES (25989, 12, 20); --mousai gages +1 -- INT
INSERT INTO `item_mods` VALUES (25989, 13, 32); --mousai gages +1 -- MND
INSERT INTO `item_mods` VALUES (25989, 14, 38); --mousai gages +1 -- CHR
INSERT INTO `item_mods` VALUES (25989, 68, 47); --mousai gages +1 -- EVA
INSERT INTO `item_mods` VALUES (25989, 31, 101); --mousai gages +1 -- MEVA
INSERT INTO `item_mods` VALUES (25989, 29, 5); --mousai gages +1 -- MDEF
INSERT INTO `item_mods` VALUES (25989, 384, 300); --mousai gages +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25989, 445, 2); --mousai gages +1 -- CAROL_EFFECT
INSERT INTO `item_mods` VALUES (25969, 1, 85); --mousai crackows +1 -- DEF
INSERT INTO `item_mods` VALUES (25969, 2, 99); --mousai crackows +1 -- HP
INSERT INTO `item_mods` VALUES (25969, 8, 10); --mousai crackows +1 -- STR
INSERT INTO `item_mods` VALUES (25969, 9, 16); --mousai crackows +1 -- DEX
INSERT INTO `item_mods` VALUES (25969, 10, 28); --mousai crackows +1 -- VIT
INSERT INTO `item_mods` VALUES (25969, 11, 38); --mousai crackows +1 -- AGI
INSERT INTO `item_mods` VALUES (25969, 13, 16); --mousai crackows +1 -- MND
INSERT INTO `item_mods` VALUES (25969, 14, 45); --mousai crackows +1 -- CHR
INSERT INTO `item_mods` VALUES (25969, 68, 73); --mousai crackows +1 -- EVA
INSERT INTO `item_mods` VALUES (25969, 31, 147); --mousai crackows +1 -- MEVA
INSERT INTO `item_mods` VALUES (25969, 29, 7); --mousai crackows +1 -- MDEF
INSERT INTO `item_mods` VALUES (25969, 384, 300); --mousai crackows +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25969, 439, 2); --mousai crackows +1 -- MAMBO_EFFECT
INSERT INTO `item_mods` VALUES (26538, 1, 145); --mousai manteel +1 -- DEF
INSERT INTO `item_mods` VALUES (26538, 2, 191); --mousai manteel +1 -- HP
INSERT INTO `item_mods` VALUES (26538, 8, 21); --mousai manteel +1 -- STR
INSERT INTO `item_mods` VALUES (26538, 9, 28); --mousai manteel +1 -- DEX
INSERT INTO `item_mods` VALUES (26538, 10, 39); --mousai manteel +1 -- VIT
INSERT INTO `item_mods` VALUES (26538, 11, 24); --mousai manteel +1 -- AGI
INSERT INTO `item_mods` VALUES (26538, 12, 30); --mousai manteel +1 -- INT
INSERT INTO `item_mods` VALUES (26538, 13, 28); --mousai manteel +1 -- MND
INSERT INTO `item_mods` VALUES (26538, 14, 42); --mousai manteel +1 -- CHR
INSERT INTO `item_mods` VALUES (26538, 30, 52); --mousai manteel +1 -- MACC
INSERT INTO `item_mods` VALUES (26538, 68, 65); --mousai manteel +1 -- EVA
INSERT INTO `item_mods` VALUES (26538, 31, 128); --mousai manteel +1 -- MEVA
INSERT INTO `item_mods` VALUES (26538, 29, 9); --mousai manteel +1 -- MDEF
INSERT INTO `item_mods` VALUES (26538, 384, 300); --mousai manteel +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26538, 437, 2); --mousai manteel +1 -- THRENODY_EFFECT
INSERT INTO `item_mods` VALUES (25902, 1, 127); --mousai seraweels +1 -- DEF
INSERT INTO `item_mods` VALUES (25902, 2, 156); --mousai seraweels +1 -- HP
INSERT INTO `item_mods` VALUES (25902, 8, 25); --mousai seraweels +1 -- STR
INSERT INTO `item_mods` VALUES (25902, 10, 30); --mousai seraweels +1 -- VIT
INSERT INTO `item_mods` VALUES (25902, 11, 20); --mousai seraweels +1 -- AGI
INSERT INTO `item_mods` VALUES (25902, 12, 35); --mousai seraweels +1 -- INT
INSERT INTO `item_mods` VALUES (25902, 13, 23); --mousai seraweels +1 -- MND
INSERT INTO `item_mods` VALUES (25902, 14, 33); --mousai seraweels +1 -- CHR
INSERT INTO `item_mods` VALUES (25902, 68, 54); --mousai seraweels +1 -- EVA
INSERT INTO `item_mods` VALUES (25902, 31, 147); --mousai seraweels +1 -- MEVA
INSERT INTO `item_mods` VALUES (25902, 29, 9); --mousai seraweels +1 -- MDEF
INSERT INTO `item_mods` VALUES (25902, 384, 500); --mousai seraweels +1 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (25902, 433, 2); --mousai seraweels +1 -- MINNE_EFFECT
INSERT INTO `item_mods` VALUES (20600, 165, 2); --nibiru knife -- CRITHITRATE
INSERT INTO `item_mods` VALUES (20600, 68, 29); --nibiru knife -- EVA
INSERT INTO `item_mods` VALUES (20600, 11, 5); --nibiru knife -- AGI
INSERT INTO `item_mods` VALUES (20600, 9, 5); --nibiru knife -- DEX
INSERT INTO `item_mods` VALUES (20710, 288, 2); --nibiru blade -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (20710, 25, 7); --nibiru blade -- ACC
INSERT INTO `item_mods` VALUES (20710, 9, 5); --nibiru blade -- DEX
INSERT INTO `item_mods` VALUES (20710, 8, 5); --nibiru blade -- STR
INSERT INTO `item_mods` VALUES (20801, 23, 7); --nibiru tabar -- ATT
INSERT INTO `item_mods` VALUES (20801, 10, 5); --nibiru tabar -- VIT
INSERT INTO `item_mods` VALUES (20801, 8, 5); --nibiru tabar -- STR
INSERT INTO `item_mods` VALUES (20847, 430, 4); --router -- QUAD_ATTACK
INSERT INTO `item_mods` VALUES (20847, 174, 6); --router -- SKILLCHAINBONUS
INSERT INTO `item_mods` VALUES (20847, 23, 40); --router -- ATT
INSERT INTO `item_mods` VALUES (20847, 8, 20); --router -- STR
INSERT INTO `item_mods` VALUES (20848, 161, -300); --nibiru chopper -- DMGPHYS
INSERT INTO `item_mods` VALUES (20848, 23, 10); --nibiru chopper -- ATT
INSERT INTO `item_mods` VALUES (20848, 9, 7); --nibiru chopper -- DEX
INSERT INTO `item_mods` VALUES (20848, 8, 7); --nibiru chopper -- STR
INSERT INTO `item_mods` VALUES (20895, 288, 3); --nibiru sickle -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (20895, 23, 10); --nibiru sickle -- ATT
INSERT INTO `item_mods` VALUES (20895, 12, 7); --nibiru sickle -- INT
INSERT INTO `item_mods` VALUES (20895, 8, 7); --nibiru sickle -- STR
INSERT INTO `item_mods` VALUES (20938, 368, 15); --annealed lance -- REGAIN
INSERT INTO `item_mods` VALUES (20938, 23, 40); --annealed lance -- ATT
INSERT INTO `item_mods` VALUES (20938, 8, 20); --annealed lance -- STR
INSERT INTO `item_mods` VALUES (20939, 384, 200); --nibiru lance -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (20939, 23, 10); --nibiru lance -- ATT
INSERT INTO `item_mods` VALUES (20939, 9, 7); --nibiru lance -- DEX
INSERT INTO `item_mods` VALUES (20939, 8, 7); --nibiru lance -- STR
INSERT INTO `item_mods` VALUES (21092, 374, 10); --nibiru cudgel -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (21092, 311, 124); --nibiru cudgel -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (21092, 30, 7); --nibiru cudgel -- MACC
INSERT INTO `item_mods` VALUES (21092, 28, 16); --nibiru cudgel -- MATT
INSERT INTO `item_mods` VALUES (21092, 13, 11); --nibiru cudgel -- MND
INSERT INTO `item_mods` VALUES (21092, 12, 11); --nibiru cudgel -- INT
INSERT INTO `item_mods` VALUES (21156, 311, 217); --nibiru staff -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (21156, 170, 4); --nibiru staff -- FASTCAST
INSERT INTO `item_mods` VALUES (21156, 28, 38); --nibiru staff -- MATT
INSERT INTO `item_mods` VALUES (21156, 13, 19); --nibiru staff -- MND
INSERT INTO `item_mods` VALUES (21156, 12, 19); --nibiru staff -- INT
INSERT INTO `item_mods` VALUES (21216, 27, -7); --nibiru bow -- ENMITY
INSERT INTO `item_mods` VALUES (21216, 26, 10); --nibiru bow -- RACC
INSERT INTO `item_mods` VALUES (21216, 11, 7); --nibiru bow -- AGI
INSERT INTO `item_mods` VALUES (21216, 8, 7); --nibiru bow -- STR
INSERT INTO `item_mods` VALUES (21273, 420, 20); --nibiru gun -- BARRAGE_ACC
INSERT INTO `item_mods` VALUES (21273, 24, 10); --nibiru gun -- RATT
INSERT INTO `item_mods` VALUES (21273, 11, 7); --nibiru gun -- AGI
INSERT INTO `item_mods` VALUES (21273, 9, 7); --nibiru gun -- DEX
INSERT INTO `item_mods` VALUES (21399, 445, 2); --nibiru harp -- CAROL_EFFECT
INSERT INTO `item_mods` VALUES (21399, 30, 10); --nibiru harp -- MACC
INSERT INTO `item_mods` VALUES (21399, 14, 7); --nibiru harp -- CHR
INSERT INTO `item_mods` VALUES (21413, 5, 30); --clemency grip -- MP
INSERT INTO `item_mods` VALUES (21414, 30, 3); --willpower grip -- MACC
INSERT INTO `item_mods` VALUES (21414, 28, 5); --willpower grip -- MATT
INSERT INTO `item_mods` VALUES (21699, 375, 10); --nibiru faussar -- CURE_POTENCY_RCVD
INSERT INTO `item_mods` VALUES (21699, 23, 10); --nibiru faussar -- ATT
INSERT INTO `item_mods` VALUES (21699, 9, 7); --nibiru faussar -- DEX
INSERT INTO `item_mods` VALUES (21699, 8, 7); --nibiru faussar -- STR
INSERT INTO `item_mods` VALUES (26791, 384, 700); --eschite helm -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26791, 85, 15); --eschite helm -- GAXE
INSERT INTO `item_mods` VALUES (26791, 68, 33); --eschite helm -- EVA
INSERT INTO `item_mods` VALUES (26791, 31, 32); --eschite helm -- MEVA
INSERT INTO `item_mods` VALUES (26791, 30, 20); --eschite helm -- MACC
INSERT INTO `item_mods` VALUES (26791, 29, 2); --eschite helm -- MDEF
INSERT INTO `item_mods` VALUES (26791, 25, 15); --eschite helm -- ACC
INSERT INTO `item_mods` VALUES (26791, 23, 15); --eschite helm -- ATT
INSERT INTO `item_mods` VALUES (26791, 14, 15); --eschite helm -- CHR
INSERT INTO `item_mods` VALUES (26791, 13, 15); --eschite helm -- MND
INSERT INTO `item_mods` VALUES (26791, 12, 15); --eschite helm -- INT
INSERT INTO `item_mods` VALUES (26791, 11, 17); --eschite helm -- AGI
INSERT INTO `item_mods` VALUES (26791, 10, 25); --eschite helm -- VIT
INSERT INTO `item_mods` VALUES (26791, 9, 17); --eschite helm -- DEX
INSERT INTO `item_mods` VALUES (26791, 8, 25); --eschite helm -- STR
INSERT INTO `item_mods` VALUES (26791, 5, 23); --eschite helm -- MP
INSERT INTO `item_mods` VALUES (26791, 2, 41); --eschite helm -- HP
INSERT INTO `item_mods` VALUES (26791, 1, 116); --eschite helm -- DEF
INSERT INTO `item_mods` VALUES (26792, 384, 800); --despair helm -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26792, 68, 36); --despair helm -- EVA
INSERT INTO `item_mods` VALUES (26792, 31, 53); --despair helm -- MEVA
INSERT INTO `item_mods` VALUES (26792, 29, 2); --despair helm -- MDEF
INSERT INTO `item_mods` VALUES (26792, 25, 20); --despair helm -- ACC
INSERT INTO `item_mods` VALUES (26792, 23, 20); --despair helm -- ATT
INSERT INTO `item_mods` VALUES (26792, 14, 20); --despair helm -- CHR
INSERT INTO `item_mods` VALUES (26792, 13, 20); --despair helm -- MND
INSERT INTO `item_mods` VALUES (26792, 12, 20); --despair helm -- INT
INSERT INTO `item_mods` VALUES (26792, 11, 20); --despair helm -- AGI
INSERT INTO `item_mods` VALUES (26792, 10, 20); --despair helm -- VIT
INSERT INTO `item_mods` VALUES (26792, 9, 21); --despair helm -- DEX
INSERT INTO `item_mods` VALUES (26792, 8, 21); --despair helm -- STR
INSERT INTO `item_mods` VALUES (26792, 2, 38); --despair helm -- HP
INSERT INTO `item_mods` VALUES (26792, 1, 113); --despair helm -- DEF
INSERT INTO `item_mods` VALUES (26793, 384, 800); --naga somen -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26793, 163, -3); --naga somen -- DMGMAGIC
INSERT INTO `item_mods` VALUES (26793, 68, 38); --naga somen -- EVA
INSERT INTO `item_mods` VALUES (26793, 31, 43); --naga somen -- MEVA
INSERT INTO `item_mods` VALUES (26793, 29, 4); --naga somen -- MDEF
INSERT INTO `item_mods` VALUES (26793, 25, 18); --naga somen -- ACC
INSERT INTO `item_mods` VALUES (26793, 14, 18); --naga somen -- CHR
INSERT INTO `item_mods` VALUES (26793, 13, 18); --naga somen -- MND
INSERT INTO `item_mods` VALUES (26793, 12, 18); --naga somen -- INT
INSERT INTO `item_mods` VALUES (26793, 11, 19); --naga somen -- AGI
INSERT INTO `item_mods` VALUES (26793, 10, 19); --naga somen -- VIT
INSERT INTO `item_mods` VALUES (26793, 9, 24); --naga somen -- DEX
INSERT INTO `item_mods` VALUES (26793, 8, 17); --naga somen -- STR
INSERT INTO `item_mods` VALUES (26793, 2, 86); --naga somen -- HP
INSERT INTO `item_mods` VALUES (26793, 1, 98); --naga somen -- DEF
INSERT INTO `item_mods` VALUES (26794, 384, 800); --rawhide mask -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26794, 369, 1); --rawhide mask -- REFRESH
INSERT INTO `item_mods` VALUES (26794, 68, 44); --rawhide mask -- EVA
INSERT INTO `item_mods` VALUES (26794, 31, 53); --rawhide mask -- MEVA
INSERT INTO `item_mods` VALUES (26794, 29, 2); --rawhide mask -- MDEF
INSERT INTO `item_mods` VALUES (26794, 23, 18); --rawhide mask -- ATT
INSERT INTO `item_mods` VALUES (26794, 14, 19); --rawhide mask -- CHR
INSERT INTO `item_mods` VALUES (26794, 13, 18); --rawhide mask -- MND
INSERT INTO `item_mods` VALUES (26794, 12, 18); --rawhide mask -- INT
INSERT INTO `item_mods` VALUES (26794, 11, 26); --rawhide mask -- AGI
INSERT INTO `item_mods` VALUES (26794, 10, 18); --rawhide mask -- VIT
INSERT INTO `item_mods` VALUES (26794, 9, 26); --rawhide mask -- DEX
INSERT INTO `item_mods` VALUES (26794, 8, 18); --rawhide mask -- STR
INSERT INTO `item_mods` VALUES (26794, 5, 23); --rawhide mask -- MP
INSERT INTO `item_mods` VALUES (26794, 2, 36); --rawhide mask -- HP
INSERT INTO `item_mods` VALUES (26794, 1, 100); --rawhide mask -- DEF
INSERT INTO `item_mods` VALUES (26795, 384, 800); --pursuers beret -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26795, 105, 15); --pursuers beret -- MARKSMAN
INSERT INTO `item_mods` VALUES (26795, 73, 5); --pursuers beret -- STORETP
INSERT INTO `item_mods` VALUES (26795, 68, 44); --pursuers beret -- EVA
INSERT INTO `item_mods` VALUES (26795, 31, 53); --pursuers beret -- MEVA
INSERT INTO `item_mods` VALUES (26795, 29, 2); --pursuers beret -- MDEF
INSERT INTO `item_mods` VALUES (26795, 24, 23); --pursuers beret -- RATT
INSERT INTO `item_mods` VALUES (26795, 14, 20); --pursuers beret -- CHR
INSERT INTO `item_mods` VALUES (26795, 13, 19); --pursuers beret -- MND
INSERT INTO `item_mods` VALUES (26795, 12, 19); --pursuers beret -- INT
INSERT INTO `item_mods` VALUES (26795, 11, 28); --pursuers beret -- AGI
INSERT INTO `item_mods` VALUES (26795, 10, 16); --pursuers beret -- VIT
INSERT INTO `item_mods` VALUES (26795, 9, 23); --pursuers beret -- DEX
INSERT INTO `item_mods` VALUES (26795, 8, 22); --pursuers beret -- STR
INSERT INTO `item_mods` VALUES (26795, 2, 36); --pursuers beret -- HP
INSERT INTO `item_mods` VALUES (26795, 1, 97); --pursuers beret -- DEF
INSERT INTO `item_mods` VALUES (26796, 384, 600); --psycloth tiara -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26796, 117, 15); --psycloth tiara -- SUMMONING
INSERT INTO `item_mods` VALUES (26796, 68, 36); --psycloth tiara -- EVA
INSERT INTO `item_mods` VALUES (26796, 31, 75); --psycloth tiara -- MEVA
INSERT INTO `item_mods` VALUES (26796, 29, 5); --psycloth tiara -- MDEF
INSERT INTO `item_mods` VALUES (26796, 27, -6); --psycloth tiara -- ENMITY
INSERT INTO `item_mods` VALUES (26796, 14, 23); --psycloth tiara -- CHR
INSERT INTO `item_mods` VALUES (26796, 13, 26); --psycloth tiara -- MND
INSERT INTO `item_mods` VALUES (26796, 12, 26); --psycloth tiara -- INT
INSERT INTO `item_mods` VALUES (26796, 11, 18); --psycloth tiara -- AGI
INSERT INTO `item_mods` VALUES (26796, 10, 18); --psycloth tiara -- VIT
INSERT INTO `item_mods` VALUES (26796, 9, 18); --psycloth tiara -- DEX
INSERT INTO `item_mods` VALUES (26796, 8, 18); --psycloth tiara -- STR
INSERT INTO `item_mods` VALUES (26796, 4, 32); --psycloth tiara -- CONVMPTOHP
INSERT INTO `item_mods` VALUES (26796, 2, 36); --psycloth tiara -- HP
INSERT INTO `item_mods` VALUES (26796, 1, 94); --psycloth tiara -- DEF
INSERT INTO `item_mods` VALUES (26797, 384, 600); --vanya hood -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26797, 374, 10); --vanya hood -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (26797, 296, 6); --vanya hood -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (26797, 163, -2); --vanya hood -- DMGMAGIC
INSERT INTO `item_mods` VALUES (26797, 68, 36); --vanya hood -- EVA
INSERT INTO `item_mods` VALUES (26797, 31, 75); --vanya hood -- MEVA
INSERT INTO `item_mods` VALUES (26797, 29, 5); --vanya hood -- MDEF
INSERT INTO `item_mods` VALUES (26797, 14, 27); --vanya hood -- CHR
INSERT INTO `item_mods` VALUES (26797, 13, 27); --vanya hood -- MND
INSERT INTO `item_mods` VALUES (26797, 12, 23); --vanya hood -- INT
INSERT INTO `item_mods` VALUES (26797, 11, 18); --vanya hood -- AGI
INSERT INTO `item_mods` VALUES (26797, 10, 18); --vanya hood -- VIT
INSERT INTO `item_mods` VALUES (26797, 9, 18); --vanya hood -- DEX
INSERT INTO `item_mods` VALUES (26797, 8, 18); --vanya hood -- STR
INSERT INTO `item_mods` VALUES (26797, 5, 32); --vanya hood -- MP
INSERT INTO `item_mods` VALUES (26797, 2, 36); --vanya hood -- HP
INSERT INTO `item_mods` VALUES (26797, 1, 99); --vanya hood -- DEF
INSERT INTO `item_mods` VALUES (26947, 384, 300); --eschite breastplate -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26947, 68, 41); --eschite breastplate -- EVA
INSERT INTO `item_mods` VALUES (26947, 31, 48); --eschite breastplate -- MEVA
INSERT INTO `item_mods` VALUES (26947, 29, 4); --eschite breastplate -- MDEF
INSERT INTO `item_mods` VALUES (26947, 23, 20); --eschite breastplate -- ATT
INSERT INTO `item_mods` VALUES (26947, 14, 19); --eschite breastplate -- CHR
INSERT INTO `item_mods` VALUES (26947, 13, 19); --eschite breastplate -- MND
INSERT INTO `item_mods` VALUES (26947, 12, 19); --eschite breastplate -- INT
INSERT INTO `item_mods` VALUES (26947, 11, 19); --eschite breastplate -- AGI
INSERT INTO `item_mods` VALUES (26947, 10, 34); --eschite breastplate -- VIT
INSERT INTO `item_mods` VALUES (26947, 9, 19); --eschite breastplate -- DEX
INSERT INTO `item_mods` VALUES (26947, 8, 34); --eschite breastplate -- STR
INSERT INTO `item_mods` VALUES (26947, 5, 35); --eschite breastplate -- MP
INSERT INTO `item_mods` VALUES (26947, 2, 153); --eschite breastplate -- HP
INSERT INTO `item_mods` VALUES (26947, 1, 148); --eschite breastplate -- DEF
INSERT INTO `item_mods` VALUES (26948, 384, 400); --despair mail -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26948, 68, 44); --despair mail -- EVA
INSERT INTO `item_mods` VALUES (26948, 31, 64); --despair mail -- MEVA
INSERT INTO `item_mods` VALUES (26948, 29, 5); --despair mail -- MDEF
INSERT INTO `item_mods` VALUES (26948, 25, 23); --despair mail -- ACC
INSERT INTO `item_mods` VALUES (26948, 14, 23); --despair mail -- CHR
INSERT INTO `item_mods` VALUES (26948, 13, 23); --despair mail -- MND
INSERT INTO `item_mods` VALUES (26948, 12, 23); --despair mail -- INT
INSERT INTO `item_mods` VALUES (26948, 11, 23); --despair mail -- AGI
INSERT INTO `item_mods` VALUES (26948, 10, 30); --despair mail -- VIT
INSERT INTO `item_mods` VALUES (26948, 9, 29); --despair mail -- DEX
INSERT INTO `item_mods` VALUES (26948, 8, 30); --despair mail -- STR
INSERT INTO `item_mods` VALUES (26948, 2, 121); --despair mail -- HP
INSERT INTO `item_mods` VALUES (26948, 1, 143); --despair mail -- DEF
INSERT INTO `item_mods` VALUES (26949, 384, 400); --naga samue -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26949, 73, 5); --naga samue -- STORETP
INSERT INTO `item_mods` VALUES (26949, 68, 52); --naga samue -- EVA
INSERT INTO `item_mods` VALUES (26949, 31, 53); --naga samue -- MEVA
INSERT INTO `item_mods` VALUES (26949, 29, 4); --naga samue -- MDEF
INSERT INTO `item_mods` VALUES (26949, 23, 15); --naga samue -- ATT
INSERT INTO `item_mods` VALUES (26949, 14, 26); --naga samue -- CHR
INSERT INTO `item_mods` VALUES (26949, 13, 26); --naga samue -- MND
INSERT INTO `item_mods` VALUES (26949, 12, 26); --naga samue -- INT
INSERT INTO `item_mods` VALUES (26949, 11, 27); --naga samue -- AGI
INSERT INTO `item_mods` VALUES (26949, 10, 23); --naga samue -- VIT
INSERT INTO `item_mods` VALUES (26949, 9, 30); --naga samue -- DEX
INSERT INTO `item_mods` VALUES (26949, 8, 29); --naga samue -- STR
INSERT INTO `item_mods` VALUES (26949, 2, 119); --naga samue -- HP
INSERT INTO `item_mods` VALUES (26949, 1, 124); --naga samue -- DEF
INSERT INTO `item_mods` VALUES (26950, 384, 400); --rawhide vest -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26950, 302, 2); --rawhide vest -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (26950, 68, 49); --rawhide vest -- EVA
INSERT INTO `item_mods` VALUES (26950, 31, 64); --rawhide vest -- MEVA
INSERT INTO `item_mods` VALUES (26950, 29, 6); --rawhide vest -- MDEF
INSERT INTO `item_mods` VALUES (26950, 28, 25); --rawhide vest -- MATT
INSERT INTO `item_mods` VALUES (26950, 25, 15); --rawhide vest -- ACC
INSERT INTO `item_mods` VALUES (26950, 23, 15); --rawhide vest -- ATT
INSERT INTO `item_mods` VALUES (26950, 14, 25); --rawhide vest -- CHR
INSERT INTO `item_mods` VALUES (26950, 13, 25); --rawhide vest -- MND
INSERT INTO `item_mods` VALUES (26950, 12, 25); --rawhide vest -- INT
INSERT INTO `item_mods` VALUES (26950, 11, 30); --rawhide vest -- AGI
INSERT INTO `item_mods` VALUES (26950, 10, 26); --rawhide vest -- VIT
INSERT INTO `item_mods` VALUES (26950, 9, 35); --rawhide vest -- DEX
INSERT INTO `item_mods` VALUES (26950, 8, 30); --rawhide vest -- STR
INSERT INTO `item_mods` VALUES (26950, 5, 44); --rawhide vest -- MP
INSERT INTO `item_mods` VALUES (26950, 2, 59); --rawhide vest -- HP
INSERT INTO `item_mods` VALUES (26950, 1, 130); --rawhide vest -- DEF
INSERT INTO `item_mods` VALUES (26951, 384, 400); --pursuers doublet -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26951, 73, 6); --pursuers doublet -- STORETP
INSERT INTO `item_mods` VALUES (26951, 68, 49); --pursuers doublet -- EVA
INSERT INTO `item_mods` VALUES (26951, 31, 64); --pursuers doublet -- MEVA
INSERT INTO `item_mods` VALUES (26951, 29, 6); --pursuers doublet -- MDEF
INSERT INTO `item_mods` VALUES (26951, 26, 25); --pursuers doublet -- RACC
INSERT INTO `item_mods` VALUES (26951, 24, 25); --pursuers doublet -- RATT
INSERT INTO `item_mods` VALUES (26951, 14, 23); --pursuers doublet -- CHR
INSERT INTO `item_mods` VALUES (26951, 13, 23); --pursuers doublet -- MND
INSERT INTO `item_mods` VALUES (26951, 12, 23); --pursuers doublet -- INT
INSERT INTO `item_mods` VALUES (26951, 11, 30); --pursuers doublet -- AGI
INSERT INTO `item_mods` VALUES (26951, 10, 21); --pursuers doublet -- VIT
INSERT INTO `item_mods` VALUES (26951, 9, 29); --pursuers doublet -- DEX
INSERT INTO `item_mods` VALUES (26951, 8, 24); --pursuers doublet -- STR
INSERT INTO `item_mods` VALUES (26951, 5, 44); --pursuers doublet -- MP
INSERT INTO `item_mods` VALUES (26951, 2, 109); --pursuers doublet -- HP
INSERT INTO `item_mods` VALUES (26951, 1, 128); --pursuers doublet -- DEF
INSERT INTO `item_mods` VALUES (26952, 384, 300); --psycloth vest -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26952, 116, 21); --psycloth vest -- DARK
INSERT INTO `item_mods` VALUES (26952, 68, 41); --psycloth vest -- EVA
INSERT INTO `item_mods` VALUES (26952, 31, 80); --psycloth vest -- MEVA
INSERT INTO `item_mods` VALUES (26952, 29, 6); --psycloth vest -- MDEF
INSERT INTO `item_mods` VALUES (26952, 28, 25); --psycloth vest -- MATT
INSERT INTO `item_mods` VALUES (26952, 27, -7); --psycloth vest -- ENMITY
INSERT INTO `item_mods` VALUES (26952, 14, 29); --psycloth vest -- CHR
INSERT INTO `item_mods` VALUES (26952, 13, 29); --psycloth vest -- MND
INSERT INTO `item_mods` VALUES (26952, 12, 32); --psycloth vest -- INT
INSERT INTO `item_mods` VALUES (26952, 11, 21); --psycloth vest -- AGI
INSERT INTO `item_mods` VALUES (26952, 10, 21); --psycloth vest -- VIT
INSERT INTO `item_mods` VALUES (26952, 9, 21); --psycloth vest -- DEX
INSERT INTO `item_mods` VALUES (26952, 8, 21); --psycloth vest -- STR
INSERT INTO `item_mods` VALUES (26952, 5, 59); --psycloth vest -- MP
INSERT INTO `item_mods` VALUES (26952, 2, 54); --psycloth vest -- HP
INSERT INTO `item_mods` VALUES (26952, 1, 123); --psycloth vest -- DEF
INSERT INTO `item_mods` VALUES (26953, 384, 300); --vanya robe -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26953, 160, -1); --vanya robe -- DMG
INSERT INTO `item_mods` VALUES (26953, 114, 20); --vanya robe -- ENFEEBLE
INSERT INTO `item_mods` VALUES (26953, 111, 20); --vanya robe -- DIVINE
INSERT INTO `item_mods` VALUES (26953, 68, 41); --vanya robe -- EVA
INSERT INTO `item_mods` VALUES (26953, 31, 80); --vanya robe -- MEVA
INSERT INTO `item_mods` VALUES (26953, 30, 21); --vanya robe -- MACC
INSERT INTO `item_mods` VALUES (26953, 29, 6); --vanya robe -- MDEF
INSERT INTO `item_mods` VALUES (26953, 14, 36); --vanya robe -- CHR
INSERT INTO `item_mods` VALUES (26953, 13, 36); --vanya robe -- MND
INSERT INTO `item_mods` VALUES (26953, 12, 31); --vanya robe -- INT
INSERT INTO `item_mods` VALUES (26953, 11, 23); --vanya robe -- AGI
INSERT INTO `item_mods` VALUES (26953, 10, 23); --vanya robe -- VIT
INSERT INTO `item_mods` VALUES (26953, 9, 23); --vanya robe -- DEX
INSERT INTO `item_mods` VALUES (26953, 8, 23); --vanya robe -- STR
INSERT INTO `item_mods` VALUES (26953, 5, 59); --vanya robe -- MP
INSERT INTO `item_mods` VALUES (26953, 2, 54); --vanya robe -- HP
INSERT INTO `item_mods` VALUES (26953, 1, 127); --vanya robe -- DEF
INSERT INTO `item_mods` VALUES (26958, 384, 400); --swellers harness -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26958, 291, 5); --swellers harness -- COUNTER
INSERT INTO `item_mods` VALUES (26958, 107, 20); --swellers harness -- GUARD
INSERT INTO `item_mods` VALUES (26958, 68, 52); --swellers harness -- EVA
INSERT INTO `item_mods` VALUES (26958, 31, 53); --swellers harness -- MEVA
INSERT INTO `item_mods` VALUES (26958, 29, 4); --swellers harness -- MDEF
INSERT INTO `item_mods` VALUES (26958, 23, 25); --swellers harness -- ATT
INSERT INTO `item_mods` VALUES (26958, 14, 24); --swellers harness -- CHR
INSERT INTO `item_mods` VALUES (26958, 13, 24); --swellers harness -- MND
INSERT INTO `item_mods` VALUES (26958, 12, 24); --swellers harness -- INT
INSERT INTO `item_mods` VALUES (26958, 11, 25); --swellers harness -- AGI
INSERT INTO `item_mods` VALUES (26958, 10, 21); --swellers harness -- VIT
INSERT INTO `item_mods` VALUES (26958, 9, 25); --swellers harness -- DEX
INSERT INTO `item_mods` VALUES (26958, 8, 37); --swellers harness -- STR
INSERT INTO `item_mods` VALUES (26958, 2, 59); --swellers harness -- HP
INSERT INTO `item_mods` VALUES (26958, 1, 129); --swellers harness -- DEF
INSERT INTO `item_mods` VALUES (26959, 384, 300); --kubira meikogai -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26959, 161, -1000); --kubira meikogai -- DMGPHYS
INSERT INTO `item_mods` VALUES (26959, 68, 36); --kubira meikogai -- EVA
INSERT INTO `item_mods` VALUES (26959, 31, 69); --kubira meikogai -- MEVA
INSERT INTO `item_mods` VALUES (26959, 29, 4); --kubira meikogai -- MDEF
INSERT INTO `item_mods` VALUES (26959, 25, 25); --kubira meikogai -- ACC
INSERT INTO `item_mods` VALUES (26959, 23, 25); --kubira meikogai -- ATT
INSERT INTO `item_mods` VALUES (26959, 14, 16); --kubira meikogai -- CHR
INSERT INTO `item_mods` VALUES (26959, 13, 16); --kubira meikogai -- MND
INSERT INTO `item_mods` VALUES (26959, 12, 16); --kubira meikogai -- INT
INSERT INTO `item_mods` VALUES (26959, 11, 17); --kubira meikogai -- AGI
INSERT INTO `item_mods` VALUES (26959, 10, 32); --kubira meikogai -- VIT
INSERT INTO `item_mods` VALUES (26959, 9, 17); --kubira meikogai -- DEX
INSERT INTO `item_mods` VALUES (26959, 8, 29); --kubira meikogai -- STR
INSERT INTO `item_mods` VALUES (26959, 5, 59); --kubira meikogai -- MP
INSERT INTO `item_mods` VALUES (26959, 2, 166); --kubira meikogai -- HP
INSERT INTO `item_mods` VALUES (26959, 1, 153); --kubira meikogai -- DEF
INSERT INTO `item_mods` VALUES (26960, 384, 300); --annointed kalasiris -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26960, 374, 10); --annointed kalasiris -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (26960, 369, 2); --annointed kalasiris -- REFRESH
INSERT INTO `item_mods` VALUES (26960, 68, 41); --annointed kalasiris -- EVA
INSERT INTO `item_mods` VALUES (26960, 31, 80); --annointed kalasiris -- MEVA
INSERT INTO `item_mods` VALUES (26960, 30, 25); --annointed kalasiris -- MACC
INSERT INTO `item_mods` VALUES (26960, 29, 7); --annointed kalasiris -- MDEF
INSERT INTO `item_mods` VALUES (26960, 14, 29); --annointed kalasiris -- CHR
INSERT INTO `item_mods` VALUES (26960, 13, 33); --annointed kalasiris -- MND
INSERT INTO `item_mods` VALUES (26960, 12, 30); --annointed kalasiris -- INT
INSERT INTO `item_mods` VALUES (26960, 11, 20); --annointed kalasiris -- AGI
INSERT INTO `item_mods` VALUES (26960, 10, 20); --annointed kalasiris -- VIT
INSERT INTO `item_mods` VALUES (26960, 9, 20); --annointed kalasiris -- DEX
INSERT INTO `item_mods` VALUES (26960, 8, 20); --annointed kalasiris -- STR
INSERT INTO `item_mods` VALUES (26960, 5, 52); --annointed kalasiris -- MP
INSERT INTO `item_mods` VALUES (26960, 2, 52); --annointed kalasiris -- HP
INSERT INTO `item_mods` VALUES (26960, 1, 127); --annointed kalasiris -- DEF
INSERT INTO `item_mods` VALUES (26961, 384, 300); --makora meikogai -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26961, 68, 44); --makora meikogai -- EVA
INSERT INTO `item_mods` VALUES (26961, 31, 59); --makora meikogai -- MEVA
INSERT INTO `item_mods` VALUES (26961, 29, 4); --makora meikogai -- MDEF
INSERT INTO `item_mods` VALUES (26961, 28, 10); --makora meikogai -- MATT
INSERT INTO `item_mods` VALUES (26961, 25, 15); --makora meikogai -- ACC
INSERT INTO `item_mods` VALUES (26961, 23, 15); --makora meikogai -- ATT
INSERT INTO `item_mods` VALUES (26961, 14, 19); --makora meikogai -- CHR
INSERT INTO `item_mods` VALUES (26961, 13, 19); --makora meikogai -- MND
INSERT INTO `item_mods` VALUES (26961, 12, 19); --makora meikogai -- INT
INSERT INTO `item_mods` VALUES (26961, 11, 19); --makora meikogai -- AGI
INSERT INTO `item_mods` VALUES (26961, 10, 36); --makora meikogai -- VIT
INSERT INTO `item_mods` VALUES (26961, 9, 32); --makora meikogai -- DEX
INSERT INTO `item_mods` VALUES (26961, 8, 36); --makora meikogai -- STR
INSERT INTO `item_mods` VALUES (26961, 2, 66); --makora meikogai -- HP
INSERT INTO `item_mods` VALUES (26961, 1, 144); --makora meikogai -- DEF
INSERT INTO `item_mods` VALUES (26962, 421, 5); --enforcers harness -- CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (26962, 384, 400); --enforcers harness -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (26962, 165, 4); --enforcers harness -- CRITHITRATE
INSERT INTO `item_mods` VALUES (26962, 68, 55); --enforcers harness -- EVA
INSERT INTO `item_mods` VALUES (26962, 31, 69); --enforcers harness -- MEVA
INSERT INTO `item_mods` VALUES (26962, 29, 6); --enforcers harness -- MDEF
INSERT INTO `item_mods` VALUES (26962, 14, 21); --enforcers harness -- CHR
INSERT INTO `item_mods` VALUES (26962, 13, 21); --enforcers harness -- MND
INSERT INTO `item_mods` VALUES (26962, 12, 21); --enforcers harness -- INT
INSERT INTO `item_mods` VALUES (26962, 11, 28); --enforcers harness -- AGI
INSERT INTO `item_mods` VALUES (26962, 10, 24); --enforcers harness -- VIT
INSERT INTO `item_mods` VALUES (26962, 9, 42); --enforcers harness -- DEX
INSERT INTO `item_mods` VALUES (26962, 8, 25); --enforcers harness -- STR
INSERT INTO `item_mods` VALUES (26962, 2, 63); --enforcers harness -- HP
INSERT INTO `item_mods` VALUES (26962, 1, 135); --enforcers harness -- DEF
INSERT INTO `item_mods` VALUES (27097, 384, 400); --eschite gauntlets -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27097, 111, 20); --eschite gauntlets -- DIVINE
INSERT INTO `item_mods` VALUES (27097, 73, 3); --eschite gauntlets -- STORETP
INSERT INTO `item_mods` VALUES (27097, 68, 22); --eschite gauntlets -- EVA
INSERT INTO `item_mods` VALUES (27097, 31, 26); --eschite gauntlets -- MEVA
INSERT INTO `item_mods` VALUES (27097, 29, 1); --eschite gauntlets -- MDEF
INSERT INTO `item_mods` VALUES (27097, 23, 22); --eschite gauntlets -- ATT
INSERT INTO `item_mods` VALUES (27097, 14, 19); --eschite gauntlets -- CHR
INSERT INTO `item_mods` VALUES (27097, 13, 25); --eschite gauntlets -- MND
INSERT INTO `item_mods` VALUES (27097, 12, 8); --eschite gauntlets -- INT
INSERT INTO `item_mods` VALUES (27097, 10, 33); --eschite gauntlets -- VIT
INSERT INTO `item_mods` VALUES (27097, 9, 29); --eschite gauntlets -- DEX
INSERT INTO `item_mods` VALUES (27097, 8, 12); --eschite gauntlets -- STR
INSERT INTO `item_mods` VALUES (27097, 2, 29); --eschite gauntlets -- HP
INSERT INTO `item_mods` VALUES (27097, 1, 104); --eschite gauntlets -- DEF
INSERT INTO `item_mods` VALUES (27098, 384, 500); --despair finger gauntlets -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27098, 68, 22); --despair finger gauntlets -- EVA
INSERT INTO `item_mods` VALUES (27098, 31, 43); --despair finger gauntlets -- MEVA
INSERT INTO `item_mods` VALUES (27098, 29, 2); --despair finger gauntlets -- MDEF
INSERT INTO `item_mods` VALUES (27098, 25, 18); --despair finger gauntlets -- ACC
INSERT INTO `item_mods` VALUES (27098, 23, 18); --despair finger gauntlets -- ATT
INSERT INTO `item_mods` VALUES (27098, 14, 21); --despair finger gauntlets -- CHR
INSERT INTO `item_mods` VALUES (27098, 13, 31); --despair finger gauntlets -- MND
INSERT INTO `item_mods` VALUES (27098, 12, 16); --despair finger gauntlets -- INT
INSERT INTO `item_mods` VALUES (27098, 11, 8); --despair finger gauntlets -- AGI
INSERT INTO `item_mods` VALUES (27098, 10, 34); --despair finger gauntlets -- VIT
INSERT INTO `item_mods` VALUES (27098, 9, 34); --despair finger gauntlets -- DEX
INSERT INTO `item_mods` VALUES (27098, 8, 15); --despair finger gauntlets -- STR
INSERT INTO `item_mods` VALUES (27098, 2, 57); --despair finger gauntlets -- HP
INSERT INTO `item_mods` VALUES (27098, 1, 99); --despair finger gauntlets -- DEF
INSERT INTO `item_mods` VALUES (27099, 384, 500); --naga tekko -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27099, 160, -2); --naga tekko -- DMG
INSERT INTO `item_mods` VALUES (27099, 68, 22); --naga tekko -- EVA
INSERT INTO `item_mods` VALUES (27099, 31, 26); --naga tekko -- MEVA
INSERT INTO `item_mods` VALUES (27099, 29, 1); --naga tekko -- MDEF
INSERT INTO `item_mods` VALUES (27099, 14, 18); --naga tekko -- CHR
INSERT INTO `item_mods` VALUES (27099, 13, 30); --naga tekko -- MND
INSERT INTO `item_mods` VALUES (27099, 12, 12); --naga tekko -- INT
INSERT INTO `item_mods` VALUES (27099, 11, 8); --naga tekko -- AGI
INSERT INTO `item_mods` VALUES (27099, 10, 34); --naga tekko -- VIT
INSERT INTO `item_mods` VALUES (27099, 9, 36); --naga tekko -- DEX
INSERT INTO `item_mods` VALUES (27099, 8, 16); --naga tekko -- STR
INSERT INTO `item_mods` VALUES (27099, 2, 65); --naga tekko -- HP
INSERT INTO `item_mods` VALUES (27099, 1, 83); --naga tekko -- DEF
INSERT INTO `item_mods` VALUES (27100, 384, 500); --rawhide gloves -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27100, 168, 15); --rawhide gloves -- SPELLINTERRUPT
INSERT INTO `item_mods` VALUES (27100, 122, 10); --rawhide gloves -- BLUE
INSERT INTO `item_mods` VALUES (27100, 68, 24); --rawhide gloves -- EVA
INSERT INTO `item_mods` VALUES (27100, 31, 37); --rawhide gloves -- MEVA
INSERT INTO `item_mods` VALUES (27100, 30, 20); --rawhide gloves -- MACC
INSERT INTO `item_mods` VALUES (27100, 29, 2); --rawhide gloves -- MDEF
INSERT INTO `item_mods` VALUES (27100, 25, 20); --rawhide gloves -- ACC
INSERT INTO `item_mods` VALUES (27100, 14, 19); --rawhide gloves -- CHR
INSERT INTO `item_mods` VALUES (27100, 13, 32); --rawhide gloves -- MND
INSERT INTO `item_mods` VALUES (27100, 12, 14); --rawhide gloves -- INT
INSERT INTO `item_mods` VALUES (27100, 11, 7); --rawhide gloves -- AGI
INSERT INTO `item_mods` VALUES (27100, 10, 34); --rawhide gloves -- VIT
INSERT INTO `item_mods` VALUES (27100, 9, 41); --rawhide gloves -- DEX
INSERT INTO `item_mods` VALUES (27100, 8, 13); --rawhide gloves -- STR
INSERT INTO `item_mods` VALUES (27100, 2, 25); --rawhide gloves -- HP
INSERT INTO `item_mods` VALUES (27100, 1, 90); --rawhide gloves -- DEF
INSERT INTO `item_mods` VALUES (27101, 384, 500); --pursuers cuffs -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27101, 68, 24); --pursuers cuffs -- EVA
INSERT INTO `item_mods` VALUES (27101, 31, 37); --pursuers cuffs -- MEVA
INSERT INTO `item_mods` VALUES (27101, 29, 2); --pursuers cuffs -- MDEF
INSERT INTO `item_mods` VALUES (27101, 28, 20); --pursuers cuffs -- MATT
INSERT INTO `item_mods` VALUES (27101, 27, -7); --pursuers cuffs -- ENMITY
INSERT INTO `item_mods` VALUES (27101, 24, 20); --pursuers cuffs -- RATT
INSERT INTO `item_mods` VALUES (27101, 14, 17); --pursuers cuffs -- CHR
INSERT INTO `item_mods` VALUES (27101, 13, 30); --pursuers cuffs -- MND
INSERT INTO `item_mods` VALUES (27101, 12, 12); --pursuers cuffs -- INT
INSERT INTO `item_mods` VALUES (27101, 11, 17); --pursuers cuffs -- AGI
INSERT INTO `item_mods` VALUES (27101, 10, 29); --pursuers cuffs -- VIT
INSERT INTO `item_mods` VALUES (27101, 9, 35); --pursuers cuffs -- DEX
INSERT INTO `item_mods` VALUES (27101, 8, 11); --pursuers cuffs -- STR
INSERT INTO `item_mods` VALUES (27101, 2, 25); --pursuers cuffs -- HP
INSERT INTO `item_mods` VALUES (27101, 1, 88); --pursuers cuffs -- DEF
INSERT INTO `item_mods` VALUES (27102, 384, 300); --psycloth manillas -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27102, 115, 20); --psycloth manillas -- ELEM
INSERT INTO `item_mods` VALUES (27102, 68, 22); --psycloth manillas -- EVA
INSERT INTO `item_mods` VALUES (27102, 31, 37); --psycloth manillas -- MEVA
INSERT INTO `item_mods` VALUES (27102, 30, 17); --psycloth manillas -- MACC
INSERT INTO `item_mods` VALUES (27102, 29, 3); --psycloth manillas -- MDEF
INSERT INTO `item_mods` VALUES (27102, 28, 17); --psycloth manillas -- MATT
INSERT INTO `item_mods` VALUES (27102, 14, 19); --psycloth manillas -- CHR
INSERT INTO `item_mods` VALUES (27102, 13, 33); --psycloth manillas -- MND
INSERT INTO `item_mods` VALUES (27102, 12, 25); --psycloth manillas -- INT
INSERT INTO `item_mods` VALUES (27102, 11, 5); --psycloth manillas -- AGI
INSERT INTO `item_mods` VALUES (27102, 10, 25); --psycloth manillas -- VIT
INSERT INTO `item_mods` VALUES (27102, 9, 28); --psycloth manillas -- DEX
INSERT INTO `item_mods` VALUES (27102, 8, 6); --psycloth manillas -- STR
INSERT INTO `item_mods` VALUES (27102, 5, 14); --psycloth manillas -- MP
INSERT INTO `item_mods` VALUES (27102, 2, 22); --psycloth manillas -- HP
INSERT INTO `item_mods` VALUES (27102, 1, 81); --psycloth manillas -- DEF
INSERT INTO `item_mods` VALUES (27103, 167, 300); --vanya cuffs -- HASTE_MAGIC
INSERT INTO `item_mods` VALUES (27103, 119, 15); --vanya cuffs -- SINGING
INSERT INTO `item_mods` VALUES (27103, 68, 22); --vanya cuffs -- EVA
INSERT INTO `item_mods` VALUES (27103, 31, 37); --vanya cuffs -- MEVA
INSERT INTO `item_mods` VALUES (27103, 29, 3); --vanya cuffs -- MDEF
INSERT INTO `item_mods` VALUES (27103, 14, 28); --vanya cuffs -- CHR
INSERT INTO `item_mods` VALUES (27103, 13, 33); --vanya cuffs -- MND
INSERT INTO `item_mods` VALUES (27103, 12, 19); --vanya cuffs -- INT
INSERT INTO `item_mods` VALUES (27103, 11, 5); --vanya cuffs -- AGI
INSERT INTO `item_mods` VALUES (27103, 10, 25); --vanya cuffs -- VIT
INSERT INTO `item_mods` VALUES (27103, 9, 28); --vanya cuffs -- DEX
INSERT INTO `item_mods` VALUES (27103, 8, 6); --vanya cuffs -- STR
INSERT INTO `item_mods` VALUES (27103, 5, 44); --vanya cuffs -- MP
INSERT INTO `item_mods` VALUES (27103, 2, 22); --vanya cuffs -- HP
INSERT INTO `item_mods` VALUES (27103, 1, 86); --vanya cuffs -- DEF
INSERT INTO `item_mods` VALUES (27104, 384, 300); --shriekers cuffs -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27104, 296, 7); --shriekers cuffs -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (27104, 244, 25); --shriekers cuffs -- SILENCERES
INSERT INTO `item_mods` VALUES (27104, 68, 22); --shriekers cuffs -- EVA
INSERT INTO `item_mods` VALUES (27104, 31, 57); --shriekers cuffs -- MEVA
INSERT INTO `item_mods` VALUES (27104, 29, 3); --shriekers cuffs -- MDEF
INSERT INTO `item_mods` VALUES (27104, 14, 19); --shriekers cuffs -- CHR
INSERT INTO `item_mods` VALUES (27104, 13, 33); --shriekers cuffs -- MND
INSERT INTO `item_mods` VALUES (27104, 12, 19); --shriekers cuffs -- INT
INSERT INTO `item_mods` VALUES (27104, 11, 5); --shriekers cuffs -- AGI
INSERT INTO `item_mods` VALUES (27104, 10, 25); --shriekers cuffs -- VIT
INSERT INTO `item_mods` VALUES (27104, 9, 28); --shriekers cuffs -- DEX
INSERT INTO `item_mods` VALUES (27104, 8, 6); --shriekers cuffs -- STR
INSERT INTO `item_mods` VALUES (27104, 5, 59); --shriekers cuffs -- MP
INSERT INTO `item_mods` VALUES (27104, 2, 22); --shriekers cuffs -- HP
INSERT INTO `item_mods` VALUES (27104, 1, 89); --shriekers cuffs -- DEF
INSERT INTO `item_mods` VALUES (27282, 384, 500); --eschite cuisses -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27282, 116, 20); --eschite cuisses -- DARK
INSERT INTO `item_mods` VALUES (27282, 68, 22); --eschite cuisses -- EVA
INSERT INTO `item_mods` VALUES (27282, 31, 64); --eschite cuisses -- MEVA
INSERT INTO `item_mods` VALUES (27282, 30, 23); --eschite cuisses -- MACC
INSERT INTO `item_mods` VALUES (27282, 29, 3); --eschite cuisses -- MDEF
INSERT INTO `item_mods` VALUES (27282, 25, 23); --eschite cuisses -- ACC
INSERT INTO `item_mods` VALUES (27282, 14, 10); --eschite cuisses -- CHR
INSERT INTO `item_mods` VALUES (27282, 13, 12); --eschite cuisses -- MND
INSERT INTO `item_mods` VALUES (27282, 12, 25); --eschite cuisses -- INT
INSERT INTO `item_mods` VALUES (27282, 11, 16); --eschite cuisses -- AGI
INSERT INTO `item_mods` VALUES (27282, 10, 21); --eschite cuisses -- VIT
INSERT INTO `item_mods` VALUES (27282, 8, 35); --eschite cuisses -- STR
INSERT INTO `item_mods` VALUES (27282, 4, 60); --eschite cuisses -- CONVMPTOHP
INSERT INTO `item_mods` VALUES (27282, 2, 52); --eschite cuisses -- HP
INSERT INTO `item_mods` VALUES (27282, 1, 129); --eschite cuisses -- DEF
INSERT INTO `item_mods` VALUES (27283, 384, 600); --despair cuisses -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27283, 68, 27); --despair cuisses -- EVA
INSERT INTO `item_mods` VALUES (27283, 31, 80); --despair cuisses -- MEVA
INSERT INTO `item_mods` VALUES (27283, 29, 4); --despair cuisses -- MDEF
INSERT INTO `item_mods` VALUES (27283, 27, 4); --despair cuisses -- ENMITY
INSERT INTO `item_mods` VALUES (27283, 23, 23); --despair cuisses -- ATT
INSERT INTO `item_mods` VALUES (27283, 14, 16); --despair cuisses -- CHR
INSERT INTO `item_mods` VALUES (27283, 13, 16); --despair cuisses -- MND
INSERT INTO `item_mods` VALUES (27283, 12, 29); --despair cuisses -- INT
INSERT INTO `item_mods` VALUES (27283, 11, 17); --despair cuisses -- AGI
INSERT INTO `item_mods` VALUES (27283, 10, 21); --despair cuisses -- VIT
INSERT INTO `item_mods` VALUES (27283, 8, 34); --despair cuisses -- STR
INSERT INTO `item_mods` VALUES (27283, 2, 50); --despair cuisses -- HP
INSERT INTO `item_mods` VALUES (27283, 1, 126); --despair cuisses -- DEF
INSERT INTO `item_mods` VALUES (27284, 384, 600); --naga hakama -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27284, 259, 4); --naga hakama -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (27284, 68, 33); --naga hakama -- EVA
INSERT INTO `item_mods` VALUES (27284, 31, 64); --naga hakama -- MEVA
INSERT INTO `item_mods` VALUES (27284, 29, 3); --naga hakama -- MDEF
INSERT INTO `item_mods` VALUES (27284, 14, 10); --naga hakama -- CHR
INSERT INTO `item_mods` VALUES (27284, 13, 17); --naga hakama -- MND
INSERT INTO `item_mods` VALUES (27284, 12, 32); --naga hakama -- INT
INSERT INTO `item_mods` VALUES (27284, 11, 21); --naga hakama -- AGI
INSERT INTO `item_mods` VALUES (27284, 10, 19); --naga hakama -- VIT
INSERT INTO `item_mods` VALUES (27284, 8, 37); --naga hakama -- STR
INSERT INTO `item_mods` VALUES (27284, 2, 97); --naga hakama -- HP
INSERT INTO `item_mods` VALUES (27284, 1, 110); --naga hakama -- DEF
INSERT INTO `item_mods` VALUES (27285, 486, 15); --rawhide trousers -- TACTICAL_PARRY
INSERT INTO `item_mods` VALUES (27285, 384, 600); --rawhide trousers -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27285, 113, 10); --rawhide trousers -- ENHANCE
INSERT INTO `item_mods` VALUES (27285, 68, 38); --rawhide trousers -- EVA
INSERT INTO `item_mods` VALUES (27285, 31, 69); --rawhide trousers -- MEVA
INSERT INTO `item_mods` VALUES (27285, 30, 20); --rawhide trousers -- MACC
INSERT INTO `item_mods` VALUES (27285, 29, 5); --rawhide trousers -- MDEF
INSERT INTO `item_mods` VALUES (27285, 14, 11); --rawhide trousers -- CHR
INSERT INTO `item_mods` VALUES (27285, 13, 17); --rawhide trousers -- MND
INSERT INTO `item_mods` VALUES (27285, 12, 30); --rawhide trousers -- INT
INSERT INTO `item_mods` VALUES (27285, 11, 24); --rawhide trousers -- AGI
INSERT INTO `item_mods` VALUES (27285, 10, 16); --rawhide trousers -- VIT
INSERT INTO `item_mods` VALUES (27285, 8, 33); --rawhide trousers -- STR
INSERT INTO `item_mods` VALUES (27285, 2, 47); --rawhide trousers -- HP
INSERT INTO `item_mods` VALUES (27285, 1, 112); --rawhide trousers -- DEF
INSERT INTO `item_mods` VALUES (27286, 384, 600); --pursuers pants -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27286, 359, 9); --pursuers pants -- RAPID_SHOT
INSERT INTO `item_mods` VALUES (27286, 68, 38); --pursuers pants -- EVA
INSERT INTO `item_mods` VALUES (27286, 31, 69); --pursuers pants -- MEVA
INSERT INTO `item_mods` VALUES (27286, 29, 5); --pursuers pants -- MDEF
INSERT INTO `item_mods` VALUES (27286, 26, 23); --pursuers pants -- RACC
INSERT INTO `item_mods` VALUES (27286, 24, 23); --pursuers pants -- RATT
INSERT INTO `item_mods` VALUES (27286, 14, 14); --pursuers pants -- CHR
INSERT INTO `item_mods` VALUES (27286, 13, 20); --pursuers pants -- MND
INSERT INTO `item_mods` VALUES (27286, 12, 33); --pursuers pants -- INT
INSERT INTO `item_mods` VALUES (27286, 11, 29); --pursuers pants -- AGI
INSERT INTO `item_mods` VALUES (27286, 10, 17); --pursuers pants -- VIT
INSERT INTO `item_mods` VALUES (27286, 9, 3); --pursuers pants -- DEX
INSERT INTO `item_mods` VALUES (27286, 8, 35); --pursuers pants -- STR
INSERT INTO `item_mods` VALUES (27286, 5, 23); --pursuers pants -- MP
INSERT INTO `item_mods` VALUES (27286, 2, 47); --pursuers pants -- HP
INSERT INTO `item_mods` VALUES (27286, 1, 113); --pursuers pants -- DEF
INSERT INTO `item_mods` VALUES (27287, 384, 500); --psycloth lappas -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27287, 114, 18); --psycloth lappas -- ENFEEBLE
INSERT INTO `item_mods` VALUES (27287, 68, 27); --psycloth lappas -- EVA
INSERT INTO `item_mods` VALUES (27287, 31, 107); --psycloth lappas -- MEVA
INSERT INTO `item_mods` VALUES (27287, 30, 20); --psycloth lappas -- MACC
INSERT INTO `item_mods` VALUES (27287, 29, 6); --psycloth lappas -- MDEF
INSERT INTO `item_mods` VALUES (27287, 14, 19); --psycloth lappas -- CHR
INSERT INTO `item_mods` VALUES (27287, 13, 30); --psycloth lappas -- MND
INSERT INTO `item_mods` VALUES (27287, 12, 40); --psycloth lappas -- INT
INSERT INTO `item_mods` VALUES (27287, 11, 17); --psycloth lappas -- AGI
INSERT INTO `item_mods` VALUES (27287, 10, 12); --psycloth lappas -- VIT
INSERT INTO `item_mods` VALUES (27287, 8, 25); --psycloth lappas -- STR
INSERT INTO `item_mods` VALUES (27287, 5, 29); --psycloth lappas -- MP
INSERT INTO `item_mods` VALUES (27287, 2, 43); --psycloth lappas -- HP
INSERT INTO `item_mods` VALUES (27287, 1, 101); --psycloth lappas -- DEF
INSERT INTO `item_mods` VALUES (27288, 384, 500); --vanya slops -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27288, 296, 6); --vanya slops -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (27288, 68, 27); --vanya slops -- EVA
INSERT INTO `item_mods` VALUES (27288, 31, 107); --vanya slops -- MEVA
INSERT INTO `item_mods` VALUES (27288, 30, 20); --vanya slops -- MACC
INSERT INTO `item_mods` VALUES (27288, 29, 6); --vanya slops -- MDEF
INSERT INTO `item_mods` VALUES (27288, 14, 29); --vanya slops -- CHR
INSERT INTO `item_mods` VALUES (27288, 13, 34); --vanya slops -- MND
INSERT INTO `item_mods` VALUES (27288, 12, 44); --vanya slops -- INT
INSERT INTO `item_mods` VALUES (27288, 11, 17); --vanya slops -- AGI
INSERT INTO `item_mods` VALUES (27288, 10, 12); --vanya slops -- VIT
INSERT INTO `item_mods` VALUES (27288, 8, 25); --vanya slops -- STR
INSERT INTO `item_mods` VALUES (27288, 5, 29); --vanya slops -- MP
INSERT INTO `item_mods` VALUES (27288, 2, 43); --vanya slops -- HP
INSERT INTO `item_mods` VALUES (27288, 1, 106); --vanya slops -- DEF
INSERT INTO `item_mods` VALUES (27457, 167, 300); --eschite greaves -- HASTE_MAGIC
INSERT INTO `item_mods` VALUES (27457, 163, -3); --eschite greaves -- DMGMAGIC
INSERT INTO `item_mods` VALUES (27457, 68, 49); --eschite greaves -- EVA
INSERT INTO `item_mods` VALUES (27457, 31, 64); --eschite greaves -- MEVA
INSERT INTO `item_mods` VALUES (27457, 29, 2); --eschite greaves -- MDEF
INSERT INTO `item_mods` VALUES (27457, 27, 8); --eschite greaves -- ENMITY
INSERT INTO `item_mods` VALUES (27457, 14, 26); --eschite greaves -- CHR
INSERT INTO `item_mods` VALUES (27457, 13, 10); --eschite greaves -- MND
INSERT INTO `item_mods` VALUES (27457, 11, 29); --eschite greaves -- AGI
INSERT INTO `item_mods` VALUES (27457, 10, 22); --eschite greaves -- VIT
INSERT INTO `item_mods` VALUES (27457, 9, 12); --eschite greaves -- DEX
INSERT INTO `item_mods` VALUES (27457, 8, 21); --eschite greaves -- STR
INSERT INTO `item_mods` VALUES (27457, 2, 18); --eschite greaves -- HP
INSERT INTO `item_mods` VALUES (27457, 1, 91); --eschite greaves -- DEF
INSERT INTO `item_mods` VALUES (27458, 384, 400); --despair greaves -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27458, 288, 2); --despair greaves -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (27458, 68, 52); --despair greaves -- EVA
INSERT INTO `item_mods` VALUES (27458, 31, 80); --despair greaves -- MEVA
INSERT INTO `item_mods` VALUES (27458, 29, 3); --despair greaves -- MDEF
INSERT INTO `item_mods` VALUES (27458, 25, 17); --despair greaves -- ACC
INSERT INTO `item_mods` VALUES (27458, 14, 28); --despair greaves -- CHR
INSERT INTO `item_mods` VALUES (27458, 13, 11); --despair greaves -- MND
INSERT INTO `item_mods` VALUES (27458, 11, 33); --despair greaves -- AGI
INSERT INTO `item_mods` VALUES (27458, 10, 15); --despair greaves -- VIT
INSERT INTO `item_mods` VALUES (27458, 9, 16); --despair greaves -- DEX
INSERT INTO `item_mods` VALUES (27458, 8, 19); --despair greaves -- STR
INSERT INTO `item_mods` VALUES (27458, 2, 15); --despair greaves -- HP
INSERT INTO `item_mods` VALUES (27458, 1, 82); --despair greaves -- DEF
INSERT INTO `item_mods` VALUES (27459, 384, 400); --naga kyahan -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27459, 288, 3); --naga kyahan -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (27459, 103, 10); --naga kyahan -- AUTO_MAGIC_SKILL
INSERT INTO `item_mods` VALUES (27459, 102, 10); --naga kyahan -- AUTO_RANGED_SKILL
INSERT INTO `item_mods` VALUES (27459, 101, 10); --naga kyahan -- AUTO_MELEE_SKILL
INSERT INTO `item_mods` VALUES (27459, 68, 69); --naga kyahan -- EVA
INSERT INTO `item_mods` VALUES (27459, 31, 64); --naga kyahan -- MEVA
INSERT INTO `item_mods` VALUES (27459, 29, 3); --naga kyahan -- MDEF
INSERT INTO `item_mods` VALUES (27459, 25, 18); --naga kyahan -- ACC
INSERT INTO `item_mods` VALUES (27459, 23, 18); --naga kyahan -- ATT
INSERT INTO `item_mods` VALUES (27459, 14, 29); --naga kyahan -- CHR
INSERT INTO `item_mods` VALUES (27459, 13, 12); --naga kyahan -- MND
INSERT INTO `item_mods` VALUES (27459, 11, 34); --naga kyahan -- AGI
INSERT INTO `item_mods` VALUES (27459, 10, 11); --naga kyahan -- VIT
INSERT INTO `item_mods` VALUES (27459, 9, 15); --naga kyahan -- DEX
INSERT INTO `item_mods` VALUES (27459, 8, 14); --naga kyahan -- STR
INSERT INTO `item_mods` VALUES (27459, 2, 63); --naga kyahan -- HP
INSERT INTO `item_mods` VALUES (27459, 1, 67); --naga kyahan -- DEF
INSERT INTO `item_mods` VALUES (27460, 491, 8); --rawhide boots -- WALTZ_POTENCY
INSERT INTO `item_mods` VALUES (27460, 384, 400); --rawhide boots -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27460, 259, 3); --rawhide boots -- DUAL_WIELD
INSERT INTO `item_mods` VALUES (27460, 68, 72); --rawhide boots -- EVA
INSERT INTO `item_mods` VALUES (27460, 31, 69); --rawhide boots -- MEVA
INSERT INTO `item_mods` VALUES (27460, 29, 5); --rawhide boots -- MDEF
INSERT INTO `item_mods` VALUES (27460, 25, 23); --rawhide boots -- ACC
INSERT INTO `item_mods` VALUES (27460, 14, 30); --rawhide boots -- CHR
INSERT INTO `item_mods` VALUES (27460, 13, 18); --rawhide boots -- MND
INSERT INTO `item_mods` VALUES (27460, 11, 37); --rawhide boots -- AGI
INSERT INTO `item_mods` VALUES (27460, 10, 12); --rawhide boots -- VIT
INSERT INTO `item_mods` VALUES (27460, 9, 24); --rawhide boots -- DEX
INSERT INTO `item_mods` VALUES (27460, 8, 18); --rawhide boots -- STR
INSERT INTO `item_mods` VALUES (27460, 2, 13); --rawhide boots -- HP
INSERT INTO `item_mods` VALUES (27460, 1, 73); --rawhide boots -- DEF
INSERT INTO `item_mods` VALUES (27461, 384, 400); --pursuers gaiters -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27461, 68, 72); --pursuers gaiters -- EVA
INSERT INTO `item_mods` VALUES (27461, 31, 69); --pursuers gaiters -- MEVA
INSERT INTO `item_mods` VALUES (27461, 30, 15); --pursuers gaiters -- MACC
INSERT INTO `item_mods` VALUES (27461, 29, 5); --pursuers gaiters -- MDEF
INSERT INTO `item_mods` VALUES (27461, 27, -7); --pursuers gaiters -- ENMITY
INSERT INTO `item_mods` VALUES (27461, 26, 20); --pursuers gaiters -- RACC
INSERT INTO `item_mods` VALUES (27461, 14, 30); --pursuers gaiters -- CHR
INSERT INTO `item_mods` VALUES (27461, 13, 12); --pursuers gaiters -- MND
INSERT INTO `item_mods` VALUES (27461, 11, 44); --pursuers gaiters -- AGI
INSERT INTO `item_mods` VALUES (27461, 10, 10); --pursuers gaiters -- VIT
INSERT INTO `item_mods` VALUES (27461, 9, 29); --pursuers gaiters -- DEX
INSERT INTO `item_mods` VALUES (27461, 8, 12); --pursuers gaiters -- STR
INSERT INTO `item_mods` VALUES (27461, 2, 13); --pursuers gaiters -- HP
INSERT INTO `item_mods` VALUES (27461, 1, 69); --pursuers gaiters -- DEF
INSERT INTO `item_mods` VALUES (27462, 384, 300); --psycloth boots -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (27462, 68, 55); --psycloth boots -- EVA
INSERT INTO `item_mods` VALUES (27462, 31, 107); --psycloth boots -- MEVA
INSERT INTO `item_mods` VALUES (27462, 29, 5); --psycloth boots -- MDEF
INSERT INTO `item_mods` VALUES (27462, 14, 34); --psycloth boots -- CHR
INSERT INTO `item_mods` VALUES (27462, 13, 19); --psycloth boots -- MND
INSERT INTO `item_mods` VALUES (27462, 12, 17); --psycloth boots -- INT
INSERT INTO `item_mods` VALUES (27462, 11, 33); --psycloth boots -- AGI
INSERT INTO `item_mods` VALUES (27462, 10, 10); --psycloth boots -- VIT
INSERT INTO `item_mods` VALUES (27462, 9, 11); --psycloth boots -- DEX
INSERT INTO `item_mods` VALUES (27462, 8, 10); --psycloth boots -- STR
INSERT INTO `item_mods` VALUES (27462, 5, 74); --psycloth boots -- MP
INSERT INTO `item_mods` VALUES (27462, 2, 13); --psycloth boots -- HP
INSERT INTO `item_mods` VALUES (27462, 1, 66); --psycloth boots -- DEF
INSERT INTO `item_mods` VALUES (27464, 311, 10); --inspirited boots -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (27464, 167, 300); --inspirited boots -- HASTE_MAGIC
INSERT INTO `item_mods` VALUES (27464, 68, 60); --inspirited boots -- EVA
INSERT INTO `item_mods` VALUES (27464, 31, 118); --inspirited boots -- MEVA
INSERT INTO `item_mods` VALUES (27464, 29, 6); --inspirited boots -- MDEF
INSERT INTO `item_mods` VALUES (27464, 28, 20); --inspirited boots -- MATT
INSERT INTO `item_mods` VALUES (27464, 14, 32); --inspirited boots -- CHR
INSERT INTO `item_mods` VALUES (27464, 13, 17); --inspirited boots -- MND
INSERT INTO `item_mods` VALUES (27464, 12, 25); --inspirited boots -- INT
INSERT INTO `item_mods` VALUES (27464, 11, 29); --inspirited boots -- AGI
INSERT INTO `item_mods` VALUES (27464, 10, 8); --inspirited boots -- VIT
INSERT INTO `item_mods` VALUES (27464, 9, 8); --inspirited boots -- DEX
INSERT INTO `item_mods` VALUES (27464, 8, 8); --inspirited boots -- STR
INSERT INTO `item_mods` VALUES (27464, 5, 20); --inspirited boots -- MP
INSERT INTO `item_mods` VALUES (27464, 2, 9); --inspirited boots -- HP
INSERT INTO `item_mods` VALUES (27464, 1, 70); --inspirited boots -- DEF
INSERT INTO `item_mods` VALUES (27511, 163, -4); --dampeners torque -- DMGMAGIC
INSERT INTO `item_mods` VALUES (27511, 25, 5); --dampeners torque -- ACC
INSERT INTO `item_mods` VALUES (27511, 23, 5); --dampeners torque -- ATT
INSERT INTO `item_mods` VALUES (27511, 2, 25); --dampeners torque -- HP
INSERT INTO `item_mods` VALUES (27512, 73, 2); --marked gorget -- STORETP
INSERT INTO `item_mods` VALUES (27512, 27, -3); --marked gorget -- ENMITY
INSERT INTO `item_mods` VALUES (27512, 26, 15); --marked gorget -- RACC
INSERT INTO `item_mods` VALUES (27512, 24, 15); --marked gorget -- RATT
INSERT INTO `item_mods` VALUES (27512, 11, 3); --marked gorget -- AGI
INSERT INTO `item_mods` VALUES (27607, 296, 4); --thaumaturges cape -- CONSERVE_MP
INSERT INTO `item_mods` VALUES (27607, 27, -10); --thaumaturges cape -- ENMITY
INSERT INTO `item_mods` VALUES (27607, 5, 25); --thaumaturges cape -- MP
INSERT INTO `item_mods` VALUES (27642, 160, -6); --nibiru shield -- DMG
INSERT INTO `item_mods` VALUES (27642, 109, 112); --nibiru shield -- SHIELD
INSERT INTO `item_mods` VALUES (27642, 25, 7); --nibiru shield -- ACC
INSERT INTO `item_mods` VALUES (27642, 10, 5); --nibiru shield -- VIT
INSERT INTO `item_mods` VALUES (27642, 8, 5); --nibiru shield -- STR
INSERT INTO `item_mods` VALUES (27513, 1, 9); --subtlety spectacles -- DEF
INSERT INTO `item_mods` VALUES (27513, 2, 20); --subtlety spectacles -- HP
INSERT INTO `item_mods` VALUES (27513, 25, 15); --subtlety spectacles -- ACC
INSERT INTO `item_mods` VALUES (27513, 289, 4); --subtlety spectacles -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (26014, 116, 10); --deceivers torque -- DARK
INSERT INTO `item_mods` VALUES (26014, 120, 10); --deceivers torque -- STRING
INSERT INTO `item_mods` VALUES (26014, 122, 10); --deceivers torque -- BLUE
INSERT INTO `item_mods` VALUES (26014, 123, 10); --deceivers torque -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (26105, 1, 20); --gna earring -- DEF
INSERT INTO `item_mods` VALUES (26105, 123, 10); --gna earring -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (21070, 30, 25); --idris -- MACC
INSERT INTO `item_mods` VALUES (21070, 28, 25); --idris -- MATT
INSERT INTO `item_mods` VALUES (21070, 311, 155); --idris -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (21070, 123, 10); --idris -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (21070, 256, 40); --idris -- AFTERMATH
INSERT INTO `item_mods_pet` VALUES (21070, 160, -2500, 7); --idris -- DMG
INSERT INTO `item_mods` VALUES (21080, 30, 40); --idris -- MACC
INSERT INTO `item_mods` VALUES (21080, 28, 40); --idris -- MATT
INSERT INTO `item_mods` VALUES (21080, 311, 217); --idris -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (21080, 123, 10); --idris -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (21080, 256, 40); --idris -- AFTERMATH
INSERT INTO `item_mods_pet` VALUES (21080, 160, -2500, 7); --idris -- DMG
INSERT INTO `item_mods` VALUES (23467, 288, 6); --piety briault +3 -- DOUBLE_ATTACK
INSERT INTO `item_mods` VALUES (23468, 23, 61); --archmages coat +3 -- ATT
INSERT INTO `item_mods` VALUES (23469, 3, 99); --vitiation tabard +3 -- HPP
INSERT INTO `item_mods` VALUES (23469, 57, 23); --vitiation tabard +3 -- EARTH_SDT
INSERT INTO `item_mods` VALUES (23469, 58, 23); --vitiation tabard +3 -- THUNDER_SDT
INSERT INTO `item_mods` VALUES (23536, 3, 64); --vitiation gloves +3 -- HPP
INSERT INTO `item_mods` VALUES (23536, 58, 24); --vitiation gloves +3 -- THUNDER_SDT
INSERT INTO `item_mods` VALUES (23603, 3, 49); --vitiation tights +3 -- HPP
INSERT INTO `item_mods` VALUES (23603, 59, 23); --vitiation tights +3 -- WATER_SDT
INSERT INTO `item_mods` VALUES (23603, 1079, 30); --vitiation tights +3 -- SPIKES_DMG_BONUS
INSERT INTO `item_mods` VALUES (23406, 1, 123); --ankusa helm +3 -- DEF
INSERT INTO `item_mods` VALUES (23406, 2, 56); --ankusa helm +3 -- HP
INSERT INTO `item_mods` VALUES (23406, 3, 43); --ankusa helm +3 -- HPP
INSERT INTO `item_mods` VALUES (23406, 8, 32); --ankusa helm +3 -- STR
INSERT INTO `item_mods` VALUES (23406, 9, 36); --ankusa helm +3 -- DEX
INSERT INTO `item_mods` VALUES (23406, 10, 25); --ankusa helm +3 -- VIT
INSERT INTO `item_mods` VALUES (23406, 11, 29); --ankusa helm +3 -- AGI
INSERT INTO `item_mods` VALUES (23406, 12, 25); --ankusa helm +3 -- INT
INSERT INTO `item_mods` VALUES (23406, 13, 25); --ankusa helm +3 -- MND
INSERT INTO `item_mods` VALUES (23406, 14, 33); --ankusa helm +3 -- CHR
INSERT INTO `item_mods` VALUES (23406, 25, 37); --ankusa helm +3 -- ACC
INSERT INTO `item_mods` VALUES (23406, 23, 62); --ankusa helm +3 -- ATT
INSERT INTO `item_mods` VALUES (23406, 30, 37); --ankusa helm +3 -- MACC
INSERT INTO `item_mods` VALUES (23406, 68, 64); --ankusa helm +3 -- EVA
INSERT INTO `item_mods` VALUES (23406, 31, 73); --ankusa helm +3 -- MEVA
INSERT INTO `item_mods` VALUES (23406, 29, 4); --ankusa helm +3 -- MDEF
INSERT INTO `item_mods` VALUES (23406, 384, 800); --ankusa helm +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23406, 391, 14); --ankusa helm +3 -- CHARM_CHANCE
INSERT INTO `item_mods` VALUES (23406, 840, 10); --ankusa helm +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23473, 1, 153); --ankusa jackcoat +3 -- DEF
INSERT INTO `item_mods` VALUES (23473, 2, 79); --ankusa jackcoat +3 -- HP
INSERT INTO `item_mods` VALUES (23473, 3, 64); --ankusa jackcoat +3 -- HPP
INSERT INTO `item_mods` VALUES (23473, 8, 38); --ankusa jackcoat +3 -- STR
INSERT INTO `item_mods` VALUES (23473, 9, 43); --ankusa jackcoat +3 -- DEX
INSERT INTO `item_mods` VALUES (23473, 10, 34); --ankusa jackcoat +3 -- VIT
INSERT INTO `item_mods` VALUES (23473, 11, 38); --ankusa jackcoat +3 -- AGI
INSERT INTO `item_mods` VALUES (23473, 12, 37); --ankusa jackcoat +3 -- INT
INSERT INTO `item_mods` VALUES (23473, 13, 33); --ankusa jackcoat +3 -- MND
INSERT INTO `item_mods` VALUES (23473, 14, 33); --ankusa jackcoat +3 -- CHR
INSERT INTO `item_mods` VALUES (23473, 25, 40); --ankusa jackcoat +3 -- ACC
INSERT INTO `item_mods` VALUES (23473, 23, 65); --ankusa jackcoat +3 -- ATT
INSERT INTO `item_mods` VALUES (23473, 30, 40); --ankusa jackcoat +3 -- MACC
INSERT INTO `item_mods` VALUES (23473, 68, 69); --ankusa jackcoat +3 -- EVA
INSERT INTO `item_mods` VALUES (23473, 31, 84); --ankusa jackcoat +3 -- MEVA
INSERT INTO `item_mods` VALUES (23473, 29, 8); --ankusa jackcoat +3 -- MDEF
INSERT INTO `item_mods` VALUES (23473, 384, 400); --ankusa jackcoat +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23473, 391, 16); --ankusa jackcoat +3 -- CHARM_CHANCE
INSERT INTO `item_mods` VALUES (23540, 1, 111); --ankusa gloves +3 -- DEF
INSERT INTO `item_mods` VALUES (23540, 2, 45); --ankusa gloves +3 -- HP
INSERT INTO `item_mods` VALUES (23540, 8, 21); --ankusa gloves +3 -- STR
INSERT INTO `item_mods` VALUES (23540, 9, 45); --ankusa gloves +3 -- DEX
INSERT INTO `item_mods` VALUES (23540, 10, 42); --ankusa gloves +3 -- VIT
INSERT INTO `item_mods` VALUES (23540, 11, 22); --ankusa gloves +3 -- AGI
INSERT INTO `item_mods` VALUES (23540, 12, 22); --ankusa gloves +3 -- INT
INSERT INTO `item_mods` VALUES (23540, 13, 40); --ankusa gloves +3 -- MND
INSERT INTO `item_mods` VALUES (23540, 14, 27); --ankusa gloves +3 -- CHR
INSERT INTO `item_mods` VALUES (23540, 25, 38); --ankusa gloves +3 -- ACC
INSERT INTO `item_mods` VALUES (23540, 23, 63); --ankusa gloves +3 -- ATT
INSERT INTO `item_mods` VALUES (23540, 30, 38); --ankusa gloves +3 -- MACC
INSERT INTO `item_mods` VALUES (23540, 68, 44); --ankusa gloves +3 -- EVA
INSERT INTO `item_mods` VALUES (23540, 31, 57); --ankusa gloves +3 -- MEVA
INSERT INTO `item_mods` VALUES (23540, 29, 4); --ankusa gloves +3 -- MDEF
INSERT INTO `item_mods` VALUES (23540, 384, 500); --ankusa gloves +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23540, 391, 13); --ankusa gloves +3 -- CHARM_CHANCE
INSERT INTO `item_mods` VALUES (23607, 1, 132); --ankusa trousers +3 -- DEF
INSERT INTO `item_mods` VALUES (23607, 2, 67); --ankusa trousers +3 -- HP
INSERT INTO `item_mods` VALUES (23607, 8, 39); --ankusa trousers +3 -- STR
INSERT INTO `item_mods` VALUES (23607, 9, 20); --ankusa trousers +3 -- DEX
INSERT INTO `item_mods` VALUES (23607, 10, 26); --ankusa trousers +3 -- VIT
INSERT INTO `item_mods` VALUES (23607, 11, 30); --ankusa trousers +3 -- AGI
INSERT INTO `item_mods` VALUES (23607, 12, 40); --ankusa trousers +3 -- INT
INSERT INTO `item_mods` VALUES (23607, 13, 27); --ankusa trousers +3 -- MND
INSERT INTO `item_mods` VALUES (23607, 14, 21); --ankusa trousers +3 -- CHR
INSERT INTO `item_mods` VALUES (23607, 25, 39); --ankusa trousers +3 -- ACC
INSERT INTO `item_mods` VALUES (23607, 23, 64); --ankusa trousers +3 -- ATT
INSERT INTO `item_mods` VALUES (23607, 30, 39); --ankusa trousers +3 -- MACC
INSERT INTO `item_mods` VALUES (23607, 68, 58); --ankusa trousers +3 -- EVA
INSERT INTO `item_mods` VALUES (23607, 31, 89); --ankusa trousers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23607, 29, 7); --ankusa trousers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23607, 384, 600); --ankusa trousers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23607, 391, 11); --ankusa trousers +3 -- CHARM_CHANCE
INSERT INTO `item_mods` VALUES (23607, 73, 7); --ankusa trousers +3 -- STORETP
INSERT INTO `item_mods` VALUES (23544, 308, 38); --mochizuki tekko +3 -- NINJA_TOOL
INSERT INTO `item_mods` VALUES (23481, 1, 151); --lanun frac +3 -- DEF
INSERT INTO `item_mods` VALUES (23481, 2, 79); --lanun frac +3 -- HP
INSERT INTO `item_mods` VALUES (23481, 5, 64); --lanun frac +3 -- MP
INSERT INTO `item_mods` VALUES (23481, 8, 37); --lanun frac +3 -- STR
INSERT INTO `item_mods` VALUES (23481, 9, 39); --lanun frac +3 -- DEX
INSERT INTO `item_mods` VALUES (23481, 10, 31); --lanun frac +3 -- VIT
INSERT INTO `item_mods` VALUES (23481, 11, 43); --lanun frac +3 -- AGI
INSERT INTO `item_mods` VALUES (23481, 12, 36); --lanun frac +3 -- INT
INSERT INTO `item_mods` VALUES (23481, 13, 33); --lanun frac +3 -- MND
INSERT INTO `item_mods` VALUES (23481, 14, 33); --lanun frac +3 -- CHR
INSERT INTO `item_mods` VALUES (23481, 25, 49); --lanun frac +3 -- ACC
INSERT INTO `item_mods` VALUES (23481, 24, 83); --lanun frac +3 -- RATT
INSERT INTO `item_mods` VALUES (23481, 30, 40); --lanun frac +3 -- MACC
INSERT INTO `item_mods` VALUES (23481, 1063, 61); --lanun frac +3 -- ENHANCES_FEALTY
INSERT INTO `item_mods` VALUES (23481, 68, 69); --lanun frac +3 -- EVA
INSERT INTO `item_mods` VALUES (23481, 31, 84); --lanun frac +3 -- MEVA
INSERT INTO `item_mods` VALUES (23481, 29, 8); --lanun frac +3 -- MDEF
INSERT INTO `item_mods` VALUES (23481, 384, 400); --lanun frac +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23481, 161, -600); --lanun frac +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23548, 1, 109); --lanun gants +3 -- DEF
INSERT INTO `item_mods` VALUES (23548, 2, 65); --lanun gants +3 -- HP
INSERT INTO `item_mods` VALUES (23548, 8, 26); --lanun gants +3 -- STR
INSERT INTO `item_mods` VALUES (23548, 9, 45); --lanun gants +3 -- DEX
INSERT INTO `item_mods` VALUES (23548, 10, 39); --lanun gants +3 -- VIT
INSERT INTO `item_mods` VALUES (23548, 11, 22); --lanun gants +3 -- AGI
INSERT INTO `item_mods` VALUES (23548, 12, 22); --lanun gants +3 -- INT
INSERT INTO `item_mods` VALUES (23548, 13, 40); --lanun gants +3 -- MND
INSERT INTO `item_mods` VALUES (23548, 14, 27); --lanun gants +3 -- CHR
INSERT INTO `item_mods` VALUES (23548, 26, 44); --lanun gants +3 -- RACC
INSERT INTO `item_mods` VALUES (23548, 24, 76); --lanun gants +3 -- RATT
INSERT INTO `item_mods` VALUES (23548, 30, 38); --lanun gants +3 -- MACC
INSERT INTO `item_mods` VALUES (23548, 68, 44); --lanun gants +3 -- EVA
INSERT INTO `item_mods` VALUES (23548, 31, 57); --lanun gants +3 -- MEVA
INSERT INTO `item_mods` VALUES (23548, 29, 4); --lanun gants +3 -- MDEF
INSERT INTO `item_mods` VALUES (23548, 384, 500); --lanun gants +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23548, 365, 13); --lanun gants +3 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (23615, 1, 132); --lanun trews +3 -- DEF
INSERT INTO `item_mods` VALUES (23615, 2, 90); --lanun trews +3 -- HP
INSERT INTO `item_mods` VALUES (23615, 5, 43); --lanun trews +3 -- MP
INSERT INTO `item_mods` VALUES (23615, 8, 42); --lanun trews +3 -- STR
INSERT INTO `item_mods` VALUES (23615, 10, 24); --lanun trews +3 -- VIT
INSERT INTO `item_mods` VALUES (23615, 11, 36); --lanun trews +3 -- AGI
INSERT INTO `item_mods` VALUES (23615, 12, 40); --lanun trews +3 -- INT
INSERT INTO `item_mods` VALUES (23615, 13, 27); --lanun trews +3 -- MND
INSERT INTO `item_mods` VALUES (23615, 14, 21); --lanun trews +3 -- CHR
INSERT INTO `item_mods` VALUES (23615, 23, 78); --lanun trews +3 -- ATT
INSERT INTO `item_mods` VALUES (23615, 26, 46); --lanun trews +3 -- RACC
INSERT INTO `item_mods` VALUES (23615, 24, 78); --lanun trews +3 -- RATT
INSERT INTO `item_mods` VALUES (23615, 30, 39); --lanun trews +3 -- MACC
INSERT INTO `item_mods` VALUES (23615, 68, 72); --lanun trews +3 -- EVA
INSERT INTO `item_mods` VALUES (23615, 31, 89); --lanun trews +3 -- MEVA
INSERT INTO `item_mods` VALUES (23615, 29, 7); --lanun trews +3 -- MDEF
INSERT INTO `item_mods` VALUES (23615, 384, 600); --lanun trews +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23615, 365, 10); --lanun trews +3 -- SNAP_SHOT
INSERT INTO `item_mods` VALUES (23466, 160, 5); --hesychasts cyclas +3 -- DMG
INSERT INTO `item_mods` VALUES (23533, 1, 96); --hesychasts gloves +3 -- DEF
INSERT INTO `item_mods` VALUES (23533, 2, 80); --hesychasts gloves +3 -- HP
INSERT INTO `item_mods` VALUES (23533, 8, 20); --hesychasts gloves +3 -- STR
INSERT INTO `item_mods` VALUES (23533, 9, 44); --hesychasts gloves +3 -- DEX
INSERT INTO `item_mods` VALUES (23533, 10, 38); --hesychasts gloves +3 -- VIT
INSERT INTO `item_mods` VALUES (23533, 11, 16); --hesychasts gloves +3 -- AGI
INSERT INTO `item_mods` VALUES (23533, 12, 20); --hesychasts gloves +3 -- INT
INSERT INTO `item_mods` VALUES (23533, 13, 38); --hesychasts gloves +3 -- MND
INSERT INTO `item_mods` VALUES (23533, 14, 26); --hesychasts gloves +3 -- CHR
INSERT INTO `item_mods` VALUES (23533, 25, 49); --hesychasts gloves +3 -- ACC
INSERT INTO `item_mods` VALUES (23533, 23, 86); --hesychasts gloves +3 -- ATT
INSERT INTO `item_mods` VALUES (23533, 30, 38); --hesychasts gloves +3 -- MACC
INSERT INTO `item_mods` VALUES (23533, 68, 42); --hesychasts gloves +3 -- EVA
INSERT INTO `item_mods` VALUES (23533, 31, 46); --hesychasts gloves +3 -- MEVA
INSERT INTO `item_mods` VALUES (23533, 29, 3); --hesychasts gloves +3 -- MDEF
INSERT INTO `item_mods` VALUES (23533, 384, 400); --hesychasts gloves +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23533, 73, 8); --hesychasts gloves +3 -- STORETP
INSERT INTO `item_mods` VALUES (23533, 289, 10); --hesychasts gloves +3 -- SUBTLE_BLOW
INSERT INTO `item_mods` VALUES (23533, 1026, 51); --hesychasts gloves +3 -- CHAKRA_MULT
INSERT INTO `item_mods` VALUES (23403, 1, 122); --plunderers bonnet +3 -- DEF
INSERT INTO `item_mods` VALUES (23403, 2, 56); --plunderers bonnet +3 -- HP
INSERT INTO `item_mods` VALUES (23403, 5, 43); --plunderers bonnet +3 -- MP
INSERT INTO `item_mods` VALUES (23403, 8, 31); --plunderers bonnet +3 -- STR
INSERT INTO `item_mods` VALUES (23403, 9, 41); --plunderers bonnet +3 -- DEX
INSERT INTO `item_mods` VALUES (23403, 10, 31); --plunderers bonnet +3 -- VIT
INSERT INTO `item_mods` VALUES (23403, 11, 35); --plunderers bonnet +3 -- AGI
INSERT INTO `item_mods` VALUES (23403, 12, 31); --plunderers bonnet +3 -- INT
INSERT INTO `item_mods` VALUES (23403, 13, 31); --plunderers bonnet +3 -- MND
INSERT INTO `item_mods` VALUES (23403, 14, 32); --plunderers bonnet +3 -- CHR
INSERT INTO `item_mods` VALUES (23403, 25, 44); --plunderers bonnet +3 -- ACC
INSERT INTO `item_mods` VALUES (23403, 23, 62); --plunderers bonnet +3 -- ATT
INSERT INTO `item_mods` VALUES (23403, 30, 37); --plunderers bonnet +3 -- MACC
INSERT INTO `item_mods` VALUES (23403, 68, 64); --plunderers bonnet +3 -- EVA
INSERT INTO `item_mods` VALUES (23403, 31, 73); --plunderers bonnet +3 -- MEVA
INSERT INTO `item_mods` VALUES (23403, 29, 4); --plunderers bonnet +3 -- MDEF
INSERT INTO `item_mods` VALUES (23403, 384, 800); --plunderers bonnet +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23403, 302, 4); --plunderers bonnet +3 -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (23403, 835, 5); --plunderers bonnet +3 -- MUG_EFFECT
INSERT INTO `item_mods` VALUES (23470, 1, 152); --plunderers vest +3 -- DEF
INSERT INTO `item_mods` VALUES (23470, 2, 79); --plunderers vest +3 -- HP
INSERT INTO `item_mods` VALUES (23470, 5, 64); --plunderers vest +3 -- MP
INSERT INTO `item_mods` VALUES (23470, 8, 41); --plunderers vest +3 -- STR
INSERT INTO `item_mods` VALUES (23470, 9, 46); --plunderers vest +3 -- DEX
INSERT INTO `item_mods` VALUES (23470, 10, 34); --plunderers vest +3 -- VIT
INSERT INTO `item_mods` VALUES (23470, 11, 45); --plunderers vest +3 -- AGI
INSERT INTO `item_mods` VALUES (23470, 12, 33); --plunderers vest +3 -- INT
INSERT INTO `item_mods` VALUES (23470, 13, 33); --plunderers vest +3 -- MND
INSERT INTO `item_mods` VALUES (23470, 14, 33); --plunderers vest +3 -- CHR
INSERT INTO `item_mods` VALUES (23470, 25, 40); --plunderers vest +3 -- ACC
INSERT INTO `item_mods` VALUES (23470, 23, 65); --plunderers vest +3 -- ATT
INSERT INTO `item_mods` VALUES (23470, 30, 40); --plunderers vest +3 -- MACC
INSERT INTO `item_mods` VALUES (23470, 68, 69); --plunderers vest +3 -- EVA
INSERT INTO `item_mods` VALUES (23470, 31, 84); --plunderers vest +3 -- MEVA
INSERT INTO `item_mods` VALUES (23470, 29, 8); --plunderers vest +3 -- MDEF
INSERT INTO `item_mods` VALUES (23470, 384, 400); --plunderers vest +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23470, 27, 30); --plunderers vest +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23470, 520, 10); --plunderers vest +3 -- TRICK_ATK_AGI
INSERT INTO `item_mods` VALUES (23470, 165, 6); --plunderers vest +3 -- CRITHITRATE
INSERT INTO `item_mods` VALUES (23470, 421, 5); --plunderers vest +3 -- CRIT_DMG_INCREASE
INSERT INTO `item_mods` VALUES (23604, 1, 130); --plunderers culottes +3 -- DEF
INSERT INTO `item_mods` VALUES (23604, 2, 106); --plunderers culottes +3 -- HP
INSERT INTO `item_mods` VALUES (23604, 5, 88); --plunderers culottes +3 -- MP
INSERT INTO `item_mods` VALUES (23604, 8, 27); --plunderers culottes +3 -- STR
INSERT INTO `item_mods` VALUES (23604, 9, 21); --plunderers culottes +3 -- DEX
INSERT INTO `item_mods` VALUES (23604, 10, 38); --plunderers culottes +3 -- VIT
INSERT INTO `item_mods` VALUES (23604, 11, 21); --plunderers culottes +3 -- AGI
INSERT INTO `item_mods` VALUES (23604, 12, 19); --plunderers culottes +3 -- INT
INSERT INTO `item_mods` VALUES (23604, 13, 19); --plunderers culottes +3 -- MND
INSERT INTO `item_mods` VALUES (23604, 14, 19); --plunderers culottes +3 -- CHR
INSERT INTO `item_mods` VALUES (23604, 25, 27); --plunderers culottes +3 -- ACC
INSERT INTO `item_mods` VALUES (23604, 23, 47); --plunderers culottes +3 -- ATT
INSERT INTO `item_mods` VALUES (23604, 30, 27); --plunderers culottes +3 -- MACC
INSERT INTO `item_mods` VALUES (23604, 68, 43); --plunderers culottes +3 -- EVA
INSERT INTO `item_mods` VALUES (23604, 31, 42); --plunderers culottes +3 -- MEVA
INSERT INTO `item_mods` VALUES (23604, 29, 3); --plunderers culottes +3 -- MDEF
INSERT INTO `item_mods` VALUES (23604, 384, 700); --plunderers culottes +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23604, 27, 8); --plunderers culottes +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23604, 92, 30); --plunderers culottes +3 -- RAMPART_DURATION
INSERT INTO `item_mods` VALUES (23604, 840, 6); --plunderers culottes +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23407, 48, 18); --bihu roundlet +3 -- WSACC
INSERT INTO `item_mods` VALUES (23474, 840, 10); --bihu justaucorps +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23541, 1, 104); --bihu cuffs +3 -- DEF
INSERT INTO `item_mods` VALUES (23545, 840, 10); --pteroslaver finger gauntlets +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23415, 1, 123); --pitre taj +3 -- DEF
INSERT INTO `item_mods` VALUES (23415, 2, 56); --pitre taj +3 -- HP
INSERT INTO `item_mods` VALUES (23415, 8, 31); --pitre taj +3 -- STR
INSERT INTO `item_mods` VALUES (23415, 9, 31); --pitre taj +3 -- DEX
INSERT INTO `item_mods` VALUES (23415, 10, 27); --pitre taj +3 -- VIT
INSERT INTO `item_mods` VALUES (23415, 11, 33); --pitre taj +3 -- AGI
INSERT INTO `item_mods` VALUES (23415, 12, 26); --pitre taj +3 -- INT
INSERT INTO `item_mods` VALUES (23415, 13, 26); --pitre taj +3 -- MND
INSERT INTO `item_mods` VALUES (23415, 14, 26); --pitre taj +3 -- CHR
INSERT INTO `item_mods` VALUES (23415, 25, 37); --pitre taj +3 -- ACC
INSERT INTO `item_mods` VALUES (23415, 23, 62); --pitre taj +3 -- ATT
INSERT INTO `item_mods` VALUES (23415, 30, 37); --pitre taj +3 -- MACC
INSERT INTO `item_mods` VALUES (23415, 68, 58); --pitre taj +3 -- EVA
INSERT INTO `item_mods` VALUES (23415, 31, 63); --pitre taj +3 -- MEVA
INSERT INTO `item_mods` VALUES (23415, 29, 6); --pitre taj +3 -- MDEF
INSERT INTO `item_mods` VALUES (23415, 384, 800); --pitre taj +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23415, 370, 5); --pitre taj +3 -- REGEN
INSERT INTO `item_mods` VALUES (23482, 1, 153); --pitre tobe +3 -- DEF
INSERT INTO `item_mods` VALUES (23482, 2, 100); --pitre tobe +3 -- HP
INSERT INTO `item_mods` VALUES (23482, 8, 34); --pitre tobe +3 -- STR
INSERT INTO `item_mods` VALUES (23482, 9, 35); --pitre tobe +3 -- DEX
INSERT INTO `item_mods` VALUES (23482, 10, 31); --pitre tobe +3 -- VIT
INSERT INTO `item_mods` VALUES (23482, 11, 35); --pitre tobe +3 -- AGI
INSERT INTO `item_mods` VALUES (23482, 12, 34); --pitre tobe +3 -- INT
INSERT INTO `item_mods` VALUES (23482, 13, 34); --pitre tobe +3 -- MND
INSERT INTO `item_mods` VALUES (23482, 14, 34); --pitre tobe +3 -- CHR
INSERT INTO `item_mods` VALUES (23482, 25, 50); --pitre tobe +3 -- ACC
INSERT INTO `item_mods` VALUES (23482, 23, 86); --pitre tobe +3 -- ATT
INSERT INTO `item_mods` VALUES (23482, 30, 40); --pitre tobe +3 -- MACC
INSERT INTO `item_mods` VALUES (23482, 68, 72); --pitre tobe +3 -- EVA
INSERT INTO `item_mods` VALUES (23482, 31, 73); --pitre tobe +3 -- MEVA
INSERT INTO `item_mods` VALUES (23482, 29, 6); --pitre tobe +3 -- MDEF
INSERT INTO `item_mods` VALUES (23482, 384, 400); --pitre tobe +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23549, 1, 110); --pitre dastanas +3 -- DEF
INSERT INTO `item_mods` VALUES (23549, 2, 45); --pitre dastanas +3 -- HP
INSERT INTO `item_mods` VALUES (23549, 8, 20); --pitre dastanas +3 -- STR
INSERT INTO `item_mods` VALUES (23549, 9, 47); --pitre dastanas +3 -- DEX
INSERT INTO `item_mods` VALUES (23549, 10, 38); --pitre dastanas +3 -- VIT
INSERT INTO `item_mods` VALUES (23549, 11, 16); --pitre dastanas +3 -- AGI
INSERT INTO `item_mods` VALUES (23549, 12, 20); --pitre dastanas +3 -- INT
INSERT INTO `item_mods` VALUES (23549, 13, 38); --pitre dastanas +3 -- MND
INSERT INTO `item_mods` VALUES (23549, 14, 29); --pitre dastanas +3 -- CHR
INSERT INTO `item_mods` VALUES (23549, 25, 38); --pitre dastanas +3 -- ACC
INSERT INTO `item_mods` VALUES (23549, 23, 63); --pitre dastanas +3 -- ATT
INSERT INTO `item_mods` VALUES (23549, 30, 38); --pitre dastanas +3 -- MACC
INSERT INTO `item_mods` VALUES (23549, 68, 55); --pitre dastanas +3 -- EVA
INSERT INTO `item_mods` VALUES (23549, 31, 46); --pitre dastanas +3 -- MEVA
INSERT INTO `item_mods` VALUES (23549, 29, 3); --pitre dastanas +3 -- MDEF
INSERT INTO `item_mods` VALUES (23549, 384, 500); --pitre dastanas +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23549, 840, 10); --pitre dastanas +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23616, 1, 133); --pitre churidars +3 -- DEF
INSERT INTO `item_mods` VALUES (23616, 2, 67); --pitre churidars +3 -- HP
INSERT INTO `item_mods` VALUES (23616, 8, 45); --pitre churidars +3 -- STR
INSERT INTO `item_mods` VALUES (23616, 9, 27); --pitre churidars +3 -- DEX
INSERT INTO `item_mods` VALUES (23616, 10, 27); --pitre churidars +3 -- VIT
INSERT INTO `item_mods` VALUES (23616, 11, 31); --pitre churidars +3 -- AGI
INSERT INTO `item_mods` VALUES (23616, 12, 42); --pitre churidars +3 -- INT
INSERT INTO `item_mods` VALUES (23616, 13, 27); --pitre churidars +3 -- MND
INSERT INTO `item_mods` VALUES (23616, 14, 20); --pitre churidars +3 -- CHR
INSERT INTO `item_mods` VALUES (23616, 25, 46); --pitre churidars +3 -- ACC
INSERT INTO `item_mods` VALUES (23616, 23, 64); --pitre churidars +3 -- ATT
INSERT INTO `item_mods` VALUES (23616, 30, 39); --pitre churidars +3 -- MACC
INSERT INTO `item_mods` VALUES (23616, 68, 53); --pitre churidars +3 -- EVA
INSERT INTO `item_mods` VALUES (23616, 31, 84); --pitre churidars +3 -- MEVA
INSERT INTO `item_mods` VALUES (23616, 29, 5); --pitre churidars +3 -- MDEF
INSERT INTO `item_mods` VALUES (23616, 384, 600); --pitre churidars +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23616, 73, 0); --pitre churidars +3 -- STORETP
INSERT INTO `item_mods` VALUES (23467, 5, 105); --piety briault +3 -- MP
INSERT INTO `item_mods` VALUES (23609, 840, 10); --arcadian braccae +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23535, 12, 36); --archmages gloves +3 -- INT
INSERT INTO `item_mods` VALUES (23483, 14, 33); --horos casaque +3 -- CHR
INSERT INTO `item_mods` VALUES (23416, 491, 15); --horos tiara +3 -- WALTZ_POTENCY
INSERT INTO `item_mods` VALUES (23416, 12, 25); --horos tiara +3 -- INT
INSERT INTO `item_mods` VALUES (23405, 1071, -12); --fallens burgeonet +3 -- DARK_MAGIC_CAST
INSERT INTO `item_mods` VALUES (23617, 29, 10); --horos tights +3 -- MDEF
INSERT INTO `item_mods` VALUES (23617, 11, 30); --horos tights +3 -- AGI
INSERT INTO `item_mods` VALUES (23550, 31, 57); --horos bangles +3 -- MEVA
INSERT INTO `item_mods` VALUES (23416, 2, 86); --horos tiara +3 -- HP
INSERT INTO `item_mods` VALUES (23550, 10, 42); --horos bangles +3 -- VIT
INSERT INTO `item_mods` VALUES (23483, 68, 69); --horos casaque +3 -- EVA
INSERT INTO `item_mods` VALUES (23483, 8, 34); --horos casaque +3 -- STR
INSERT INTO `item_mods` VALUES (23416, 23, 77); --horos tiara +3 -- ATT
INSERT INTO `item_mods` VALUES (23617, 31, 89); --horos tights +3 -- MEVA
INSERT INTO `item_mods` VALUES (23617, 10, 26); --horos tights +3 -- VIT
INSERT INTO `item_mods` VALUES (23550, 68, 55); --horos bangles +3 -- EVA
INSERT INTO `item_mods` VALUES (23416, 1, 123); --horos tiara +3 -- DEF
INSERT INTO `item_mods` VALUES (23550, 9, 45); --horos bangles +3 -- DEX
INSERT INTO `item_mods` VALUES (23483, 30, 40); --horos casaque +3 -- MACC
INSERT INTO `item_mods` VALUES (23483, 5, 64); --horos casaque +3 -- MP
INSERT INTO `item_mods` VALUES (23416, 25, 44); --horos tiara +3 -- ACC
INSERT INTO `item_mods` VALUES (23617, 23, 64); --horos tights +3 -- ATT
INSERT INTO `item_mods` VALUES (23617, 1, 133); --horos tights +3 -- DEF
INSERT INTO `item_mods` VALUES (23550, 25, 43); --horos bangles +3 -- ACC
INSERT INTO `item_mods` VALUES (23550, 1, 111); --horos bangles +3 -- DEF
INSERT INTO `item_mods` VALUES (23483, 13, 33); --horos casaque +3 -- MND
INSERT INTO `item_mods` VALUES (23416, 384, 800); --horos tiara +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23416, 11, 29); --horos tiara +3 -- AGI
INSERT INTO `item_mods` VALUES (23472, 311, 60); --fallens cuirass +3 -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (23617, 384, 600); --horos tights +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23617, 12, 40); --horos tights +3 -- INT
INSERT INTO `item_mods` VALUES (23550, 29, 4); --horos bangles +3 -- MDEF
INSERT INTO `item_mods` VALUES (23416, 5, 43); --horos tiara +3 -- MP
INSERT INTO `item_mods` VALUES (23550, 11, 24); --horos bangles +3 -- AGI
INSERT INTO `item_mods` VALUES (23483, 302, 4); --horos casaque +3 -- TRIPLE_ATTACK
INSERT INTO `item_mods` VALUES (23483, 31, 84); --horos casaque +3 -- MEVA
INSERT INTO `item_mods` VALUES (23483, 9, 39); --horos casaque +3 -- DEX
INSERT INTO `item_mods` VALUES (23416, 30, 37); --horos tiara +3 -- MACC
INSERT INTO `item_mods` VALUES (23479, 5, 135); --glyphic doublet +3 -- MP
INSERT INTO `item_mods` VALUES (23617, 68, 58); --horos tights +3 -- EVA
INSERT INTO `item_mods` VALUES (23617, 8, 42); --horos tights +3 -- STR
INSERT INTO `item_mods` VALUES (23550, 30, 38); --horos bangles +3 -- MACC
INSERT INTO `item_mods` VALUES (23550, 8, 21); --horos bangles +3 -- STR
INSERT INTO `item_mods` VALUES (23483, 384, 400); --horos casaque +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23483, 23, 86); --horos casaque +3 -- ATT
INSERT INTO `item_mods` VALUES (23483, 2, 79); --horos casaque +3 -- HP
INSERT INTO `item_mods` VALUES (23416, 14, 26); --horos tiara +3 -- CHR
INSERT INTO `item_mods` VALUES (23412, 371, -5); --glyphic horn +3 -- AVATAR_PERPETUATION
INSERT INTO `item_mods` VALUES (23617, 25, 45); --horos tights +3 -- ACC
INSERT INTO `item_mods` VALUES (23550, 291, 6); --horos bangles +3 -- COUNTER
INSERT INTO `item_mods` VALUES (23550, 14, 36); --horos bangles +3 -- CHR
INSERT INTO `item_mods` VALUES (23483, 161, -600); --horos casaque +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23483, 12, 33); --horos casaque +3 -- INT
INSERT INTO `item_mods` VALUES (23416, 29, 4); --horos tiara +3 -- MDEF
INSERT INTO `item_mods` VALUES (23416, 10, 25); --horos tiara +3 -- VIT
INSERT INTO `item_mods` VALUES (23617, 492, 50); --horos tights +3 -- JIG_DURATION
INSERT INTO `item_mods` VALUES (23617, 13, 27); --horos tights +3 -- MND
INSERT INTO `item_mods` VALUES (23550, 384, 500); --horos bangles +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23416, 8, 33); --horos tiara +3 -- STR
INSERT INTO `item_mods` VALUES (23550, 12, 22); --horos bangles +3 -- INT
INSERT INTO `item_mods` VALUES (23483, 29, 8); --horos casaque +3 -- MDEF
INSERT INTO `item_mods` VALUES (23483, 10, 34); --horos casaque +3 -- VIT
INSERT INTO `item_mods` VALUES (23416, 68, 64); --horos tiara +3 -- EVA
INSERT INTO `item_mods` VALUES (23617, 30, 45); --horos tights +3 -- MACC
INSERT INTO `item_mods` VALUES (23617, 2, 67); --horos tights +3 -- HP
INSERT INTO `item_mods` VALUES (23550, 23, 74); --horos bangles +3 -- ATT
INSERT INTO `item_mods` VALUES (23550, 2, 85); --horos bangles +3 -- HP
INSERT INTO `item_mods` VALUES (23483, 25, 50); --horos casaque +3 -- ACC
INSERT INTO `item_mods` VALUES (23483, 1, 153); --horos casaque +3 -- DEF
INSERT INTO `item_mods` VALUES (23416, 13, 25); --horos tiara +3 -- MND
INSERT INTO `item_mods` VALUES (23479, 371, -6); --glyphic doublet +3 -- AVATAR_PERPETUATION
INSERT INTO `item_mods` VALUES (23617, 840, 10); --horos tights +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23617, 14, 24); --horos tights +3 -- CHR
INSERT INTO `item_mods` VALUES (23550, 27, 9); --horos bangles +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23550, 13, 40); --horos bangles +3 -- MND
INSERT INTO `item_mods` VALUES (23483, 493, 41); --horos casaque +3 -- VFLOURISH_MACC
INSERT INTO `item_mods` VALUES (23483, 11, 38); --horos casaque +3 -- AGI
INSERT INTO `item_mods` VALUES (23416, 31, 73); --horos tiara +3 -- MEVA
INSERT INTO `item_mods` VALUES (23416, 9, 37); --horos tiara +3 -- DEX
INSERT INTO `item_mods` VALUES (23539, 311, 62); --fallens finger gauntlets +3 -- MAGIC_DAMAGE
INSERT INTO `item_mods` VALUES (23606, 840, 10); --fallens flanchard +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23484, 25, 40); --pedagogy gown +3 -- ACC
INSERT INTO `item_mods` VALUES (23484, 5, 104); --pedagogy gown +3 -- MP
INSERT INTO `item_mods` VALUES (23417, 28, 49); --pedagogy mortarboard +3 -- MATT
INSERT INTO `item_mods` VALUES (23417, 11, 24); --pedagogy mortarboard +3 -- AGI
INSERT INTO `item_mods` VALUES (23614, 840, 10); --luhlaza shalwar +3 -- ALL_WSDMG_ALL_HITS
INSERT INTO `item_mods` VALUES (23551, 25, 38); --pedagogy bracers +3 -- ACC
INSERT INTO `item_mods` VALUES (23484, 401, 5); --pedagogy gown +3 -- SUBLIMATION_BONUS
INSERT INTO `item_mods` VALUES (23484, 29, 10); --pedagogy gown +3 -- MDEF
INSERT INTO `item_mods` VALUES (23484, 12, 39); --pedagogy gown +3 -- INT
INSERT INTO `item_mods` VALUES (23417, 30, 37); --pedagogy mortarboard +3 -- MACC
INSERT INTO `item_mods` VALUES (23417, 8, 24); --pedagogy mortarboard +3 -- STR
INSERT INTO `item_mods` VALUES (23551, 30, 38); --pedagogy bracers +3 -- MACC
INSERT INTO `item_mods` VALUES (23610, 839, 35); --sakonji haidate +3 -- THIRD_EYE_ANTICIPATE_RATE
INSERT INTO `item_mods` VALUES (23417, 489, -13); --pedagogy mortarboard +3 -- GRIMOIRE_SPELLCASTING
INSERT INTO `item_mods` VALUES (23551, 9, 38); --pedagogy bracers +3 -- DEX
INSERT INTO `item_mods` VALUES (23551, 68, 42); --pedagogy bracers +3 -- EVA
INSERT INTO `item_mods` VALUES (23610, 1047, 25); --sakonji haidate +3 -- COUNTER_DAMAGE
INSERT INTO `item_mods` VALUES (23551, 5, 75); --pedagogy bracers +3 -- MP
INSERT INTO `item_mods` VALUES (23484, 384, 300); --pedagogy gown +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23484, 68, 61); --pedagogy gown +3 -- EVA
INSERT INTO `item_mods` VALUES (23484, 9, 31); --pedagogy gown +3 -- DEX
INSERT INTO `item_mods` VALUES (23417, 384, 600); --pedagogy mortarboard +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23417, 13, 39); --pedagogy mortarboard +3 -- MND
INSERT INTO `item_mods` VALUES (23417, 1, 112); --pedagogy mortarboard +3 -- DEF
INSERT INTO `item_mods` VALUES (23551, 28, 50); --pedagogy bracers +3 -- MATT
INSERT INTO `item_mods` VALUES (23551, 1, 100); --pedagogy bracers +3 -- DEF
INSERT INTO `item_mods` VALUES (23484, 14, 39); --pedagogy gown +3 -- CHR
INSERT INTO `item_mods` VALUES (23484, 2, 99); --pedagogy gown +3 -- HP
INSERT INTO `item_mods` VALUES (23417, 31, 95); --pedagogy mortarboard +3 -- MEVA
INSERT INTO `item_mods` VALUES (23417, 10, 24); --pedagogy mortarboard +3 -- VIT
INSERT INTO `item_mods` VALUES (23484, 113, 19); --pedagogy gown +3 -- ENHANCE
INSERT INTO `item_mods` VALUES (23484, 28, 52); --pedagogy gown +3 -- MATT
INSERT INTO `item_mods` VALUES (23484, 11, 31); --pedagogy gown +3 -- AGI
INSERT INTO `item_mods` VALUES (23417, 25, 37); --pedagogy mortarboard +3 -- ACC
INSERT INTO `item_mods` VALUES (23417, 5, 82); --pedagogy mortarboard +3 -- MP
INSERT INTO `item_mods` VALUES (23551, 8, 16); --pedagogy bracers +3 -- STR
INSERT INTO `item_mods` VALUES (23484, 31, 100); --pedagogy gown +3 -- MEVA
INSERT INTO `item_mods` VALUES (23484, 10, 31); --pedagogy gown +3 -- VIT
INSERT INTO `item_mods` VALUES (23417, 123, 19); --pedagogy mortarboard +3 -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (23417, 14, 29); --pedagogy mortarboard +3 -- CHR
INSERT INTO `item_mods` VALUES (23417, 2, 86); --pedagogy mortarboard +3 -- HP
INSERT INTO `item_mods` VALUES (23484, 112, 19); --pedagogy gown +3 -- HEALING
INSERT INTO `item_mods` VALUES (23551, 10, 35); --pedagogy bracers +3 -- VIT
INSERT INTO `item_mods` VALUES (23551, 31, 57); --pedagogy bracers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23551, 12, 32); --pedagogy bracers +3 -- INT
INSERT INTO `item_mods` VALUES (23551, 13, 46); --pedagogy bracers +3 -- MND
INSERT INTO `item_mods` VALUES (23417, 9, 24); --pedagogy mortarboard +3 -- DEX
INSERT INTO `item_mods` VALUES (23417, 68, 56); --pedagogy mortarboard +3 -- EVA
INSERT INTO `item_mods` VALUES (23484, 1, 144); --pedagogy gown +3 -- DEF
INSERT INTO `item_mods` VALUES (23484, 13, 39); --pedagogy gown +3 -- MND
INSERT INTO `item_mods` VALUES (23484, 890, 12); --pedagogy gown +3 -- ENH_MAGIC_DURATION
INSERT INTO `item_mods` VALUES (23551, 11, 15); --pedagogy bracers +3 -- AGI
INSERT INTO `item_mods` VALUES (23551, 384, 300); --pedagogy bracers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23551, 29, 5); --pedagogy bracers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23413, 1075, 24); --luhlaza keffiyeh +3 -- BREATH_DMG_DEALT
INSERT INTO `item_mods` VALUES (23417, 12, 39); --pedagogy mortarboard +3 -- INT
INSERT INTO `item_mods` VALUES (23417, 29, 7); --pedagogy mortarboard +3 -- MDEF
INSERT INTO `item_mods` VALUES (23484, 8, 31); --pedagogy gown +3 -- STR
INSERT INTO `item_mods` VALUES (23484, 30, 40); --pedagogy gown +3 -- MACC
INSERT INTO `item_mods` VALUES (23551, 2, 42); --pedagogy bracers +3 -- HP
INSERT INTO `item_mods` VALUES (23551, 14, 29); --pedagogy bracers +3 -- CHR
INSERT INTO `item_mods` VALUES (23551, 112, 19); --pedagogy bracers +3 -- HEALING
INSERT INTO `item_mods` VALUES (23551, 114, 19); --pedagogy bracers +3 -- ENFEEBLE
INSERT INTO `item_mods` VALUES (23551, 27, -7); --pedagogy bracers +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23551, 374, 3); --pedagogy bracers +3 -- CURE_POTENCY
INSERT INTO `item_mods` VALUES (23551, 260, 3); --pedagogy bracers +3 -- CURE_POTENCY_II
INSERT INTO `item_mods` VALUES (23618, 1, 126); --pedagogy pants +3 -- DEF
INSERT INTO `item_mods` VALUES (23618, 2, 83); --pedagogy pants +3 -- HP
INSERT INTO `item_mods` VALUES (23618, 5, 69); --pedagogy pants +3 -- MP
INSERT INTO `item_mods` VALUES (23618, 8, 35); --pedagogy pants +3 -- STR
INSERT INTO `item_mods` VALUES (23618, 10, 22); --pedagogy pants +3 -- VIT
INSERT INTO `item_mods` VALUES (23618, 11, 27); --pedagogy pants +3 -- AGI
INSERT INTO `item_mods` VALUES (23618, 12, 47); --pedagogy pants +3 -- INT
INSERT INTO `item_mods` VALUES (23618, 13, 34); --pedagogy pants +3 -- MND
INSERT INTO `item_mods` VALUES (23618, 14, 29); --pedagogy pants +3 -- CHR
INSERT INTO `item_mods` VALUES (23618, 25, 39); --pedagogy pants +3 -- ACC
INSERT INTO `item_mods` VALUES (23618, 30, 39); --pedagogy pants +3 -- MACC
INSERT INTO `item_mods` VALUES (23618, 68, 47); --pedagogy pants +3 -- EVA
INSERT INTO `item_mods` VALUES (23618, 31, 127); --pedagogy pants +3 -- MEVA
INSERT INTO `item_mods` VALUES (23618, 28, 51); --pedagogy pants +3 -- MATT
INSERT INTO `item_mods` VALUES (23618, 29, 8); --pedagogy pants +3 -- MDEF
INSERT INTO `item_mods` VALUES (23618, 384, 500); --pedagogy pants +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23618, 27, -7); --pedagogy pants +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23618, 123, 19); --pedagogy pants +3 -- GEOMANCY_SKILL
INSERT INTO `item_mods` VALUES (23618, 116, 19); --pedagogy pants +3 -- DARK
INSERT INTO `item_mods` VALUES (23618, 315, 15); --pedagogy pants +3 -- ENH_DRAIN_ASPIR
INSERT INTO `item_mods` VALUES (23419, 1, 124); --futhark bandeau +3 -- DEF
INSERT INTO `item_mods` VALUES (23419, 2, 56); --futhark bandeau +3 -- HP
INSERT INTO `item_mods` VALUES (23419, 5, 88); --futhark bandeau +3 -- MP
INSERT INTO `item_mods` VALUES (23419, 8, 23); --futhark bandeau +3 -- STR
INSERT INTO `item_mods` VALUES (23419, 9, 27); --futhark bandeau +3 -- DEX
INSERT INTO `item_mods` VALUES (23419, 10, 30); --futhark bandeau +3 -- VIT
INSERT INTO `item_mods` VALUES (23419, 11, 34); --futhark bandeau +3 -- AGI
INSERT INTO `item_mods` VALUES (23419, 12, 23); --futhark bandeau +3 -- INT
INSERT INTO `item_mods` VALUES (23419, 13, 23); --futhark bandeau +3 -- MND
INSERT INTO `item_mods` VALUES (23419, 14, 24); --futhark bandeau +3 -- CHR
INSERT INTO `item_mods` VALUES (23419, 25, 37); --futhark bandeau +3 -- ACC
INSERT INTO `item_mods` VALUES (23419, 23, 62); --futhark bandeau +3 -- ATT
INSERT INTO `item_mods` VALUES (23419, 30, 37); --futhark bandeau +3 -- MACC
INSERT INTO `item_mods` VALUES (23419, 68, 64); --futhark bandeau +3 -- EVA
INSERT INTO `item_mods` VALUES (23419, 31, 73); --futhark bandeau +3 -- MEVA
INSERT INTO `item_mods` VALUES (23419, 29, 4); --futhark bandeau +3 -- MDEF
INSERT INTO `item_mods` VALUES (23419, 384, 800); --futhark bandeau +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23419, 301, 7); --futhark bandeau +3 -- PHALANX
INSERT INTO `item_mods` VALUES (23419, 161, -600); --futhark bandeau +3 -- DMGPHYS
INSERT INTO `item_mods` VALUES (23486, 1, 156); --futhark coat +3 -- DEF
INSERT INTO `item_mods` VALUES (23486, 2, 119); --futhark coat +3 -- HP
INSERT INTO `item_mods` VALUES (23486, 5, 104); --futhark coat +3 -- MP
INSERT INTO `item_mods` VALUES (23486, 8, 34); --futhark coat +3 -- STR
INSERT INTO `item_mods` VALUES (23486, 9, 39); --futhark coat +3 -- DEX
INSERT INTO `item_mods` VALUES (23486, 10, 34); --futhark coat +3 -- VIT
INSERT INTO `item_mods` VALUES (23486, 11, 38); --futhark coat +3 -- AGI
INSERT INTO `item_mods` VALUES (23486, 12, 33); --futhark coat +3 -- INT
INSERT INTO `item_mods` VALUES (23486, 13, 33); --futhark coat +3 -- MND
INSERT INTO `item_mods` VALUES (23486, 14, 33); --futhark coat +3 -- CHR
INSERT INTO `item_mods` VALUES (23486, 25, 40); --futhark coat +3 -- ACC
INSERT INTO `item_mods` VALUES (23486, 23, 65); --futhark coat +3 -- ATT
INSERT INTO `item_mods` VALUES (23486, 30, 40); --futhark coat +3 -- MACC
INSERT INTO `item_mods` VALUES (23486, 68, 69); --futhark coat +3 -- EVA
INSERT INTO `item_mods` VALUES (23486, 31, 84); --futhark coat +3 -- MEVA
INSERT INTO `item_mods` VALUES (23486, 29, 8); --futhark coat +3 -- MDEF
INSERT INTO `item_mods` VALUES (23486, 384, 400); --futhark coat +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23486, 370, 5); --futhark coat +3 -- REGEN
INSERT INTO `item_mods` VALUES (23486, 1009, 5); --futhark coat +3 -- LIEMENT
INSERT INTO `item_mods` VALUES (23486, 160, -9); --futhark coat +3 -- DMG
INSERT INTO `item_mods` VALUES (23553, 1, 112); --futhark mitons +3 -- DEF
INSERT INTO `item_mods` VALUES (23553, 2, 45); --futhark mitons +3 -- HP
INSERT INTO `item_mods` VALUES (23553, 8, 21); --futhark mitons +3 -- STR
INSERT INTO `item_mods` VALUES (23553, 9, 45); --futhark mitons +3 -- DEX
INSERT INTO `item_mods` VALUES (23553, 10, 42); --futhark mitons +3 -- VIT
INSERT INTO `item_mods` VALUES (23553, 11, 15); --futhark mitons +3 -- AGI
INSERT INTO `item_mods` VALUES (23553, 12, 22); --futhark mitons +3 -- INT
INSERT INTO `item_mods` VALUES (23553, 13, 40); --futhark mitons +3 -- MND
INSERT INTO `item_mods` VALUES (23553, 14, 27); --futhark mitons +3 -- CHR
INSERT INTO `item_mods` VALUES (23553, 25, 38); --futhark mitons +3 -- ACC
INSERT INTO `item_mods` VALUES (23553, 23, 81); --futhark mitons +3 -- ATT
INSERT INTO `item_mods` VALUES (23553, 30, 38); --futhark mitons +3 -- MACC
INSERT INTO `item_mods` VALUES (23553, 68, 44); --futhark mitons +3 -- EVA
INSERT INTO `item_mods` VALUES (23553, 31, 57); --futhark mitons +3 -- MEVA
INSERT INTO `item_mods` VALUES (23553, 29, 8); --futhark mitons +3 -- MDEF
INSERT INTO `item_mods` VALUES (23553, 384, 500); --futhark mitons +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23553, 27, 6); --futhark mitons +3 -- ENMITY
INSERT INTO `item_mods` VALUES (23620, 12, 40); --futhark trousers +3 -- INT
INSERT INTO `item_mods` VALUES (23620, 170, 15); --futhark trousers +3 -- FASTCAST
INSERT INTO `item_mods` VALUES (23620, 890, 30); --futhark trousers +3 -- ENH_MAGIC_DURATION
INSERT INTO `item_mods` VALUES (23620, 10, 26); --futhark trousers +3 -- VIT
INSERT INTO `item_mods` VALUES (23620, 29, 7); --futhark trousers +3 -- MDEF
INSERT INTO `item_mods` VALUES (23620, 31, 89); --futhark trousers +3 -- MEVA
INSERT INTO `item_mods` VALUES (23620, 2, 107); --futhark trousers +3 -- HP
INSERT INTO `item_mods` VALUES (23620, 68, 58); --futhark trousers +3 -- EVA
INSERT INTO `item_mods` VALUES (23620, 30, 39); --futhark trousers +3 -- MACC
INSERT INTO `item_mods` VALUES (23620, 13, 27); --futhark trousers +3 -- MND
INSERT INTO `item_mods` VALUES (23620, 23, 64); --futhark trousers +3 -- ATT
INSERT INTO `item_mods` VALUES (23620, 25, 39); --futhark trousers +3 -- ACC
INSERT INTO `item_mods` VALUES (23620, 11, 30); --futhark trousers +3 -- AGI
INSERT INTO `item_mods` VALUES (23620, 384, 600); --futhark trousers +3 -- HASTE_GEAR
INSERT INTO `item_mods` VALUES (23620, 8, 39); --futhark trousers +3 -- STR
INSERT INTO `item_mods` VALUES (23620, 1, 139); --futhark trousers +3 -- DEF
INSERT INTO `item_mods` VALUES (23620, 14, 21); --futhark trousers +3 -- CHR
INSERT INTO `item_mods` VALUES (23553, 1008, 9); --futhark mitons +3 -- SWORDPLAY
INSERT INTO `item_mods` VALUES (21689,  2, 70); -- Montante +1 -- HP
INSERT INTO `item_mods` VALUES (21689, 23, 34); -- Montante +1 -- ATT
INSERT INTO `item_mods` VALUES (21689, 73, 11); -- Montante +1 -- Store TP
INSERT INTO `item_mods` VALUES (20757, 10, 8); -- Forshock sword -- VIT
INSERT INTO `item_mods` VALUES (20757, 12, 13); -- Forshock sword  -- INT
INSERT INTO `item_mods` VALUES (20757, 25, 15); -- Forshock sword  -- ACC
INSERT INTO `item_mods` VALUES (20757, 23, 26); -- Forshock sword  -- ATT
INSERT INTO `item_mods` VALUES (27548, 8, 2); -- Odnowa earring -- str
INSERT INTO `item_mods` VALUES (27548, 10, 2); -- Odnowa earring -- vit
INSERT INTO `item_mods` VALUES (27548, 4, 100); -- Odnowa earring -- convert mp to hp
INSERT INTO `item_mods` VALUES (27548, 163, -100); -- Odnowa earring -- magic damage taken
INSERT INTO `item_mods` VALUES (27542, 9, 3); -- dominance earring -- dex
INSERT INTO `item_mods` VALUES (27542, 251, 10); -- dominance earring -- resist stun
INSERT INTO `item_mods` VALUES (27543, 9, 4); -- dominance earring +1 -- dex
INSERT INTO `item_mods` VALUES (27543, 251, 11); -- dominance earring +1 -- resist stun
INSERT INTO `item_mods` VALUES (27150, 1, 90); -- gazu bracelets -- Def
INSERT INTO `item_mods` VALUES (27150, 2, 27); -- gazu bracelets -- hp
INSERT INTO `item_mods` VALUES (27150, 8, 10); -- gazu bracelets -- str
INSERT INTO `item_mods` VALUES (27150, 9, 32); -- gazu bracelets -- dex
INSERT INTO `item_mods` VALUES (27150, 10, 32); -- gazu bracelets -- vit
INSERT INTO `item_mods` VALUES (27150, 11, 6); -- gazu bracelets -- agi
INSERT INTO `item_mods` VALUES (27150, 12, 14); -- gazu bracelets -- int
INSERT INTO `item_mods` VALUES (27150, 13, 29); -- gazu bracelets -- mnd
INSERT INTO `item_mods` VALUES (27150, 14, 19); -- gazu bracelets -- chr
INSERT INTO `item_mods` VALUES (27150, 25, 45); -- gazu bracelets -- acc -- includes unity ranking
INSERT INTO `item_mods` VALUES (27150, 23, -18); -- gazu bracelets -- att
INSERT INTO `item_mods` VALUES (27150, 68, 22); -- gazu bracelets -- eva
INSERT INTO `item_mods` VALUES (27150, 31, 43); -- gazu bracelets -- mag eva
INSERT INTO `item_mods` VALUES (27150, 29, 2); -- gazu bracelets -- mdef
INSERT INTO `item_mods` VALUES (27150, 384, 500); -- gazu bracelets -- haste
INSERT INTO `item_mods` VALUES (27151, 1, 91); -- gazu bracelets +1 -- Def
INSERT INTO `item_mods` VALUES (27151, 2, 27); -- gazu bracelets +1 -- hp
INSERT INTO `item_mods` VALUES (27151, 8, 10); -- gazu bracelets +1 -- str
INSERT INTO `item_mods` VALUES (27151, 9, 32); -- gazu bracelets +1 -- dex
INSERT INTO `item_mods` VALUES (27151, 10, 32); -- gazu bracelets +1 -- vit
INSERT INTO `item_mods` VALUES (27151, 11, 6); -- gazu bracelets +1 -- agi
INSERT INTO `item_mods` VALUES (27151, 12, 14); -- gazu bracelets +1 -- int
INSERT INTO `item_mods` VALUES (27151, 13, 29); -- gazu bracelets +1 -- mnd
INSERT INTO `item_mods` VALUES (27151, 14, 19); -- gazu bracelets +1 -- chr
INSERT INTO `item_mods` VALUES (27151, 25, 46); -- gazu bracelets +1 -- acc -- includes unity ranking
INSERT INTO `item_mods` VALUES (27151, 23, -17); -- gazu bracelets +1 -- att
INSERT INTO `item_mods` VALUES (27151, 68, 22); -- gazu bracelets +1 -- eva
INSERT INTO `item_mods` VALUES (27151, 31, 43); -- gazu bracelets +1 -- mag eva
INSERT INTO `item_mods` VALUES (27151, 29, 2); -- gazu bracelets +1 -- mdef
INSERT INTO `item_mods` VALUES (27151, 384, 500); -- gazu bracelets +1 -- haste
INSERT INTO `item_mods` VALUES (20580, 26, 24); -- kustawi dagger -- RACC
INSERT INTO `item_mods` VALUES (20580, 24, 15); -- kustawi dagger -- RATT
INSERT INTO `item_mods` VALUES (20580, 68, 22); -- kustawi dagger -- EVA
INSERT INTO `item_mods` VALUES (20580, 27, -4); -- kustawi dagger -- ENMITY
INSERT INTO `item_mods` VALUES (20581, 26, 25); -- kustawi dagger +1 -- RACC
INSERT INTO `item_mods` VALUES (20581, 24, 16); -- kustawi dagger +1 -- RATT
INSERT INTO `item_mods` VALUES (20581, 68, 22); -- kustawi dagger +1 -- EVA
INSERT INTO `item_mods` VALUES (20581, 27, -5); -- kustawi dagger +1 -- ENMITY
INSERT INTO `item_mods` VALUES (26104, 1, 20); -- Njordr earring -- def
INSERT INTO `item_mods` VALUES (26104, 122, 10); -- Njordr earring -- blue skill 
INSERT INTO `item_mods` VALUES (27601, 1, 20); -- grounded mantle -- def  
INSERT INTO `item_mods` VALUES (27601, 25, 20); -- grounded mantle -- acc  
INSERT INTO `item_mods` VALUES (27601, 196, 15); -- grounded mantle -- lightning resist  
INSERT INTO `item_mods` VALUES (27601, 384, 100); -- grounded mantle -- haste  
INSERT INTO `item_mods` VALUES (27602, 1, 21); -- grounded mantle +1 -- def  
INSERT INTO `item_mods` VALUES (27602, 25, 21); -- grounded mantle +1 -- acc  
INSERT INTO `item_mods` VALUES (27602, 196, 20); -- grounded mantle +1 -- lightning resist  
INSERT INTO `item_mods` VALUES (27602, 384, 200); -- grounded mantle +1 -- haste  
INSERT INTO `item_mods` VALUES (25855, 1, 129); -- tatenashi haidate  -- def
INSERT INTO `item_mods` VALUES (25855, 2, 50); -- tatenashi haidate  -- hp
INSERT INTO `item_mods` VALUES (25855, 8, 44); -- tatenashi haidate  -- str
INSERT INTO `item_mods` VALUES (25855, 10, 25); -- tatenashi haidate  -- vit
INSERT INTO `item_mods` VALUES (25855, 11, 15); -- tatenashi haidate  -- agi
INSERT INTO `item_mods` VALUES (25855, 12, 23); -- tatenashi haidate  -- int
INSERT INTO `item_mods` VALUES (25855, 13, 12); -- tatenashi haidate  -- mnd
INSERT INTO `item_mods` VALUES (25855, 14, 10); -- tatenashi haidate  -- chr
INSERT INTO `item_mods` VALUES (25855, 23, 30); -- tatenashi haidate  -- att
INSERT INTO `item_mods` VALUES (25855, 68, 24); -- tatenashi haidate  -- eva
INSERT INTO `item_mods` VALUES (25855, 31, 80); -- tatenashi haidate  -- meva
INSERT INTO `item_mods` VALUES (25855, 29, 3); -- tatenashi haidate  -- mdef
INSERT INTO `item_mods` VALUES (25855, 384, 500); -- tatenashi haidate  -- haste
INSERT INTO `item_mods` VALUES (25855, 306, 5); -- tatenashi haidate  -- zanshin
INSERT INTO `item_mods` VALUES (25856, 1, 130); -- tatenashi haidate +1 -- def
INSERT INTO `item_mods` VALUES (25856, 2, 50); -- tatenashi haidate  +1 -- hp
INSERT INTO `item_mods` VALUES (25856, 8, 45); -- tatenashi haidate  +1 -- str
INSERT INTO `item_mods` VALUES (25856, 10, 25); -- tatenashi haidate  +1 -- vit
INSERT INTO `item_mods` VALUES (25856, 11, 15); -- tatenashi haidate  +1 -- agi
INSERT INTO `item_mods` VALUES (25856, 12, 23); -- tatenashi haidate  +1 -- int
INSERT INTO `item_mods` VALUES (25856, 13, 12); -- tatenashi haidate  +1 -- mnd
INSERT INTO `item_mods` VALUES (25856, 14, 10); -- tatenashi haidate  +1 -- chr
INSERT INTO `item_mods` VALUES (25856, 23, 31); -- tatenashi haidate  +1 -- att
INSERT INTO `item_mods` VALUES (25856, 68, 24); -- tatenashi haidate  +1 -- eva
INSERT INTO `item_mods` VALUES (25856, 31, 80); -- tatenashi haidate  +1 -- meva
INSERT INTO `item_mods` VALUES (25856, 29, 3); -- tatenashi haidate  +1 -- mdef
INSERT INTO `item_mods` VALUES (25856, 384, 500); -- tatenashi haidate  +1 -- haste
INSERT INTO `item_mods` VALUES (25856, 306, 6); -- tatenashi haidate  +1 -- zanshin
INSERT INTO `item_mods` VALUES (21688, 23, 33); -- montante sword  -- att
INSERT INTO `item_mods` VALUES (21688, 73, 10); -- montante sword  -- store tp
INSERT INTO `item_mods` VALUES (20679, 2, 50); -- tanmogayi sword -- hp
INSERT INTO `item_mods` VALUES (20679, 5, 50); -- tanmogayi sword -- mp
INSERT INTO `item_mods` VALUES (20679, 25, 35); -- tanmogayi sword -- acc
INSERT INTO `item_mods` VALUES (20679, 165, 3); -- tanmogayi sword -- crit hit rate
INSERT INTO `item_mods` VALUES (20680, 2, 55); -- tanmogayi sword +1 -- hp
INSERT INTO `item_mods` VALUES (20680, 5, 55); -- tanmogayi sword +1 -- mp
INSERT INTO `item_mods` VALUES (20680, 25, 36); -- tanmogayi sword +1 -- acc
INSERT INTO `item_mods` VALUES (20680, 165, 4); -- tanmogayi sword +1 -- crit hit rate
INSERT INTO `item_mods` VALUES (27532, 25, 9); -- zwozo earring -- acc
INSERT INTO `item_mods` VALUES (27532, 225, 4); -- zwozo earring -- bird killer
INSERT INTO `item_mods` VALUES (27532, 162, -100); -- zwozo earring -- breath dmg taken 
INSERT INTO `item_mods` VALUES (27533, 25, 10); -- zwozo earring +1 -- acc
INSERT INTO `item_mods` VALUES (27533, 225, 5); -- zwozo earring +1 -- bird killer
INSERT INTO `item_mods` VALUES (27533, 162, -200); -- zwozo earring +1 -- breath dmg taken 