//
//COPYRIGHT 2023 Free Bits
//Created byCarl Wieland on 1/19/23
// 

import Foundation

public enum ItemID: Int {
    case unknown = -1
    case weeds = 0
    case stone1 = 2
    case stone2 = 4
    case wildHorseradish = 16
    case daffodil = 18
    case leek = 20
    case dandelion = 22
    case parsnip = 24
    case stone3 = 25
    case lumber = 30
    case emerald = 60
    case aquamarine = 62
    case ruby = 64
    case amethyst = 66
    case topaz = 68
    case bananaSapling = 69
    case jade = 70
    case trimmedLuckyPurpleShorts = 71
    case diamond = 72
    case goldenWalnut = 73
    case prismaticShard = 74
    case stone4 = 75
    case stone5 = 76
    case stone6 = 77
    case caveCarrot = 78
    case secretNote = 79
    case quartz = 80
    case fireQuartz = 82
    case frozenTear = 84
    case earthCrystal = 86
    case coconut = 88
    case cactusFruit = 90
    case banana = 91
    case sap = 92
    case torch = 93
    case spiritTorch = 94
    case stone7 = 95
    case dwarfScrollI = 96
    case dwarfScrollIi = 97
    case dwarfScrollIii = 98
    case dwarfScrollIv = 99
    case chippedAmphora = 100
    case arrowhead = 101
    case lostBook = 102
    case ancientDoll = 103
    case elvishJewelry = 104
    case chewingStick = 105
    case ornamentalFan = 106
    case dinosaurEgg = 107
    case rareDisc = 108
    case ancientSword = 109
    case rustySpoon = 110
    case rustySpur = 111
    case rustyCog = 112
    case chickenStatue = 113
    case ancientSeed = 114
    case prehistoricTool = 115
    case driedStarfish = 116
    case anchor = 117
    case glassShards = 118
    case boneFlute = 119
    case prehistoricHandaxe = 120
    case dwarvishHelm = 121
    case dwarfGadget = 122
    case ancientDrum = 123
    case goldenMask = 124
    case goldenRelic = 125
    case strangeDoll1 = 126
    case strangeDoll2 = 127
    case pufferfish = 128
    case anchovy = 129
    case tuna = 130
    case sardine = 131
    case bream = 132
    case largemouthBass = 136
    case smallmouthBass = 137
    case rainbowTrout = 138
    case salmon = 139
    case walleye = 140
    case perch = 141
    case carp = 142
    case catfish = 143
    case pike = 144
    case sunfish = 145
    case redMullet = 146
    case herring = 147
    case eel = 148
    case octopus = 149
    case redSnapper = 150
    case squid = 151
    case seaweed = 152
    case greenAlgae = 153
    case seaCucumber = 154
    case superCucumber = 155
    case ghostfish = 156
    case whiteAlgae = 157
    case stonefish = 158
    case crimsonfish = 159
    case angler = 160
    case icePip = 161
    case lavaEel = 162
    case legendFish = 163
    case sandfish = 164
    case scorpionCarp = 165
    case treasureChest = 166
    case jojaCola = 167
    case trash = 168
    case driftwood = 169
    case brokenGlasses = 170
    case brokenCd = 171
    case soggyNewspaper = 172
    case largeEgg1 = 174
    case egg1 = 176
    case hay = 178
    case egg2 = 180
    case largeEgg2 = 182
    case milk = 184
    case largeMilk = 186
    case greenBean = 188
    case cauliflower = 190
    case ornateNecklace = 191
    case potato = 192
    case friedEgg = 194
    case omelet = 195
    case salad = 196
    case cheeseCauliflower = 197
    case bakedFish = 198
    case parsnipSoup = 199
    case vegetableMedley = 200
    case completeBreakfast = 201
    case friedCalamari = 202
    case strangeBun = 203
    case luckyLunch = 204
    case friedMushroom = 205
    case pizza = 206
    case beanHotpot = 207
    case glazedYams = 208
    case carpSurprise = 209
    case hashbrowns = 210
    case pancakes = 211
    case salmonDinner = 212
    case fishTaco = 213
    case crispyBass = 214
    case pepperPoppers = 215
    case bread = 216
    case tomKhaSoup = 218
    case troutSoup = 219
    case chocolateCake = 220
    case pinkCake = 221
    case rhubarbPie = 222
    case cookie = 223
    case spaghetti = 224
    case friedEel = 225
    case spicyEel = 226
    case sashimi = 227
    case makiRoll = 228
    case tortilla = 229
    case redPlate = 230
    case eggplantParmesan = 231
    case ricePudding = 232
    case iceCream = 233
    case blueberryTart = 234
    case autumnsBounty = 235
    case pumpkinSoup = 236
    case superMeal = 237
    case cranberrySauce = 238
    case stuffing = 239
    case farmersLunch = 240
    case survivalBurger = 241
    case dishOtheSea = 242
    case minersTreat = 243
    case rootsPlatter = 244
    case sugar = 245
    case wheatFlour = 246
    case oil = 247
    case garlic = 248
    case kale = 250
    case teaSapling = 251
    case rhubarb = 252
    case tripleShotEspresso = 253
    case melon = 254
    case tomato = 256
    case morel = 257
    case blueberry = 258
    case fiddleheadFern = 259
    case hotPepper = 260
    case warpTotemDesert = 261
    case wheat = 262
    case radish = 264
    case seafoamPudding = 265
    case redCabbage = 266
    case flounder = 267
    case starfruit = 268
    case midnightCarp = 269
    case corn = 270
    case unmilledRice = 271
    case eggplant = 272
    case riceShoot = 273
    case artichoke = 274
    case artifactTrove = 275
    case pumpkin = 276
    case wiltedBouquet = 277
    case bokChoy = 278
    case magicRockCandy = 279
    case yam = 280
    case chanterelle = 281
    case cranberries = 282
    case holly = 283
    case beet = 284
    case cherryBomb = 286
    case bomb = 287
    case megaBomb = 288
    case ostrichEgg = 289
    case stone = 290
    case mahoganySeed = 292
    case brickFloor = 293
    case twig1 = 294
    case twig2 = 295
    case salmonberry = 296
    case grassStarter = 297
    case hardwoodFence = 298
    case amaranthSeeds = 299
    case amaranth = 300
    case grapeStarter = 301
    case hopsStarter = 302
    case paleAle = 303
    case hops = 304
    case voidEgg = 305
    case mayonnaise = 306
    case duckMayonnaise = 307
    case voidMayonnaise = 308
    case acorn = 309
    case mapleSeed = 310
    case pineCone = 311
    case weeds1 = 313
    case weeds2 = 314
    case weeds3 = 315
    case weeds4 = 316
    case weeds5 = 317
    case weeds6 = 318
    case weeds7 = 319
    case weeds8 = 320
    case weeds9 = 321
    case woodFence = 322
    case stoneFence = 323
    case ironFence = 324
    case gate = 325
    case dwarvishTranslationGuide = 326
    case woodFloor = 328
    case stoneFloor = 329
    case clay = 330
    case weatheredFloor = 331
    case crystalFloor = 333
    case copperBar = 334
    case ironBar = 335
    case goldBar = 336
    case iridiumBar = 337
    case refinedQuartz = 338
    case honey = 340
    case teaSet = 341
    case pickles = 342
    case stone8 = 343
    case jelly = 344
    case beer = 346
    case rareSeed = 347
    case wine = 348
    case energyTonic = 349
    case juice = 350
    case muscleRemedy = 351
    case basicFertilizer = 368
    case qualityFertilizer = 369
    case basicRetainingSoil = 370
    case qualityRetainingSoil = 371
    case clam = 372
    case goldenPumpkin = 373
    case poppy = 376
    case copperOre = 378
    case ironOre = 380
    case coal = 382
    case goldOre = 384
    case iridiumOre = 386
    case wood = 388
    case stone9 = 390
    case nautilusShell = 392
    case coral = 393
    case rainbowShell = 394
    case coffee = 395
    case spiceBerry = 396
    case seaUrchin = 397
    case grape = 398
    case springOnion = 399
    case strawberry = 400
    case strawFloor = 401
    case sweetPea = 402
    case fieldSnack = 403
    case commonMushroom = 404
    case woodPath = 405
    case wildPlum = 406
    case gravelPath = 407
    case hazelnut = 408
    case crystalPath = 409
    case blackberry = 410
    case cobblestonePath = 411
    case winterRoot = 412
    case blueSlimeEgg = 413
    case crystalFruit = 414
    case steppingStonePath = 415
    case snowYam = 416
    case sweetGemBerry = 417
    case crocus = 418
    case vinegar = 419
    case redMushroom = 420
    case sunflower = 421
    case purpleMushroom = 422
    case rice = 423
    case cheese = 424
    case fairySeeds = 425
    case goatCheese = 426
    case tulipBulb = 427
    case cloth = 428
    case jazzSeeds = 429
    case truffle = 430
    case sunflowerSeeds = 431
    case truffleOil = 432
    case coffeeBean = 433
    case stardrop = 434
    case goatMilk = 436
    case redSlimeEgg = 437
    case largeGoatMilk = 438
    case purpleSlimeEgg = 439
    case wool = 440
    case explosiveAmmo = 441
    case duckEgg = 442
    case duckFeather = 444
    case caviar = 445
    case rabbitsFoot = 446
    case agedRoe = 447
    case stoneBase = 449
    case stone10 = 450
    case weeds10 = 452
    case poppySeeds = 453
    case ancientFruit = 454
    case spangleSeeds = 455
    case algaeSoup = 456
    case paleBroth = 457
    case bouquet = 458
    case mead = 459
    case mermaidsPendant = 460
    case decorativePot = 461
    case drumBlock = 463
    case fluteBlock = 464
    case speedGro = 465
    case deluxeSpeedGro = 466
    case parsnipSeeds = 472
    case beanStarter = 473
    case cauliflowerSeeds = 474
    case potatoSeeds = 475
    case garlicSeeds = 476
    case kaleSeeds = 477
    case rhubarbSeeds = 478
    case melonSeeds = 479
    case tomatoSeeds = 480
    case blueberrySeeds = 481
    case pepperSeeds = 482
    case wheatSeeds = 483
    case radishSeeds = 484
    case redCabbageSeeds = 485
    case starfruitSeeds = 486
    case cornSeeds = 487
    case eggplantSeeds = 488
    case artichokeSeeds = 489
    case pumpkinSeeds = 490
    case bokChoySeeds = 491
    case yamSeeds = 492
    case cranberrySeeds = 493
    case beetSeeds = 494
    case springSeeds = 495
    case summerSeeds = 496
    case fallSeeds = 497
    case winterSeeds = 498
    case ancientSeeds = 499
    case smallGlowRing = 516
    case glowRing = 517
    case smallMagnetRing = 518
    case magnetRing = 519
    case slimeCharmerRing = 520
    case warriorRing = 521
    case vampireRing = 522
    case savageRing = 523
    case ringofYoba = 524
    case sturdyRing = 525
    case burglarsRing = 526
    case iridiumBand = 527
    case jukeboxRing = 528
    case amethystRing = 529
    case topazRing = 530
    case aquamarineRing = 531
    case jadeRing = 532
    case emeraldRing = 533
    case rubyRing = 534
    case geode = 535
    case frozenGeode = 536
    case magmaGeode = 537
    case alamite = 538
    case bixite = 539
    case baryte = 540
    case aerinite = 541
    case calcite = 542
    case dolomite = 543
    case esperite = 544
    case fluorapatite = 545
    case geminite = 546
    case helvite = 547
    case jamborite = 548
    case jagoite = 549
    case kyanite = 550
    case lunarite = 551
    case malachite = 552
    case neptunite = 553
    case lemonStone = 554
    case nekoite = 555
    case orpiment = 556
    case petrifiedSlime = 557
    case thunderEgg = 558
    case pyrite = 559
    case oceanStone = 560
    case ghostCrystal = 561
    case tigerseye = 562
    case jasper = 563
    case opal = 564
    case fireOpal = 565
    case celestine = 566
    case marble = 567
    case sandstone = 568
    case granite = 569
    case basalt = 570
    case limestone = 571
    case soapstone = 572
    case hematite = 573
    case mudstone = 574
    case obsidian = 575
    case slate = 576
    case fairyStone = 577
    case starShards = 578
    case prehistoricScapula = 579
    case prehistoricTibia = 580
    case prehistoricSkull = 581
    case skeletalHand = 582
    case prehistoricRib = 583
    case prehistoricVertebra = 584
    case skeletalTail = 585
    case nautilusFossil = 586
    case amphibianFossil = 587
    case palmFossil = 588
    case trilobite = 589
    case artifactSpot = 590
    case tulip = 591
    case summerSpangle = 593
    case fairyRose = 595
    case blueJazz = 597
    case sprinkler = 599
    case plumPudding = 604
    case artichokeDip = 605
    case stirFry = 606
    case roastedHazelnuts = 607
    case pumpkinPie = 608
    case radishSalad = 609
    case fruitSalad = 610
    case blackberryCobbler = 611
    case cranberryCandy = 612
    case apple = 613
    case greenTea = 614
    case bruschetta = 618
    case qualitySprinkler = 621
    case cherrySapling = 628
    case apricotSapling = 629
    case orangeSapling = 630
    case peachSapling = 631
    case pomegranateSapling = 632
    case appleSapling = 633
    case apricot = 634
    case orange = 635
    case peach = 636
    case pomegranate = 637
    case cherry = 638
    case iridiumSprinkler = 645
    case coleslaw = 648
    case fiddleheadRisotto = 649
    case poppyseedMuffin = 651
    case stone11 = 668
    case stone12 = 670
    case weeds11 = 674
    case weeds12 = 675
    case weeds13 = 676
    case weeds14 = 677
    case weeds15 = 678
    case weeds16 = 679
    case greenSlimeEgg = 680
    case rainTotem = 681
    case mutantCarp = 682
    case bugMeat = 684
    case bait = 685
    case spinner = 686
    case dressedSpinner = 687
    case warpTotemFarm = 688
    case warpTotemMountains = 689
    case warpTotemBeach = 690
    case barbedHook = 691
    case leadBobber = 692
    case treasureHunter = 693
    case trapBobber = 694
    case corkBobber = 695
    case sturgeon = 698
    case tigerTrout = 699
    case bullhead = 700
    case tilapia = 701
    case chub = 702
    case magnet = 703
    case dorado = 704
    case albacore = 705
    case shad = 706
    case lingcod = 707
    case halibut = 708
    case hardwood = 709
    case crabPot = 710
    case lobster = 715
    case crayfish = 716
    case crab = 717
    case cockle = 718
    case mussel = 719
    case shrimp = 720
    case snail = 721
    case periwinkle = 722
    case oyster = 723
    case mapleSyrup = 724
    case oakResin = 725
    case pineTar = 726
    case chowder = 727
    case fishStew = 728
    case escargot = 729
    case lobsterBisque = 730
    case mapleBar = 731
    case crabCakes = 732
    case shrimpCocktail = 733
    case woodskip = 734
    case strawberrySeeds = 745
    case jackOlantern = 746
    case rottenPlant1 = 747
    case rottenPlant2 = 748
    case omniGeode = 749
    case weeds17 = 750
    case stone13 = 751
    case stone14 = 760
    case stone15 = 762
    case stone16 = 764
    case stone17 = 765
    case slime18 = 766
    case batWing = 767
    case solarEssence = 768
    case voidEssence = 769
    case mixedSeeds = 770
    case fiber = 771
    case oilofGarlic = 772
    case lifeElixir = 773
    case wildBait = 774
    case glacierfish = 775
    case weeds18 = 784
    case weeds19 = 785
    case weeds20 = 786
    case batteryPack = 787
    case lostAxe = 788
    case luckyPurpleShorts = 789
    case berryBasket = 790
    case goldenCoconut = 791
    case weeds21 = 792
    case weeds22 = 793
    case weeds23 = 794
    case voidSalmon = 795
    case slimejack = 796
    case pearl = 797
    case midnightSquid = 798
    case spookFish = 799
    case blobfish = 800
    case weddingRing = 801
    case cactusSeeds = 802
    case iridiumMilk = 803
    case treeFertilizer = 805
    case dinosaurMayonnaise = 807
    case voidGhostPendant = 808
    case movieTicket = 809
    case crabshellRing = 810
    case napalmRing = 811
    case roe = 812
    case squidInk = 814
    case teaLeaves = 815
    case stone19 = 816
    case stone20 = 817
    case stone21 = 818
    case stone22 = 819
    case fossilizedSkull = 820
    case fossilizedSpine = 821
    case fossilizedTail = 822
    case fossilizedLeg = 823
    case fossilizedRibs = 824
    case snakeSkull = 825
    case snakeVertebrae = 826
    case mummifiedBat = 827
    case mummifiedFrog = 828
    case ginger = 829
    case taroRoot = 830
    case taroTuber = 831
    case pineapple = 832
    case pineappleSeeds = 833
    case mango = 834
    case mangoSapling = 835
    case stingray = 836
    case lionfish = 837
    case blueDiscus = 838
    case thornsRing = 839
    case rusticPlankFloor = 840
    case stoneWalkwayFloor = 841
    case journalScrap = 842
    case stone23 = 843
    case stone24 = 844
    case stone25 = 845
    case stone26 = 846
    case stone27 = 847
    case cinderShard = 848
    case stone28 = 849
    case stone29 = 850
    case magmaCap = 851
    case dragonTooth = 852
    case curiosityLure = 856
    case tigerSlimeEgg = 857
    case qiGem = 858
    case luckyRing = 859
    case hotJavaRing = 860
    case protectionRing = 861
    case soulSapperRing = 862
    case phoenixRing = 863
    case warMemento = 864
    case gourmetTomatoSalt = 865
    case stardewValleyRose = 866
    case advancedTvremote = 867
    case arcticShard = 868
    case wrigglingWorm = 869
    case piratesLocket = 870
    case fairyDust = 872
    case pinaColada = 873
    case bugSteak = 874
    case ectoplasm = 875
    case prismaticJelly = 876
    case qualityBobber = 877
    case monsterMusk = 879
    case combinedRing = 880
    case boneFragment = 881
    case weeds24 = 882
    case weeds25 = 883
    case weeds26 = 884
    case fiberSeeds = 885
    case warpTotemIsland = 886
    case immunityBand = 887
    case glowstoneRing = 888
    case qiFruit = 889
    case qiBean = 890
    case mushroomTreeSeed = 891
    case warpTotemQisArena = 892
    case fireworksRed = 893
    case fireworksPurple = 894
    case fireworksGreen = 895
    case galaxySoul = 896
    case pierresMissingStocklist = 897
    case sonofCrimsonfish = 898
    case msAngler = 899
    case legendIi = 900
    case radioactiveCarp = 901
    case glacierfishJr = 902
    case gingerAle = 903
    case bananaPudding = 904
    case mangoStickyRice = 905
    case poi = 906
    case tropicalCurry = 907
    case magicBait = 908
    case radioactiveOre = 909
    case radioactiveBar = 910
    case horseFlute = 911
    case enricher = 913
    case pressureNozzle = 915
    case qiSeasoning = 917
    case hyperSpeedGro = 918
    case deluxeFertilizer = 919
    case deluxeRetainingSoil = 920
    case squidInkRavioli = 921
    case supplyCrate1 = 922
    case supplyCrate2 = 923
    case supplyCrate3 = 924
    case slimeCrate = 925
    case cookoutKit = 926
    case campingStove = 927
    case goldenEgg = 928
    case hedge = 929

