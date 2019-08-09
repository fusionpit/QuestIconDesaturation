local _, qid = ...

local questsNeverMarkedComplete = {
    5, -- Jitters' Growling Gut
    19, -- Tharil'zun
    26, -- A Lesson to Learn
    27, -- A Lesson to Learn
    35, -- Further Concerns
    39, -- Deliver Thomas' Report
    40, -- A Fishy Peril
    65, -- The Defias Brotherhood
    66, -- The Legend of Stalvan
    69, -- The Legend of Stalvan
    85, -- Lost Necklace
    97, -- The Legend of Stalvan
    100, -- Call of Water
    109, -- Report to Gryan Stoutmantle
    110, -- Insect Part Analysis
    111, -- Speak with Gramma
    130, -- Visit the Herbalist
    148, -- Supplies from Darkshire
    158, -- Zombie Juice
    163, -- Raven Hill
    165, -- The Hermit
    172, -- Children's Week
    175, -- Look To The Stars
    215, -- Jungle Secrets
    219, -- Missing In Action
    225, -- The Weathered Grave
    227, -- Morgan Ladimore
    229, -- The Daughter Who Lived
    235, -- The Ashenvale Hunt
    239, -- Westbrook Garrison Needs Help!
    243, -- Into the Field
    244, -- Encroaching Gnolls
    247, -- The Hunt Completed
    270, -- The Doomed Fleet
    273, -- Resupplying the Excavation
    283, -- A Dark Threat Looms
    302, -- Powder to Ironband
    305, -- In Search of The Excavation Team
    309, -- Protecting the Shipment
    318, -- Evershine
    330, -- Patrol Schedules
    331, -- Report to Doren
    343, -- Speaking of Fortitude
    344, -- Brother Paxton
    345, -- Ink Supplies
    350, -- Look to an Old Friend
    355, -- Speak with Sevren
    359, -- Forsaken Duties
    360, -- Return to the Magistrate
    363, -- Rude Awakening
    389, -- Bazil Thredd
    394, -- The Head of the Beast
    395, -- Brotherhood's End
    397, -- You Have Served Us Well
    401, -- Wait for Sirra to Finish
    415, -- Rejold's New Brew
    428, -- Lost Deathstalkers
    435, -- Escorting Erland
    436, -- Ironband's Excavation
    448, -- Report to Hadrec
    452, -- Pyrewood Ambush
    454, -- After the Ambush
    458, -- The Woodland Protector
    463, -- The Greenwarden
    467, -- Stonegear's Search
    468, -- Report to Mountaineer Rockgar
    472, -- Fall of Dun Modr
    473, -- Report to Captain Stoutfist
    475, -- A Troubling Breeze
    476, -- Gnarlpine Corruption
    482, -- Dalaran's Intentions
    494, -- Time To Strike
    495, -- The Crown of Will
    506, -- Blackmoore's Legacy
    538, -- Southshore
    561, -- Farren's Proof
    583, -- Welcome to the Jungle
    588, -- The Fate of Yenniku
    590, -- A Rogue's Deal
    594, -- Message in a Bottle
    597, -- The Bloodsail Buccaneers
    599, -- The Bloodsail Buccaneers
    603, -- Ansirem's Key
    616, -- The Haunted Isle
    634, -- Plea To The Alliance
    638, -- Trollbane
    648, -- Rescue OOX-17/TN!
    649, -- Ripple Recovery
    650, -- Ripple Recovery
    653, -- Myzrael's Allies
    655, -- Hammerfall
    657, -- Hints of a New Plague?
    659, -- Hints of a New Plague?
    660, -- Hints of a New Plague?
    661, -- Hints of a New Plague?
    663, -- Land Ho!
    665, -- Sunken Treasure
    667, -- Death From Below
    675, -- Raising Spirits
    686, -- A King's Tribute
    687, -- Theldurin the Lost
    688, -- Myzrael's Allies
    690, -- Malin's Request
    695, -- An Apprentice's Enchantment
    700, -- A King's Tribute
    707, -- Ironband Wants You!
    720, -- A Sign of Hope
    721, -- A Sign of Hope
    726, -- Passing Word of a Threat
    729, -- The Absent Minded Prospector
    730, -- Trouble In Darkshore?
    731, -- The Absent Minded Prospector
    734, -- This Is Going to Be Hard
    742, -- The Ashenvale Hunt
    752, -- A Humble Task
    754, -- Winterhoof Cleansing
    755, -- Rites of the Earthmother
    758, -- Thunderhorn Cleansing
    760, -- Wildmane Cleansing
    767, -- Rite of Vision
    770, -- The Demon Scarred Cloak
    772, -- Rite of Vision
    773, -- Rite of Wisdom
    775, -- Journey into Thunder Bluff
    783, -- A Threat Within
    787, -- The New Horde
    804, -- Sarkoth
    805, -- Report to Sen'jin Village
    809, -- Ak'Zeloth
    823, -- Report to Orgnil
    828, -- Margoz
    836, -- Rescue OOX-09/HL!
    838, -- Scholomance
    847, -- Guile of the Raptor
    854, -- Journey to the Crossroads
    860, -- Sergra Darkthorn
    863, -- The Escape
    869, -- Raptor Thieves
    874, -- Mahren Skyseer
    886, -- The Barrens Oases
    898, -- Free From the Hold
    910, -- Down at the Docks
    911, -- Gateway to the Frontier
    920, -- Tenaron's Summons
    936, -- Assisting Arch Druid Runetotem
    938, -- Mist
    945, -- Therylune's Escape
    948, -- Onu
    965, -- The Tower of Althalaxx
    972, -- Water Sapta
    975, -- Cache of Mau'ari
    976, -- Supplies to Auberdine
    979, -- Find Ranshalla
    980, -- The New Springs
    981, -- The Tower of Althalaxx
    990, -- Trek to Ashenvale
    991, -- Raene's Cleansing
    994, -- Escape Through Force
    995, -- Escape Through Stealth
    1000, -- The New Frontier
    1004, -- The New Frontier
    1015, -- The New Frontier
    1018, -- The New Frontier
    1019, -- The New Frontier
    1021, -- Vile Satyr! Dryads in Danger!
    1029, -- Raene's Cleansing
    1030, -- Raene's Cleansing
    1036, -- Avast Ye, Scallywag
    1037, -- Velinde Starsong
    1039, -- The Barrens Port
    1040, -- Passage to Booty Bay
    1041, -- The Caravan Road
    1042, -- The Carevin Family
    1044, -- Answered Questions
    1047, -- The New Frontier
    1055, -- Raene's Cleansing
    1056, -- Journey to Stonetalon Peak
    1059, -- Reclaiming the Charred Vale
    1061, -- The Spirits of Stonetalon
    1063, -- The Elder Crone
    1064, -- Forsaken Aid
    1070, -- On Guard in Stonetalon
    1072, -- An Old Colleague
    1075, -- A Scroll from Mauren
    1081, -- Reception from Tyrande
    1082, -- Update for Sentinel Thenysil
    1085, -- On Guard in Stonetalon
    1086, -- The Flying Machine Airport
    1090, -- Gerenzo's Orders
    1095, -- Further Instructions
    1097, -- Elmore's Task
    1098, -- Deathstalkers in Shadowfang
    1115, -- The Rumormonger
    1123, -- Rabine Saturna
    1130, -- Melor Sends Word
    1132, -- Fiora Longears
    1133, -- Journey to Astranaar
    1137, -- News for Fizzle
    1144, -- Willix the Importer
    1152, -- Test of Lore
    1159, -- Test of Lore
    1167, -- The Tower of Althalaxx
    1170, -- The Brood of Onyxia
    1171, -- The Brood of Onyxia
    1173, -- Challenge Overlord Mok'Morokk
    1178, -- Goblin Sponsorship
    1180, -- Goblin Sponsorship
    1181, -- Goblin Sponsorship
    1184, -- Parts of the Swarm
    1185, -- Under the Chitin Was...
    1186, -- The Eighteenth Pilot
    1191, -- Zamek's Distraction
    1194, -- Rizzle's Schematics
    1198, -- In Search of Thaelrid
    1222, -- Stinky's Escape
    1246, -- The Missing Diplomat
    1247, -- The Missing Diplomat
    1248, -- The Missing Diplomat
    1249, -- The Missing Diplomat
    1250, -- The Missing Diplomat
    1259, -- Lieutenant Paval Reethe
    1260, -- Morgan Stern
    1264, -- The Missing Diplomat
    1266, -- The Missing Diplomat
    1267, -- The Missing Diplomat
    1268, -- Suspicious Hoofprints
    1270, -- Stinky's Escape
    1271, -- Feast at the Blue Recluse
    1273, -- Questioning Reethe
    1274, -- The Missing Diplomat
    1282, -- They Call Him Smiling Jim
    1284, -- Suspicious Hoofprints
    1285, -- Daelin's Men
    1286, -- The Deserters
    1287, -- The Deserters
    1301, -- James Hyal
    1302, -- James Hyal
    1320, -- The Black Shield
    1323, -- The Black Shield
    1324, -- The Missing Diplomat
    1339, -- Mountaineer Stormpike's Task
    1361, -- Regthar Deathgate
    1362, -- The Kolkar of Desolace
    1363, -- Mazen's Behest
    1367, -- Magram Alliance
    1368, -- Gelkis Alliance
    1372, -- Nothing But The Truth
    1382, -- Strange Alliance
    1385, -- Brutal Politics
    1394, -- Final Passage
    1418, -- Neeka Bloodscar
    1422, -- Threat From the Sea
    1427, -- Threat From the Sea
    1431, -- Alliance Relations
    1432, -- Alliance Relations
    1433, -- Alliance Relations
    1436, -- Alliance Relations
    1438, -- Vahlarriel's Search
    1440, -- Return to Vahlarriel
    1444, -- Return to Fel'Zerul
    1447, -- The Missing Diplomat
    1449, -- To The Hinterlands
    1450, -- Gryphon Master Talonaxe
    1451, -- Rhapsody Shindigger
    1453, -- Reclaimers' Business in Desolace
    1455, -- The Karnitol Shipwreck
    1462, -- Earth Sapta
    1463, -- Earth Sapta
    1464, -- Fire Sapta
    1468, -- Children's Week
    1472, -- Devourer of Souls
    1477, -- Vital Supplies
    1478, -- Halgar's Summons
    1479, -- The Bough of the Eternals
    1483, -- Ziz Fizziks
    1484, -- The Corrupter
    1489, -- Hamuul Runetotem
    1490, -- Nara Wildmane
    1499, -- Vile Familiars
    1502, -- Thun'grim Firegaze
    1505, -- Veteran Uzzek
    1506, -- Gan'rul's Summons
    1507, -- Devourer of Souls
    1508, -- Blind Cazul
    1509, -- News of Dogran
    1510, -- News of Dogran
    1517, -- Call of Earth
    1520, -- Call of Earth
    1522, -- Call of Fire
    1523, -- Call of Fire
    1528, -- Call of Water
    1529, -- Call of Water
    1530, -- Call of Water
    1531, -- Call of Air
    1532, -- Call of Air
    1558, -- The Stonewrought Dam
    1559, -- Flash Bomb Recipe
    1560, -- Tooga's Quest
    1638, -- A Warrior's Training
    1639, -- Bartleby the Drunk
    1640, -- Beat Bartleby
    1641, -- The Tome of Divinity
    1642, -- The Tome of Divinity
    1643, -- The Tome of Divinity
    1645, -- The Tome of Divinity
    1646, -- The Tome of Divinity
    1647, -- The Tome of Divinity
    1649, -- The Tome of Valor
    1650, -- The Tome of Valor
    1651, -- The Tome of Valor
    1652, -- The Tome of Valor
    1653, -- The Test of Righteousness
    1661, -- The Tome of Nobility
    1666, -- Marshal Haggard
    1679, -- Muren Stormpike
    1680, -- Tormus Deepforge
    1682, -- Grey Iron Weapons
    1684, -- Elanaria
    1685, -- Gakin's Summons
    1687, -- Spooky Lighthouse
    1693, -- Weapons of Elunite
    1698, -- Yorus Barleybrew
    1706, -- Grimand's Armor
    1709, -- Klockmort's Creation
    1711, -- Mathiel's Armor
    1715, -- The Slaughtered Lamb
    1716, -- Devourer of Souls
    1717, -- Gakin's Summons
    1718, -- The Islander
    1758, -- Tome of the Cabal
    1778, -- The Tome of Divinity
    1779, -- The Tome of Divinity
    1780, -- The Tome of Divinity
    1781, -- The Tome of Divinity
    1782, -- Furen's Armor
    1785, -- The Tome of Divinity
    1788, -- The Tome of Divinity
    1789, -- The Symbol of Life
    1790, -- The Symbol of Life
    1791, -- The Windwatcher
    1792, -- Whirlwind Weapon
    1793, -- The Tome of Valor
    1794, -- The Tome of Valor
    1798, -- Seeking Strahad
    1800, -- Lordaeron Throne Room
    1801, -- Tome of the Cabal
    1806, -- The Test of Righteousness
    1818, -- Speak with Dillinger
    1820, -- Speak with Coleman
    1822, -- Heirloom Weapon
    1823, -- Speak with Ruga
    1825, -- Speak with Thun'grim
    1839, -- Ula'elek and the Brutal Gauntlets
    1840, -- Orm Stonehoof and the Brutal Helm
    1841, -- Velora Nitely and the Brutal Legguards
    1843, -- Brutal Gauntlets
    1845, -- Brutal Helm
    1847, -- Brutal Legguards
    1848, -- Brutal Hauberk
    1859, -- Therzok
    1860, -- Speak with Jennea
    1879, -- Speak with Bink
    1881, -- Speak with Anastasia
    1883, -- Speak with Un'thuwa
    1885, -- Mennet Carkad
    1919, -- Report to Jennea
    1939, -- High Sorcerer Andromath
    1941, -- Manaweave Robe
    1942, -- Astral Knot Garment
    1943, -- Speak with Deino
    1946, -- Nether-lace Garment
    1947, -- Journey to the Marsh
    1949, -- Hidden Secrets
    1950, -- Get the Scoop
    1952, -- Mage's Wand
    1953, -- Return to the Marsh
    1958, -- Celestial Power
    1959, -- Report to Anastasia
    1962, -- Spellfire Robes
    2039, -- Find Bingles
    2041, -- Speak with Shoni
    2158, -- Rest and Relaxation
    2200, -- Back to Uldaman
    2218, -- Road to Salvation
    2238, -- Simple Subterfugin'
    2259, -- Erion Shadewhisper
    2260, -- Erion's Behest
    2281, -- Redridge Rendezvous
    2284, -- Necklace Recovery, Take 2
    2298, -- Kingly Shakedown
    2299, -- To Hulfdan!
    2300, -- SI:7
    2318, -- Translating the Journal
    2341, -- Necklace Recovery, Take 3
    2360, -- Mathias and the Defias
    2378, -- Find the Shattered Hand
    2379, -- Zando'zan
    2380, -- To Orgrimmar!
    2382, -- Wrenix of Ratchet
    2398, -- The Lost Dwarves
    2459, -- Ferocitas the Dream Eater
    2460, -- The Shattered Salute
    2480, -- Hinott's Assistance
    2498, -- Return to Denalan
    2519, -- The Temple of the Moon
    2520, -- Sathrah's Sacrifice
    2607, -- The Touch of Zanzil
    2608, -- The Touch of Zanzil
    2621, -- The Disgraced One
    2622, -- The Missing Orders
    2662, -- Noggenfogger Elixir
    2702, -- Heroes of Old
    2721, -- Kirith
    2743, -- The Cover of Darkness
    2744, -- The Demon Hunter
    2745, -- Infiltrating the Castle
    2755, -- Joys of Omosh
    2764, -- Galvan's Finest Pupil
    2765, -- Expert Blacksmith!
    2767, -- Rescue OOX-22/FE!
    2769, -- The Brassbolts Brothers
    2783, -- Petty Squabbles
    2784, -- Fall From Grace
    2801, -- A Tale of Sorrow
    2842, -- Chief Engineer Scooty
    2843, -- Gnomer-gooooone!
    2844, -- The Giant Guardian
    2861, -- Tabetha's Task
    2864, -- Tran'rek
    2867, -- Return to Feathermoon Stronghold
    2872, -- Stoley's Debt
    2904, -- A Fine Mess
    2923, -- Tinkmaster Overspark
    2925, -- Klockmort's Essentials
    2927, -- The Day After
    2931, -- Castpipe's Task
    2935, -- Consult Master Gadrin
    2936, -- The Spider God
    2939, -- In Search of Knowledge
    2940, -- Feralas: A History
    2963, -- Portents of Uldum
    2964, -- A Future Task
    2965, -- Portents of Uldum
    2968, -- A Future Task
    2969, -- Freedom for All Creatures
    2981, -- A Threat in Feralas
    2983, -- Call of Fire
    2984, -- Call of Fire
    2985, -- Call of Water
    2986, -- Call of Water
    2992, -- The Divination
    2993, -- Return to the Hinterlands
    2994, -- Saving Sharpbeak
    2996, -- Seeking Strahad
    2997, -- Tome of Divinity
    2998, -- Tome of Divinity
    2999, -- Tome of Divinity
    3000, -- Tome of Divinity
    3001, -- Seeking Strahad
    3129, -- Weapons of Spirit
    3130, -- Against the Hatecrest
    3141, -- Loramus
    3221, -- Speak with Renferrel
    3261, -- Jorn Skyseer
    3321, -- Did You Lose This?
    3371, -- Dwarven Justice
    3377, -- Prayer to Elune
    3380, -- The Sunken Temple
    3382, -- A Crew Under Fire
    3402, -- The Undermarket
    3421, -- Return Trip
    3441, -- Divine Retribution
    3445, -- The Sunken Temple
    3448, -- Passing the Burden
    3450, -- An Easy Pickup
    3451, -- Signal for Pickup
    3453, -- The Torch of Retribution
    3462, -- Squire Maltrake
    3483, -- Signal for Pickup
    3503, -- Meeting with the Master
    3508, -- Breaking the Ward
    3509, -- The Name of the Beast
    3512, -- In Eranikus' Own Words
    3519, -- A Friend in Need
    3525, -- Extinguishing the Idol
    3567, -- To the Top
    3570, -- Seeping Corruption
    3625, -- Enchanted Azsharite Fel Weaponry
    3626, -- Return to the Blasted Lands
    3631, -- Summon Felsteed
    3644, -- Membership Card Renewal
    3645, -- Membership Card Renewal
    3646, -- Membership Card Renewal
    3647, -- Membership Card Renewal
    3681, -- Tome of Divinity
    3702, -- The Smoldering Ruins of Thaurissan
    3721, -- An OOX of Your Own
    3762, -- Assisting Arch Druid Runetotem
    3763, -- Assisting Arch Druid Staghelm
    3765, -- The Corruption Abroad
    3784, -- Assisting Arch Druid Runetotem
    3787, -- Jonespyre's Request
    3788, -- Jonespyre's Request
    3789, -- Assisting Arch Druid Staghelm
    3790, -- Assisting Arch Druid Staghelm
    3801, -- Dark Iron Legacy
    3821, -- Dreadmaul Rock
    3903, -- Milly Osworth
    3912, -- Meet at the Grave
    3941, -- A Gnome's Assistance
    3942, -- Linken's Memory
    3981, -- Commander Gor'shak
    3982, -- What Is Going On?
    4001, -- What Is Going On?
    4002, -- The Eastern Kingdom
    4004, -- The Princess Saved?
    4122, -- Grark Lorkrub
    4124, -- The Missing Courier
    4128, -- Ragnar Thunderbrew
    4130, -- Psychometric Reading
    4133, -- Vivian Lagrave
    4147, -- Marvon's Workshop
    4185, -- The True Masters
    4223, -- The True Masters
    4224, -- The True Masters
    4241, -- Marshal Windsor
    4242, -- Abandoned Hope
    4243, -- Chasing A-Me 01
    4245, -- Chasing A-Me 01
    4261, -- Ancient Spirit
    4265, -- Freed from the Hive
    4266, -- A Hero's Welcome
    4285, -- The Northern Pylon
    4287, -- The Eastern Pylon
    4288, -- The Western Pylon
    4298, -- Becoming a Parent
    4321, -- Making Sense of It
    4322, -- Jail Break!
    4324, -- Yuka Screwspigot
    4341, -- Kharan Mighthammer
    4342, -- Kharan's Tale
    4361, -- The Bearer of Bad News
    4363, -- The Princess's Surprise
    4442, -- Purified!
    4485, -- The Tome of Nobility
    4486, -- The Tome of Nobility
    4487, -- Summon Felsteed
    4488, -- Summon Felsteed
    4489, -- Summon Felsteed
    4490, -- Summon Felsteed
    4491, -- A Little Help From My Friends
    4493, -- March of the Silithid
    4494, -- March of the Silithid
    4495, -- A Good Friend
    4506, -- Corrupted Sabers
    4641, -- Your Place In The World
    4736, -- In Search of Menara Voidrender
    4737, -- In Search of Menara Voidrender
    4738, -- In Search of Menara Voidrender
    4739, -- In Search of Menara Voidrender
    4761, -- Thundris Windweaver
    4766, -- Mayara Brightwing
    4769, -- Vivian Lagrave and the Darkstone Tablet
    4770, -- Homeward Bound
    4782, -- Components for the Enchanted Gold Bloodrobe
    4785, -- Fine Gold Thread
    4786, -- The Completed Robe
    4813, -- The Fragments Within
    4865, -- Serpent Wild
    4866, -- Mother's Milk
    4881, -- Assassination Plot
    4901, -- Guardians of the Altar
    4902, -- Wildkin of Elune
    4904, -- Free at Last
    4907, -- Tinkee Steamboil
    4941, -- Eitrigg's Wisdom
    4964, -- The Completed Orb of Dar'Orahil
    4965, -- Knowledge of the Orb of Orahil
    4966, -- Protect Kanati Greycloud
    4967, -- Knowledge of the Orb of Orahil
    4968, -- Knowledge of the Orb of Orahil
    4969, -- Knowledge of the Orb of Orahil
    4975, -- The Completed Orb of Noh'Orahil
    4981, -- Operative Bijou
    5057, -- Past Endeavors
    5066, -- A Call to Arms: The Plaguelands!
    5090, -- A Call to Arms: The Plaguelands!
    5091, -- A Call to Arms: The Plaguelands!
    5093, -- A Call to Arms: The Plaguelands!
    5094, -- A Call to Arms: The Plaguelands!
    5095, -- A Call to Arms: The Plaguelands!
    5103, -- Hot Fiery Death
    5125, -- Aurius' Reckoning
    5126, -- Lorax's Tale
    5142, -- Little Pamela
    5152, -- Auntie Marlene
    5161, -- Wrath of the Blue Flight
    5162, -- Wrath of the Blue Flight
    5203, -- Rescue From Jaedenar
    5215, -- The Scourge Cauldrons
    5228, -- The Scourge Cauldrons
    5237, -- Mission Accomplished!
    5238, -- Mission Accomplished!
    5241, -- Uncle Carlin
    5244, -- The Ruins of Kel'Theril
    5249, -- To Winterspring!
    5250, -- Starfall
    5261, -- Eagan Peltskinner
    5264, -- Lord Maxwell Tyrosus
    5281, -- The Restless Souls
    5401, -- Argent Dawn Commission
    5405, -- Argent Dawn Commission
    5503, -- Argent Dawn Commission
    5505, -- The Key to Scholomance
    5511, -- The Key to Scholomance
    5528, -- The Gordok Taste Test
    5533, -- Scholomance
    5601, -- Sister Pamela
    5622, -- In Favor of Elune
    5623, -- In Favor of the Light
    5626, -- In Favor of the Light
    5627, -- Stars of Elune
    5628, -- Returning Home
    5629, -- Returning Home
    5630, -- Returning Home
    5631, -- Returning Home
    5632, -- Returning Home
    5633, -- Returning Home
    5634, -- Desperate Prayer
    5635, -- Desperate Prayer
    5636, -- Desperate Prayer
    5637, -- Desperate Prayer
    5638, -- Desperate Prayer
    5639, -- Desperate Prayer
    5641, -- A Lack of Fear
    5642, -- Shadowguard
    5643, -- Shadowguard
    5644, -- Devouring Plague
    5645, -- A Lack of Fear
    5646, -- Devouring Plague
    5647, -- A Lack of Fear
    5649, -- In Favor of Spirituality
    5651, -- In Favor of Darkness
    5652, -- Hex of Weakness
    5654, -- Hex of Weakness
    5655, -- Hex of Weakness
    5656, -- Hex of Weakness
    5657, -- Hex of Weakness
    5658, -- Touch of Weakness
    5660, -- Touch of Weakness
    5661, -- Touch of Weakness
    5662, -- Touch of Weakness
    5663, -- Touch of Weakness
    5672, -- Elune's Grace
    5673, -- Elune's Grace
    5674, -- Elune's Grace
    5675, -- Elune's Grace
    5676, -- Arcane Feedback
    5677, -- Arcane Feedback
    5679, -- Devouring Plague
    5680, -- Shadowguard
    5713, -- One Shot. One Kill.
    5722, -- Searching for the Lost Satchel
    5727, -- Hidden Enemies
    5729, -- Hidden Enemies
    5730, -- Hidden Enemies
    5742, -- Redemption
    5821, -- Bodyguard for Hire
    5846, -- Of Love and Family
    5921, -- Moonglade
    5922, -- Moonglade
    5923, -- Heeding the Call
    5924, -- Heeding the Call
    5925, -- Heeding the Call
    5926, -- Heeding the Call
    5927, -- Heeding the Call
    5928, -- Heeding the Call
    5929, -- Great Bear Spirit
    5930, -- Great Bear Spirit
    5931, -- Back to Darnassus
    5932, -- Back to Thunder Bluff
    5943, -- Gizelton Caravan
    5944, -- In Dreams
    5944, -- In Dreams
    5961, -- The Champion of the Banshee Queen
    6001, -- Body and Heart
    6002, -- Body and Heart
    6022, -- To Kill With Purpose
    6065, -- The Hunter's Path
    6066, -- The Hunter's Path
    6067, -- The Hunter's Path
    6068, -- The Hunter's Path
    6069, -- The Hunter's Path
    6070, -- The Hunter's Path
    6071, -- The Hunter's Path
    6072, -- The Hunter's Path
    6073, -- The Hunter's Path
    6074, -- The Hunter's Path
    6075, -- The Hunter's Path
    6076, -- The Hunter's Path
    6081, -- Training the Beast
    6086, -- Training the Beast
    6089, -- Training the Beast
    6103, -- Training the Beast
    6121, -- Lessons Anew
    6125, -- Power over Poison
    6126, -- Lessons Anew
    6130, -- Power over Poison
    6132, -- Get Me Out of Here!
    6141, -- Brother Anton
    6144, -- The Call to Command
    6147, -- Return to Nathanos
    6182, -- The First and the Last
    6183, -- Honor the Dead
    6184, -- Flint Shadowmore
    6186, -- The Blightcaller Cometh
    6344, -- Nessa Shadowsong
    6382, -- The Ashenvale Hunt
    6383, -- The Ashenvale Hunt
    6401, -- Kaya's Alive
    6402, -- Stormwind Rendezvous
    6403, -- The Great Masquerade
    6482, -- Freedom to Ruul
    6523, -- Protect Kaya
    6541, -- Report to Kadrak
    6542, -- Report to Kadrak
    6544, -- Torek's Assault
    6562, -- Trouble in the Deeps
    6566, -- What the Wind Carries
    6567, -- The Champion of the Horde
    6570, -- Emberstrife
    6603, -- Trouble in Winterspring!
    6604, -- Enraged Wildkin
    6605, -- A Strange One
    6606, -- A Little Luck
    6608, -- You Too Good.
    6609, -- I Got Nothin' Left!
    6611, -- To Gadgetzan You Go!
    6612, -- I Know A Guy...
    6622, -- Triage
    6623, -- Horde Trauma
    6624, -- Triage
    6625, -- Alliance Trauma
    6627, -- Test of Lore
    6628, -- Test of Lore
    6641, -- Vorsha the Lasher
    6721, -- The Hunter's Path
    6722, -- The Hunter's Path
    6761, -- The New Frontier
    6762, -- Rabine Saturna
    6823, -- Agent of Hydraxis
    6845, -- Uncovering Past Secrets
    6847, -- Master Ryson's All Seeing Eye
    6848, -- Master Ryson's All Seeing Eye
    6961, -- Great-father Winter is Here!
    6963, -- Stolen Winter Veil Treats
    6964, -- The Reason for the Season
    6981, -- The Glowing Shard
    6984, -- A Smokywood Pastures Thank You!
    7001, -- Empty Stables
    7021, -- Great-father Winter is Here!
    7022, -- Greatfather Winter is Here!
    7023, -- Greatfather Winter is Here!
    7024, -- Great-father Winter is Here!
    7027, -- Empty Stables
    7042, -- Stolen Winter Veil Treats
    7042, -- Stolen Winter Veil Treats
    7045, -- A Smokywood Pastures Thank You!
    7046, -- The Scepter of Celebras
    7062, -- The Reason for the Season
    7121, -- The Quartermaster
    7123, -- Speak with our Quartermaster
    7141, -- The Battle of Alterac
    7142, -- The Battle for Alterac
    7221, -- Speak with Prospector Stonehewer
    7222, -- Speak with Voggah Deathgrip
    7241, -- In Defense of Frostwolf
    7261, -- The Sovereign Imperative
    7481, -- Elven Legends
    7482, -- Elven Legends
    7491, -- For All To See
    7492, -- Camp Mojache
    7493, -- The Journey Has Just Begun
    7494, -- Feathermoon Stronghold
    7496, -- Celebrating Good Times
    7497, -- The Journey Has Just Begun
    7541, -- Service to the Horde
    7562, -- Mor'zul Bloodbringer
    7601, -- What Niby Commands
    7621, -- A Warning
    7622, -- The Balance of Light and Shadow
    7623, -- Lord Banehollow
    7633, -- An Introduction
    7637, -- Emphasis on Sacrifice
    7638, -- Lord Grayson Shadowbreaker
    7641, -- The Work of Grimand Elmore
    7652, -- A Blue Light Bargain
    7666, -- Again Into the Great Ossuary
    7782, -- The Lord of Blackrock
    7784, -- The Lord of Blackrock
    7810, -- Arena Master
    7843, -- The Final Message to the Wildhammer
    7845, -- Kidnapped Elder Torntusk!
    7847, -- Return to Primal Torntusk
    7863, -- Sentinel Basic Care Package
    7864, -- Sentinel Standard Care Package
    7865, -- Sentinel Advanced Care Package
    7866, -- Outrider Basic Care Package
    7867, -- Outrider Standard Care Package
    7868, -- Outrider Advanced Care Package
    8041, -- Strength of Mount Mugamba
    8045, -- The Heathen's Brand
    8049, -- The Eye of Zuldazar
    8053, -- Paragons of Power: The Freethinker's Armguards
    8054, -- Paragons of Power: The Freethinker's Belt
    8055, -- Paragons of Power: The Freethinker's Breastplate
    8056, -- Paragons of Power: The Augur's Bracers
    8057, -- Paragons of Power: The Haruspex's Bracers
    8058, -- Paragons of Power: The Vindicator's Armguards
    8059, -- Paragons of Power: The Demoniac's Wraps
    8060, -- Paragons of Power: The Illusionist's Wraps
    8061, -- Paragons of Power: The Confessor's Wraps
    8062, -- Paragons of Power: The Predator's Bracers
    8063, -- Paragons of Power: The Madcap's Bracers
    8064, -- Paragons of Power: The Haruspex's Belt
    8065, -- Paragons of Power: The Haruspex's Tunic
    8066, -- Paragons of Power: The Predator's Belt
    8067, -- Paragons of Power: The Predator's Mantle
    8068, -- Paragons of Power: The Illusionist's Mantle
    8069, -- Paragons of Power: The Illusionist's Robes
    8070, -- Paragons of Power: The Confessor's Bindings
    8071, -- Paragons of Power: The Confessor's Mantle
    8072, -- Paragons of Power: The Madcap's Mantle
    8073, -- Paragons of Power: The Madcap's Tunic
    8074, -- Paragons of Power: The Augur's Belt
    8075, -- Paragons of Power: The Augur's Hauberk
    8076, -- Paragons of Power: The Demoniac's Mantle
    8077, -- Paragons of Power: The Demoniac's Robes
    8078, -- Paragons of Power: The Vindicator's Belt
    8079, -- Paragons of Power: The Vindicator's Breastplate
    8101, -- The Pebble of Kajaro
    8106, -- Kezan's Taint
    8110, -- Enchanted South Seas Kelp
    8114, -- Control Four Bases
    8115, -- Control Five Bases
    8116, -- Vision of Voodress
    8121, -- Take Four Bases
    8122, -- Take Five Bases
    8141, -- Zandalarian Shadow Talisman
    8145, -- The Maelstrom's Tendril
    8149, -- Honoring a Hero
    8150, -- Honoring a Hero
    8151, -- The Hunter's Charm
    8181, -- Confront Yeh'kinya
    8182, -- The Hand of Rastakhan
    8228, -- Could I get a Fishing Flier?
    8229, -- Could I get a Fishing Flier?
    8233, -- A Simple Request
    8240, -- A Bijou for Zanza
    8250, -- Magecraft
    8254, -- Cenarion Aid
    8260, -- Arathor Basic Care Package
    8261, -- Arathor Standard Care Package
    8262, -- Arathor Advanced Care Package
    8263, -- Defiler's Basic Care Package
    8264, -- Defiler's Standard Care Package
    8265, -- Defiler's Advanced Care Package
    8271, -- Hero of the Stormpike
    8272, -- Hero of the Frostwolf
    8273, -- Oran's Gratitude
    8275, -- Taking Back Silithus
    8276, -- Taking Back Silithus
    8303, -- Anachronos
    8316, -- Armaments of War
    8331, -- Aurel Goldleaf
    8343, -- Goldleaf's Discovery
    8349, -- Bor Wildmane
    8351, -- Bor Wishes to Speak
    8353, -- Chicken Clucking for a Mint
    8354, -- Chicken Clucking for a Mint
    8355, -- Incoming Gumdrop
    8356, -- Flexing for Nougat
    8357, -- Dancing for Marzipan
    8358, -- Incoming Gumdrop
    8359, -- Flexing for Nougat
    8360, -- Dancing for Marzipan
    8373, -- The Power of Pine
    8376, -- Armaments of War
    8377, -- Armaments of War
    8378, -- Armaments of War
    8379, -- Armaments of War
    8380, -- Armaments of War
    8381, -- Armaments of War
    8382, -- Armaments of War
    8409, -- Ruined Kegs
    8415, -- Chillwind Point
    8417, -- A Troubled Spirit
    8447, -- Waking Legends
    8462, -- Speak to Nafien
    8465, -- Speak to Salfa
    8519, -- A Pawn on the Eternal Board
    8553, -- The Captain's Cutlass
    8555, -- The Charge of the Dragonflights
    8576, -- Translating the Ledger
    8584, -- Never Ask Me About My Business
    8619, -- Morndeep the Elder
    8635, -- Splitrock the Elder
    8636, -- Rumblerock the Elder
    8642, -- Silvervein the Elder
    8643, -- Highpeak the Elder
    8644, -- Stonefort the Elder
    8645, -- Obsidian the Elder
    8646, -- Hammershout the Elder
    8647, -- Bellowrage the Elder
    8648, -- Darkcore the Elder
    8649, -- Stormbrow the Elder
    8650, -- Snowcrown the Elder
    8651, -- Ironband the Elder
    8652, -- Graveborn the Elder
    8653, -- Goldwell the Elder
    8654, -- Primestone the Elder
    8670, -- Runetotem the Elder
    8671, -- Ragetotem the Elder
    8672, -- Stonespire the Elder
    8673, -- Bloodhoof the Elder
    8674, -- Winterhoof the Elder
    8675, -- Skychaser the Elder
    8676, -- Wildmane the Elder
    8677, -- Darkhorn the Elder
    8678, -- Proudhorn the Elder
    8679, -- Grimtotem the Elder
    8680, -- Windtotem the Elder
    8681, -- Thunderhorn the Elder
    8682, -- Skyseer the Elder
    8683, -- Dawnstrider the Elder
    8684, -- Dreamseer the Elder
    8685, -- Mistwalker the Elder
    8686, -- High Mountain the Elder
    8688, -- Windrun the Elder
    8713, -- Starsong the Elder
    8714, -- Moonstrike the Elder
    8715, -- Bladeleaf the Elder
    8716, -- Starglade the Elder
    8717, -- Moonwarden the Elder
    8718, -- Bladeswift the Elder
    8719, -- Bladesing the Elder
    8720, -- Skygleam the Elder
    8721, -- Starweave the Elder
    8722, -- Meadowrun the Elder
    8723, -- Nightwind the Elder
    8724, -- Morningdew the Elder
    8725, -- Riversong the Elder
    8726, -- Brightspear the Elder
    8727, -- Farwhisper the Elder
    8733, -- Eranikus, Tyrant of the Dream
    8734, -- Tyrande and Remulos
    8736, -- The Nightmare Manifests
    8742, -- The Might of Kalimdor
    8745, -- Treasure of the Timeless One
    8747, -- The Path of the Protector
    8752, -- The Path of the Conqueror
    8757, -- The Path of the Invoker
    8792, -- The Horde Needs Your Help!
    8793, -- The Horde Needs Your Help!
    8794, -- The Horde Needs Your Help!
    8795, -- The Alliance Needs Your Help!
    8796, -- The Alliance Needs Your Help!
    8797, -- The Alliance Needs Your Help!
    8798, -- A Yeti of Your Own
    8800, -- Cenarion Battlegear
    8827, -- Winter's Presents
    8828, -- Winter's Presents
    8866, -- Bronzebeard the Elder
    8868, -- Elune's Blessing
    8870, -- The Lunar Festival
    8871, -- The Lunar Festival
    8872, -- The Lunar Festival
    8873, -- The Lunar Festival
    8874, -- The Lunar Festival
    8875, -- The Lunar Festival
    8883, -- Valadar Starsong
    8929, -- In Search of Anthion
    8930, -- In Search of Anthion
    8960, -- Bodley's Unfortunate Fate
    8980, -- Zinge's Assessment
    8982, -- Tracing the Source
    8983, -- Tracing the Source
    8984, -- The Source Revealed
    8997, -- Back to the Beginning
    8998, -- Back to the Beginning
    9025, -- Morgan's Discovery
    9026, -- Tracing the Source
    9027, -- Tracing the Source
    9028, -- The Source Revealed
    9032, -- Bodley's Unfortunate Fate
    9051, -- Toxic Test
    9063, -- Torwa Pathfinder
    9123, -- The Dread Citadel - Naxxramas
    9272, -- Dressing the Part
    9339, -- A Thief's Reward
    9365, -- A Thief's Reward
    9415, -- Report to Marshal Bluewall
    9416 -- Report to General Kirika
}

local questIdMap = {}
for _, id in ipairs(questsNeverMarkedComplete) do
    questIdMap[id] = true
end
qid.QuestsNeverMarkedComplete = questIdMap