    public var description: String {
        switch self {
        case .unknown: return "Unknown"
        case .weeds:  return "Weeds"
        case .stone1: return "Stone"
        case .stone2: return "Stone"
        case .wildHorseradish: return "Wild Horseradish"
        case .daffodil: return "Daffodil"
        case .leek: return "Leek"
        case .dandelion: return "Dandelion"
        case .parsnip: return "Parsnip"
        case .stone3: return "Stone"
        case .lumber: return "Lumber"
        case .emerald: return "Emerald"
        case .aquamarine: return "Aquamarine"
        case .ruby: return "Ruby"
        case .amethyst: return "Amethyst"
        case .topaz: return "Topaz"
        case .bananaSapling: return "Banana Sapling"
        case .jade: return "Jade"
        case .trimmedLuckyPurpleShorts: return "Trimmed Lucky Purple Shorts"
        case .diamond: return "Diamond"
        case .goldenWalnut: return "Golden Walnut"
        case .prismaticShard: return "Prismatic Shard"
        case .stone4: return "Stone"
        case .stone5: return "Stone"
        case .stone6: return "Stone"
        case .caveCarrot: return "Cave Carrot"
        case .secretNote: return "Secret Note"
        case .quartz: return "Quartz"
        case .fireQuartz: return "Fire Quartz"
        case .frozenTear: return "Frozen Tear"
        case .earthCrystal: return "Earth Crystal"
        case .coconut: return "Coconut"
        case .cactusFruit: return "Cactus Fruit"
        case .banana: return "Banana"
        case .sap: return "Sap"
        case .torch: return "Torch"
        case .spiritTorch: return "Spirit Torch"
        case .stone7: return "Stone"
        case .dwarfScrollI: return "Dwarf Scroll I"
        case .dwarfScrollIi: return "Dwarf Scroll II"
        case .dwarfScrollIii: return "Dwarf Scroll III"
        case .dwarfScrollIv: return "Dwarf Scroll IV"
        case .chippedAmphora: return "Chipped Amphora"
        case .arrowhead: return "Arrowhead"
        case .lostBook: return "Lost Book"
        case .ancientDoll: return "Ancient Doll"
        case .elvishJewelry: return "Elvish Jewelry"
        case .chewingStick: return "Chewing Stick"
        case .ornamentalFan: return "Ornamental Fan"
        case .dinosaurEgg: return "Dinosaur Egg"
        case .rareDisc: return "Rare Disc"
        case .ancientSword: return "Ancient Sword"
        case .rustySpoon: return "Rusty Spoon"
        case .rustySpur: return "Rusty Spur"
        case .rustyCog: return "Rusty Cog"
        case .chickenStatue: return "Chicken Statue"
        case .ancientSeed: return "Ancient Seed"
        case .prehistoricTool: return "Prehistoric Tool"
        case .driedStarfish: return "Dried Starfish"
        case .anchor: return "Anchor"
        case .glassShards: return "Glass Shards"
        case .boneFlute: return "Bone Flute"
        case .prehistoricHandaxe: return "Prehistoric Handaxe"
        case .dwarvishHelm: return "Dwarvish Helm"
        case .dwarfGadget: return "Dwarf Gadget"
        case .ancientDrum: return "Ancient Drum"
        case .goldenMask: return "Golden Mask"
        case .goldenRelic: return "Golden Relic"
        case .strangeDoll1: return "Strange Doll"
        case .strangeDoll2: return "Strange Doll"
        case .pufferfish: return "Pufferfish"
        case .anchovy: return "Anchovy"
        case .tuna: return "Tuna"
        case .sardine: return "Sardine"
        case .bream: return "Bream"
        case .largemouthBass: return "Largemouth Bass"
        case .smallmouthBass: return "Smallmouth Bass"
        case .rainbowTrout: return "Rainbow Trout"
        case .salmon: return "Salmon"
        case .walleye: return "Walleye"
        case .perch: return "Perch"
        case .carp: return "Carp"
        case .catfish: return "Catfish"
        case .pike: return "Pike"
        case .sunfish: return "Sunfish"
        case .redMullet: return "Red Mullet"
        case .herring: return "Herring"
        case .eel: return "Eel"
        case .octopus: return "Octopus"
        case .redSnapper: return "Red Snapper"
        case .squid: return "Squid"
        case .seaweed: return "Seaweed"
        case .greenAlgae: return "Green Algae"
        case .seaCucumber: return "Sea Cucumber"
        case .superCucumber: return "Super Cucumber"
        case .ghostfish: return "Ghostfish"
        case .whiteAlgae: return "White Algae"
        case .stonefish: return "Stonefish"
        case .crimsonfish: return "Crimsonfish"
        case .angler: return "Angler"
        case .icePip: return "Ice Pip"
        case .lavaEel: return "Lava Eel"
        case .legendFish: return "Legend Fish"
        case .sandfish: return "Sandfish"
        case .scorpionCarp: return "Scorpion Carp"
        case .treasureChest: return "Treasure Chest"
        case .jojaCola: return "Joja Cola"
        case .trash: return "Trash"
        case .driftwood: return "Driftwood"
        case .brokenGlasses: return "Broken Glasses"
        case .brokenCd: return "Broken CD"
        case .soggyNewspaper: return "Soggy Newspaper"
        case .largeEgg1: return "Large Egg"
        case .egg1: return "Egg"
        case .hay: return "Hay"
        case .egg2: return "Egg"
        case .largeEgg2: return "Large Egg"
        case .milk: return "Milk"
        case .largeMilk: return "Large Milk"
        case .greenBean: return "Green Bean"
        case .cauliflower: return "Cauliflower"
        case .ornateNecklace: return "Ornate Necklace"
        case .potato: return "Potato"
        case .friedEgg: return "Fried Egg"
        case .omelet: return "Omelet"
        case .salad: return "Salad"
        case .cheeseCauliflower: return "Cheese Cauliflower"
        case .bakedFish: return "Baked Fish"
        case .parsnipSoup: return "Parsnip Soup"
        case .vegetableMedley: return "Vegetable Medley"
        case .completeBreakfast: return "Complete Breakfast"
        case .friedCalamari: return "Fried Calamari"
        case .strangeBun: return "Strange Bun"
        case .luckyLunch: return "Lucky Lunch"
        case .friedMushroom: return "Fried Mushroom"
        case .pizza: return "Pizza"
        case .beanHotpot: return "Bean Hotpot"
        case .glazedYams: return "Glazed Yams"
        case .carpSurprise: return "Carp Surprise"
        case .hashbrowns: return "Hashbrowns"
        case .pancakes: return "Pancakes"
        case .salmonDinner: return "Salmon Dinner"
        case .fishTaco: return "Fish Taco"
        case .crispyBass: return "Crispy Bass"
        case .pepperPoppers: return "Pepper Poppers"
        case .bread: return "Bread"
        case .tomKhaSoup: return "Tom Kha Soup"
        case .troutSoup: return "Trout Soup"
        case .chocolateCake: return "Chocolate Cake"
        case .pinkCake: return "Pink Cake"
        case .rhubarbPie: return "Rhubarb Pie"
        case .cookie: return "Cookie"
        case .spaghetti: return "Spaghetti"
        case .friedEel: return "Fried Eel"
        case .spicyEel: return "Spicy Eel"
        case .sashimi: return "Sashimi"
        case .makiRoll: return "Maki Roll"
        case .tortilla: return "Tortilla"
        case .redPlate: return "Red Plate"
        case .eggplantParmesan: return "Eggplant Parmesan"
        case .ricePudding: return "Rice Pudding"
        case .iceCream: return "Ice Cream"
        case .blueberryTart: return "Blueberry Tart"
        case .autumnsBounty: return "Autumn's Bounty"
        case .pumpkinSoup: return "Pumpkin Soup"
        case .superMeal: return "Super Meal"
        case .cranberrySauce: return "Cranberry Sauce"
        case .stuffing: return "Stuffing"
        case .farmersLunch: return "Farmer's Lunch"
        case .survivalBurger: return "Survival Burger"
        case .dishOtheSea: return "Dish O' The Sea"
        case .minersTreat: return "Miner's Treat"
        case .rootsPlatter: return "Roots Platter"
        case .sugar: return "Sugar"
        case .wheatFlour: return "Wheat Flour"
        case .oil: return "Oil"
        case .garlic: return "Garlic"
        case .kale: return "Kale"
        case .teaSapling: return "Tea Sapling"
        case .rhubarb: return "Rhubarb"
        case .tripleShotEspresso: return "Triple Shot Espresso"
        case .melon: return "Melon"
        case .tomato: return "Tomato"
        case .morel: return "Morel"
        case .blueberry: return "Blueberry"
        case .fiddleheadFern: return "Fiddlehead Fern"
        case .hotPepper: return "Hot Pepper"
        case .warpTotemDesert: return "Warp Totem: Desert"
        case .wheat: return "Wheat"
        case .radish: return "Radish"
        case .seafoamPudding: return "Seafoam Pudding"
        case .redCabbage: return "Red Cabbage"
        case .flounder: return "Flounder"
        case .starfruit: return "Starfruit"
        case .midnightCarp: return "Midnight Carp"
        case .corn: return "Corn"
        case .unmilledRice: return "Unmilled Rice"
        case .eggplant: return "Eggplant"
        case .riceShoot: return "Rice Shoot"
        case .artichoke: return "Artichoke"
        case .artifactTrove: return "Artifact Trove"
        case .pumpkin: return "Pumpkin"
        case .wiltedBouquet: return "Wilted Bouquet"
        case .bokChoy: return "Bok Choy"
        case .magicRockCandy: return "Magic Rock Candy"
        case .yam: return "Yam"
        case .chanterelle: return "Chanterelle"
        case .cranberries: return "Cranberries"
        case .holly: return "Holly"
        case .beet: return "Beet"
        case .cherryBomb: return "Cherry Bomb"
        case .bomb: return "Bomb"
        case .megaBomb: return "Mega Bomb"
        case .ostrichEgg: return "Ostrich Egg"
        case .stone: return "Stone"
        case .mahoganySeed: return "Mahogany Seed"
        case .brickFloor: return "Brick Floor"
        case .twig1: return "Twig"
        case .twig2: return "Twig"
        case .salmonberry: return "Salmonberry"
        case .grassStarter: return "Grass Starter"
        case .hardwoodFence: return "Hardwood Fence"
        case .amaranthSeeds: return "Amaranth Seeds"
        case .amaranth: return "Amaranth"
        case .grapeStarter: return "Grape Starter"
        case .hopsStarter: return "Hops Starter"
        case .paleAle: return "Pale Ale"
        case .hops: return "Hops"
        case .voidEgg: return "Void Egg"
        case .mayonnaise: return "Mayonnaise"
        case .duckMayonnaise: return "Duck Mayonnaise"
        case .voidMayonnaise: return "Void Mayonnaise"
        case .acorn: return "Acorn"
        case .mapleSeed: return "Maple Seed"
        case .pineCone: return "Pine Cone"
        case .weeds1: return "Weeds"
        case .weeds2: return "Weeds"
        case .weeds3: return "Weeds"
        case .weeds4: return "Weeds"
        case .weeds5: return "Weeds"
        case .weeds6: return "Weeds"
        case .weeds7: return "Weeds"
        case .weeds8: return "Weeds"
        case .weeds9: return "Weeds"
        case .woodFence: return "Wood Fence"
        case .stoneFence: return "Stone Fence"
        case .ironFence: return "Iron Fence"
        case .gate: return "Gate"
        case .dwarvishTranslationGuide: return "Dwarvish Translation Guide"
        case .woodFloor: return "Wood Floor"
        case .stoneFloor: return "Stone Floor"
        case .clay: return "Clay"
        case .weatheredFloor: return "Weathered Floor"
        case .crystalFloor: return "Crystal Floor"
        case .copperBar: return "Copper Bar"
        case .ironBar: return "Iron Bar"
        case .goldBar: return "Gold Bar"
        case .iridiumBar: return "Iridium Bar"
        case .refinedQuartz: return "Refined Quartz"
        case .honey: return "Honey"
        case .teaSet: return "Tea Set"
        case .pickles: return "Pickles"
        case .stone8: return "Stone"
        case .jelly: return "Jelly"
        case .beer: return "Beer"
        case .rareSeed: return "Rare Seed"
        case .wine: return "Wine"
        case .energyTonic: return "Energy Tonic"
        case .juice: return "Juice"
        case .muscleRemedy: return "Muscle Remedy"
        case .basicFertilizer: return "Basic Fertilizer"
        case .qualityFertilizer: return "Quality Fertilizer"
        case .basicRetainingSoil: return "Basic Retaining Soil"
        case .qualityRetainingSoil: return "Quality Retaining Soil"
        case .clam: return "Clam"
        case .goldenPumpkin: return "Golden Pumpkin"
        case .poppy: return "Poppy"
        case .copperOre: return "Copper Ore"
        case .ironOre: return "Iron Ore"
        case .coal: return "Coal"
        case .goldOre: return "Gold Ore"
        case .iridiumOre: return "Iridium Ore"
        case .wood: return "Wood"
        case .stone9: return "Stone"
        case .nautilusShell: return "Nautilus Shell"
        case .coral: return "Coral"
        case .rainbowShell: return "Rainbow Shell"
        case .coffee: return "Coffee"
        case .spiceBerry: return "Spice Berry"
        case .seaUrchin: return "Sea Urchin"
        case .grape: return "Grape"
        case .springOnion: return "Spring Onion"
        case .strawberry: return "Strawberry"
        case .strawFloor: return "Straw Floor"
        case .sweetPea: return "Sweet Pea"
        case .fieldSnack: return "Field Snack"
        case .commonMushroom: return "Common Mushroom"
        case .woodPath: return "Wood Path"
        case .wildPlum: return "Wild Plum"
        case .gravelPath: return "Gravel Path"
        case .hazelnut: return "Hazelnut"
        case .crystalPath: return "Crystal Path"
        case .blackberry: return "Blackberry"
        case .cobblestonePath: return "Cobblestone Path"
        case .winterRoot: return "Winter Root"
        case .blueSlimeEgg: return "Blue Slime Egg"
        case .crystalFruit: return "Crystal Fruit"
        case .steppingStonePath: return "Stepping Stone Path"
        case .snowYam: return "Snow Yam"
        case .sweetGemBerry: return "Sweet Gem Berry"
        case .crocus: return "Crocus"
        case .vinegar: return "Vinegar"
        case .redMushroom: return "Red Mushroom"
        case .sunflower: return "Sunflower"
        case .purpleMushroom: return "Purple Mushroom"
        case .rice: return "Rice"
        case .cheese: return "Cheese"
        case .fairySeeds: return "Fairy Seeds"
        case .goatCheese: return "Goat Cheese"
        case .tulipBulb: return "Tulip Bulb"
        case .cloth: return "Cloth"
        case .jazzSeeds: return "Jazz Seeds"
        case .truffle: return "Truffle"
        case .sunflowerSeeds: return "Sunflower Seeds"
        case .truffleOil: return "Truffle Oil"
        case .coffeeBean: return "Coffee Bean"
        case .stardrop: return "Stardrop"
        case .goatMilk: return "Goat Milk"
        case .redSlimeEgg: return "Red Slime Egg"
        case .largeGoatMilk: return "L. Goat Milk"
        case .purpleSlimeEgg: return "Purple Slime Egg"
        case .wool: return "Wool"
        case .explosiveAmmo: return "Explosive Ammo"
        case .duckEgg: return "Duck Egg"
        case .duckFeather: return "Duck Feather"
        case .caviar: return "Caviar"
        case .rabbitsFoot: return "Rabbit's Foot"
        case .agedRoe: return "Aged Roe"
        case .stoneBase: return "Stone Base"
        case .stone10: return "Stone"
        case .weeds10: return "Weeds"
        case .poppySeeds: return "Poppy Seeds"
        case .ancientFruit: return "Ancient Fruit"
        case .spangleSeeds: return "Spangle Seeds"
        case .algaeSoup: return "Algae Soup"
        case .paleBroth: return "Pale Broth"
        case .bouquet: return "Bouquet"
        case .mead: return "Mead"
        case .mermaidsPendant: return "Mermaid's Pendant"
        case .decorativePot: return "Decorative Pot"
        case .drumBlock: return "Drum Block"
        case .fluteBlock: return "Flute Block"
        case .speedGro: return "Speed-Gro"
        case .deluxeSpeedGro: return "Deluxe Speed-Gro"
        case .parsnipSeeds: return "Parsnip Seeds"
        case .beanStarter: return "Bean Starter"
        case .cauliflowerSeeds: return "Cauliflower Seeds"
        case .potatoSeeds: return "Potato Seeds"
        case .garlicSeeds: return "Garlic Seeds"
        case .kaleSeeds: return "Kale Seeds"
        case .rhubarbSeeds: return "Rhubarb Seeds"
        case .melonSeeds: return "Melon Seeds"
        case .tomatoSeeds: return "Tomato Seeds"
        case .blueberrySeeds: return "Blueberry Seeds"
        case .pepperSeeds: return "Pepper Seeds"
        case .wheatSeeds: return "Wheat Seeds"
        case .radishSeeds: return "Radish Seeds"
        case .redCabbageSeeds: return "Red Cabbage Seeds"
        case .starfruitSeeds: return "Starfruit Seeds"
        case .cornSeeds: return "Corn Seeds"
        case .eggplantSeeds: return "Eggplant Seeds"
        case .artichokeSeeds: return "Artichoke Seeds"
        case .pumpkinSeeds: return "Pumpkin Seeds"
        case .bokChoySeeds: return "Bok Choy Seeds"
        case .yamSeeds: return "Yam Seeds"
        case .cranberrySeeds: return "Cranberry Seeds"
        case .beetSeeds: return "Beet Seeds"
        case .springSeeds: return "Spring Seeds"
        case .summerSeeds: return "Summer Seeds"
        case .fallSeeds: return "Fall Seeds"
        case .winterSeeds: return "Winter Seeds"
        case .ancientSeeds: return "Ancient Seeds"
        case .smallGlowRing: return "Small Glow Ring"
        case .glowRing: return "Glow Ring"
        case .smallMagnetRing: return "Small Magnet Ring"
        case .magnetRing: return "Magnet Ring"
        case .slimeCharmerRing: return "Slime Charmer Ring"
        case .warriorRing: return "Warrior Ring"
        case .vampireRing: return "Vampire Ring"
        case .savageRing: return "Savage Ring"
        case .ringofYoba: return "Ring of Yoba"
        case .sturdyRing: return "Sturdy Ring"
        case .burglarsRing: return "Burglar's Ring"
        case .iridiumBand: return "Iridium Band"
        case .jukeboxRing: return "Jukebox Ring"
        case .amethystRing: return "Amethyst Ring"
        case .topazRing: return "Topaz Ring"
        case .aquamarineRing: return "Aquamarine Ring"
        case .jadeRing: return "Jade Ring"
        case .emeraldRing: return "Emerald Ring"
        case .rubyRing: return "Ruby Ring"
        case .geode: return "Geode"
        case .frozenGeode: return "Frozen Geode"
        case .magmaGeode: return "Magma Geode"
        case .alamite: return "Alamite"
        case .bixite: return "Bixite"
        case .baryte: return "Baryte"
        case .aerinite: return "Aerinite"
        case .calcite: return "Calcite"
        case .dolomite: return "Dolomite"
        case .esperite: return "Esperite"
        case .fluorapatite: return "Fluorapatite"
        case .geminite: return "Geminite"
        case .helvite: return "Helvite"
        case .jamborite: return "Jamborite"
        case .jagoite: return "Jagoite"
        case .kyanite: return "Kyanite"
        case .lunarite: return "Lunarite"
        case .malachite: return "Malachite"
        case .neptunite: return "Neptunite"
        case .lemonStone: return "Lemon Stone"
        case .nekoite: return "Nekoite"
        case .orpiment: return "Orpiment"
        case .petrifiedSlime: return "Petrified Slime"
        case .thunderEgg: return "Thunder Egg"
        case .pyrite: return "Pyrite"
        case .oceanStone: return "Ocean Stone"
        case .ghostCrystal: return "Ghost Crystal"
        case .tigerseye: return "Tigerseye"
        case .jasper: return "Jasper"
        case .opal: return "Opal"
        case .fireOpal: return "Fire Opal"
        case .celestine: return "Celestine"
        case .marble: return "Marble"
        case .sandstone: return "Sandstone"
        case .granite: return "Granite"
        case .basalt: return "Basalt"
        case .limestone: return "Limestone"
        case .soapstone: return "Soapstone"
        case .hematite: return "Hematite"
        case .mudstone: return "Mudstone"
        case .obsidian: return "Obsidian"
        case .slate: return "Slate"
        case .fairyStone: return "Fairy Stone"
        case .starShards: return "Star Shards"
        case .prehistoricScapula: return "Prehistoric Scapula"
        case .prehistoricTibia: return "Prehistoric Tibia"
        case .prehistoricSkull: return "Prehistoric Skull"
        case .skeletalHand: return "Skeletal Hand"
        case .prehistoricRib: return "Prehistoric Rib"
        case .prehistoricVertebra: return "Prehistoric Vertebra"
        case .skeletalTail: return "Skeletal Tail"
        case .nautilusFossil: return "Nautilus Fossil"
        case .amphibianFossil: return "Amphibian Fossil"
        case .palmFossil: return "Palm Fossil"
        case .trilobite: return "Trilobite"
        case .artifactSpot: return "Artifact Spot"
        case .tulip: return "Tulip"
        case .summerSpangle: return "Summer Spangle"
        case .fairyRose: return "Fairy Rose"
        case .blueJazz: return "Blue Jazz"
        case .sprinkler: return "Sprinkler"
        case .plumPudding: return "Plum Pudding"
        case .artichokeDip: return "Artichoke Dip"
        case .stirFry: return "Stir Fry"
        case .roastedHazelnuts: return "Roasted Hazelnuts"
        case .pumpkinPie: return "Pumpkin Pie"
        case .radishSalad: return "Radish Salad"
        case .fruitSalad: return "Fruit Salad"
        case .blackberryCobbler: return "Blackberry Cobbler"
        case .cranberryCandy: return "Cranberry Candy"
        case .apple: return "Apple"
        case .greenTea: return "Green Tea"
        case .bruschetta: return "Bruschetta"
        case .qualitySprinkler: return "Quality Sprinkler"
        case .cherrySapling: return "Cherry Sapling"
        case .apricotSapling: return "Apricot Sapling"
        case .orangeSapling: return "Orange Sapling"
        case .peachSapling: return "Peach Sapling"
        case .pomegranateSapling: return "Pomegranate Sapling"
        case .appleSapling: return "Apple Sapling"
        case .apricot: return "Apricot"
        case .orange: return "Orange"
        case .peach: return "Peach"
        case .pomegranate: return "Pomegranate"
        case .cherry: return "Cherry"
        case .iridiumSprinkler: return "Iridium Sprinkler"
        case .coleslaw: return "Coleslaw"
        case .fiddleheadRisotto: return "Fiddlehead Risotto"
        case .poppyseedMuffin: return "Poppyseed Muffin"
        case .stone11: return "Stone"
        case .stone12: return "Stone"
        case .weeds11: return "Weeds"
        case .weeds12: return "Weeds"
        case .weeds13: return "Weeds"
        case .weeds14: return "Weeds"
        case .weeds15: return "Weeds"
        case .weeds16: return "Weeds"
        case .greenSlimeEgg: return "Green Slime Egg"
        case .rainTotem: return "Rain Totem"
        case .mutantCarp: return "Mutant Carp"
        case .bugMeat: return "Bug Meat"
        case .bait: return "Bait"
        case .spinner: return "Spinner"
        case .dressedSpinner: return "Dressed Spinner"
        case .warpTotemFarm: return "Warp Totem Farm"
        case .warpTotemMountains: return "Warp Totem Mountains"
        case .warpTotemBeach: return "Warp Totem Beach"
        case .barbedHook: return "Barbed Hook"
        case .leadBobber: return "Lead Bobber"
        case .treasureHunter: return "Treasure Hunter"
        case .trapBobber: return "Trap Bobber"
        case .corkBobber: return "Cork Bobber"
        case .sturgeon: return "Sturgeon"
        case .tigerTrout: return "Tiger Trout"
        case .bullhead: return "Bullhead"
        case .tilapia: return "Tilapia"
        case .chub: return "Chub"
        case .magnet: return "Magnet"
        case .dorado: return "Dorado"
        case .albacore: return "Albacore"
        case .shad: return "Shad"
        case .lingcod: return "Lingcod"
        case .halibut: return "Halibut"
        case .hardwood: return "Hardwood"
        case .crabPot: return "Crab Pot"
        case .lobster: return "Lobster"
        case .crayfish: return "Crayfish"
        case .crab: return "Crab"
        case .cockle: return "Cockle"
        case .mussel: return "Mussel"
        case .shrimp: return "Shrimp"
        case .snail: return "Snail"
        case .periwinkle: return "Periwinkle"
        case .oyster: return "Oyster"
        case .mapleSyrup: return "Maple Syrup"
        case .oakResin: return "Oak Resin"
        case .pineTar: return "Pine Tar"
        case .chowder: return "Chowder"
        case .fishStew: return "Fish Stew"
        case .escargot: return "Escargot"
        case .lobsterBisque: return "Lobster Bisque"
        case .mapleBar: return "Maple Bar"
        case .crabCakes: return "Crab Cakes"
        case .shrimpCocktail: return "Shrimp Cocktail"
        case .woodskip: return "Woodskip"
        case .strawberrySeeds: return "Strawberry Seeds"
        case .jackOlantern: return "Jack-O-Lantern"
        case .rottenPlant1: return "Rotten Plant"
        case .rottenPlant2: return "Rotten Plant"
        case .omniGeode: return "Omni Geode"
        case .weeds17: return "Weeds"
        case .stone13: return "Stone"
        case .stone14: return "Stone"
        case .stone15: return "Stone"
        case .stone16: return "Stone"
        case .stone17: return "Stone"
        case .slime18: return "Slime"
        case .batWing: return "Bat Wing"
        case .solarEssence: return "Solar Essence"
        case .voidEssence: return "Void Essence"
        case .mixedSeeds: return "Mixed Seeds"
        case .fiber: return "Fiber"
        case .oilofGarlic: return "Oil of Garlic"
        case .lifeElixir: return "Life Elixir"
        case .wildBait: return "Wild Bait"
        case .glacierfish: return "Glacierfish"
        case .weeds18: return "Weeds"
        case .weeds19: return "Weeds"
        case .weeds20: return "Weeds"
        case .batteryPack: return "Battery Pack"
        case .lostAxe: return "Lost Axe"
        case .luckyPurpleShorts: return "Lucky Purple Shorts"
        case .berryBasket: return "Berry Basket"
        case .goldenCoconut: return "Golden Coconut"
        case .weeds21: return "Weeds"
        case .weeds22: return "Weeds"
        case .weeds23: return "Weeds"
        case .voidSalmon: return "Void Salmon"
        case .slimejack: return "Slimejack"
        case .pearl: return "Pearl"
        case .midnightSquid: return "Midnight Squid"
        case .spookFish: return "Spook Fish"
        case .blobfish: return "Blobfish"
        case .weddingRing: return "Wedding Ring"
        case .cactusSeeds: return "Cactus Seeds"
        case .iridiumMilk: return "Iridium Milk"
        case .treeFertilizer: return "Tree Fertilizer"
        case .dinosaurMayonnaise: return "Dinosaur Mayonnaise"
        case .voidGhostPendant: return "Void Ghost Pendant"
        case .movieTicket: return "Movie Ticket"
        case .crabshellRing: return "Crabshell Ring"
        case .napalmRing: return "Napalm Ring"
        case .roe: return "Roe"
        case .squidInk: return "Squid Ink"
        case .teaLeaves: return "Tea Leaves"
        case .stone19: return "Stone"
        case .stone20: return "Stone"
        case .stone21: return "Stone"
        case .stone22: return "Stone"
        case .fossilizedSkull: return "Fossilized Skull"
        case .fossilizedSpine: return "Fossilized Spine"
        case .fossilizedTail: return "Fossilized Tail"
        case .fossilizedLeg: return "Fossilized Leg"
        case .fossilizedRibs: return "Fossilized Ribs"
        case .snakeSkull: return "Snake Skull"
        case .snakeVertebrae: return "Snake Vertebrae"
        case .mummifiedBat: return "Mummified Bat"
        case .mummifiedFrog: return "Mummified Frog"
        case .ginger: return "Ginger"
        case .taroRoot: return "Taro Root"
        case .taroTuber: return "Taro Tuber"
        case .pineapple: return "Pineapple"
        case .pineappleSeeds: return "Pineapple Seeds"
        case .mango: return "Mango"
        case .mangoSapling: return "Mango Sapling"
        case .stingray: return "Stingray"
        case .lionfish: return "Lionfish"
        case .blueDiscus: return "Blue Discus"
        case .thornsRing: return "Thorns Ring"
        case .rusticPlankFloor: return "Rustic Plank Floor"
        case .stoneWalkwayFloor: return "Stone Walkway Floor"
        case .journalScrap: return "Journal Scrap"
        case .stone23: return "Stone"
        case .stone24: return "Stone"
        case .stone25: return "Stone"
        case .stone26: return "Stone"
        case .stone27: return "Stone"
        case .cinderShard: return "Cinder Shard"
        case .stone28: return "Stone"
        case .stone29: return "Stone"
        case .magmaCap: return "Magma Cap"
        case .dragonTooth: return "Dragon Tooth"
        case .curiosityLure: return "Curiosity Lure"
        case .tigerSlimeEgg: return "Tiger Slime Egg"
        case .qiGem: return "Qi Gem"
        case .luckyRing: return "Lucky Ring"
        case .hotJavaRing: return "Hot Java Ring"
        case .protectionRing: return "Protection Ring"
        case .soulSapperRing: return "Soul Sapper Ring"
        case .phoenixRing: return "Phoenix Ring"
        case .warMemento: return "War Memento"
        case .gourmetTomatoSalt: return "Gourmet Tomato Salt"
        case .stardewValleyRose: return "Stardew Valley Rose"
        case .advancedTvremote: return "Advanced TV Remote"
        case .arcticShard: return "Arctic Shard"
        case .wrigglingWorm: return "Wriggling Worm"
        case .piratesLocket: return "Pirate's Locket"
        case .fairyDust: return "Fairy Dust"
        case .pinaColada: return "Pina Colada"
        case .bugSteak: return "Bug Steak"
        case .ectoplasm: return "Ectoplasm"
        case .prismaticJelly: return "Prismatic Jelly"
        case .qualityBobber: return "Quality Bobber"
        case .monsterMusk: return "Monster Musk"
        case .combinedRing: return "Combined Ring"
        case .boneFragment: return "Bone Fragment"
        case .weeds24: return "Weeds"
        case .weeds25: return "Weeds"
        case .weeds26: return "Weeds"
        case .fiberSeeds: return "Fiber Seeds"
        case .warpTotemIsland: return "Warp Totem: Island"
        case .immunityBand: return "Immunity Band"
        case .glowstoneRing: return "Glowstone Ring"
        case .qiFruit: return "Qi Fruit"
        case .qiBean: return "Qi Bean"
        case .mushroomTreeSeed: return "Mushroom Tree Seed"
        case .warpTotemQisArena: return "Warp Totem: Qi's Arena"
        case .fireworksRed: return "Fireworks (Red)"
        case .fireworksPurple: return "Fireworks (Purple)"
        case .fireworksGreen: return "Fireworks (Green)"
        case .galaxySoul: return "Galaxy Soul"
        case .pierresMissingStocklist: return "Pierre's Missing Stocklist"
        case .sonofCrimsonfish: return "Son of Crimsonfish"
        case .msAngler: return "Ms. Angler"
        case .legendIi: return "Legend II"
        case .radioactiveCarp: return "Radioactive Carp"
        case .glacierfishJr: return "Glacierfish Jr."
        case .gingerAle: return "Ginger Ale"
        case .bananaPudding: return "Banana Pudding"
        case .mangoStickyRice: return "Mango Sticky Rice"
        case .poi: return "Poi"
        case .tropicalCurry: return "Tropical Curry"
        case .magicBait: return "Magic Bait"
        case .radioactiveOre: return "Radioactive Ore"
        case .radioactiveBar: return "Radioactive Bar"
        case .horseFlute: return "Horse Flute"
        case .enricher: return "Enricher"
        case .pressureNozzle: return "Pressure Nozzle"
        case .qiSeasoning: return "Qi Seasoning"
        case .hyperSpeedGro: return "Hyper Speed-Gro"
        case .deluxeFertilizer: return "Deluxe Fertilizer"
        case .deluxeRetainingSoil: return "Deluxe Retaining Soil"
        case .squidInkRavioli: return "Squid Ink Ravioli"
        case .supplyCrate1: return "SupplyCrate"
        case .supplyCrate2: return "SupplyCrate"
        case .supplyCrate3: return "SupplyCrate"
        case .slimeCrate: return "Slime Crate"
        case .cookoutKit: return "Cookout Kit"
        case .campingStove: return "Camping Stove"
        case .goldenEgg: return "Golden Egg"
        case .hedge: return "Hedge"
        }
    }
}































































































































































































































































































































































































































































































































































































































































































































