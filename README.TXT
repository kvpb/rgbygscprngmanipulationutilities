Caution. These RNG manipulation utilities will not make you win seven million seven hundred seventy-seven thousand seven hundred seventy-seven bucks IRL, nor a house in Hawaii nor a motorway slip road. Deal with it.
Attention. Ces utilities de manipulation du RNG ne vous feront pas gagner sept millions sept cent soixante-dix-sept mille sept cent soixante-dix-sept balles en vrais dollars IRL, ni une baraque à Hawaï ni une bretelle d'autoroute. Démerdez-vous avec ça.
Achtung. Diese Dienstprogramme zur RNG-Manipulation verhelfen Ihnen IRL weder zu sieben Millionen siebenhundertsiebenundsiebzigtausendsiebenhundertsiebenundsiebzig Mäusen in echten Dollar, noch zu einem Haus auf Hawaii noch zu einer Autobahnauffahrt. Finden Sie sich damit ab.

                  Karl Vincent Pierre Bertin `kvpb`'s
                       Thomas  George West   `ktgw`
                  カール・ビンセント・ピエール・ベルティン　の
                  　　　　　トーマス・ジョージ・ウェスト
                  Pocket Monsters Red & Green,
                  ポケットモンスター　赤・緑、
                                  Blue and
                  　　　　　　　　　　青と
                                  Yellow
                  　　　　　　　　　　ピカチュウ
                              and Gold & Silver and
                  　　　　　　　　　と金・銀と
                                  Crystal Version
                  　　　　　　　　　　クリスタルバージョン
                        PRNG manipulation utilities
                  　　　擬似乱数生成器操作用ユーティリティ

E N G L I S H 
       E n g l i s h 

This software is an automation script^ in Lua^ for Pokémon Red Version, Green Version, Blue Version, Yellow Version: Special Pikachu Edition, Gold Version, Silver Version and Crystal Version and VisualBoyAdvance-ReRecording (VBA-RR)^. It requires a ROM of one of these games, VBA-ReRecording 23.6 (SVN 480) and a 32-bit version of Windows or a 64-bit version of Windows with the Windows-32-on-Windows-64 (WOW64) subsystem. You may set it up with the explorer^ and notepad^ of Windows and use it via a Lua script window of the Lua scripting tool of VBA-RR on one of these games.

S E T   U P 
      set up

  0  Install VisualBoyAdvance-ReRecording 23.6 (SVN 480)^, and ensure the Windows notepad^ is installed.
  1  Get my G1 & G2 RNG manipulation utilities^, take the Lua file^ from the archive, and put them in the folder for Lua scripts of VBA-RR^.
  2  Launch VBA-RR^, start its Lua stand-alone interpreter^, browse the folder for the script, and edit its 'parameter' variables^, or run it at the right moment of the game.

U S E   N O W   F A S T 
            use now fast

     id
     Want a particular ID No.? Set TID_target to this trainer ID number or list_TID_target to several, and set mode to "id"--with the quotes--on line 1. Run the script with the cursor over 'NEW GAME'.

     get
     Wanna get a flawless or shiny gift 'mon, for example a starter? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "get"--with the quotes--on line 1. Run the script right on the last interaction prior to the calculation of the 'mon's individual strengths---in RGBY the nickname prompt with the cursor over 'NO' or 'END' in the nickname prompt. The relevant lines of the script are commented with all common target individual strength spreads.

     catch
     Wanna catch that wild 'mon? Set mode to "catch"--with the quotes--on line 1. Run the script with the cursor on the ball you'll throw in RGBY or on 'USE' in GSC in the menu.

     breed
     Wanna breed a flawless or shiny 'mon egg? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "breed"--with the quotes--on line 1. Run the script at the end of the first line of the dialogue after the selection of the second parent at the day care, before you hear the 'mon cry. The relevant lines of the script are commented with all common target individual strength spreads.

     encounter
     Wanna encounter a flawless or shiny wild 'mon in the grass or a cave? Set DV_target to { "color" } for any shiny 'mon or { "flawless" } for a flawless 'mon, optionally also set species_target or list_species_target to the 'dex number of your species of choice, and set mode to "encounter"--with the quotes--on line 1. Stand on a wild-encounter tile, and run the script. The relevant lines of the script are commented with all common target individual strength spreads.

     fish
     Wanna fish a competitive shiny wild 'mon in the water? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--optionally also set species_target or list_species_target to the 'dex number of your species of choice, and set mode to "fish"--with the quotes--on line 1. Run the script with the cursor over a rod in RGBY or 'USE' on the rod in the menu in GSC. The relevant lines of the script are commented with all common target individual strength spreads.

     smash
     Wanna encounter a flawless or shiny 'mon from a rock? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--optionally also set species_target or list_species_target to the 'dex number of your species of choice, and set mode to "smash"--with the quotes--on line 1. Run the script on the last stable state on the last string of text of the dialog after action on the rock. The relevant lines of the script are commented with all common target individual strength spreads.

     headbutt
     Wanna encounter a flawless or shiny 'mon from a tree? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--optionally also set species_target or list_species_target to the 'dex number of your species of choice, and set mode to "headbutt"--with the quotes--on line 1. Run the script on the last stable state on the last string of text of the dialog after action on the tree. The relevant lines of the script are commented with all common target individual strength spreads.

     trade
     Want to trade NPCs their flawless or shiny 'mons? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "trade"--with the quotes--on line 1. Run the script on the last stable state on the last string of text of the dialog before the cutscene, around the link cable text. The relevant lines of the script are commented with all common target individual strength spreads.

     battle
     Wanna battle a flawless or shiny 'stationary' 'mon, i.e. a snorlax, a zapdos, a lapras, a ho-oh...? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "battle"--with the quotes--on line 1. Run at the end of the cry, or the last stable state right before the battle. The relevant lines of the script are commented with all common target individual strength spreads.

     hold
     Want a wild 'mon to hold a specific item? Set item_target on line 34 or list_item_target on line 35--with the commas and braces--to the hexadecimal item index numbers of your items of choice, optionally also set species_target or list_species_target to the 'dex number of your species of choice, [but more simply just set species_target, as list_item_target is set to all of the most useful item index numbers already,] and set mode to "hold"--with the quotes--on line 1. Stand on a wild-encounter tile, and run the script. The relevant lines of the script are commented with all common target individual strength spreads.

     unown
     Wanna encounter a specific flawless or shiny unown? Set letter_unown_target to your capital letter of choice--with the quotes--or set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "unown"--with the quotes--on line 1. Run the script in the underground of the Ruins of Alph. The relevant lines of the script are commented with all common target individual strength spreads.

     raikouenteisuicune
     Want a flawless or a shiny runaway, in GS raikou, entei or suicune, in C raikou or entei? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "raikouenteisuicune"--with the quotes--on line 1. Run the script on the last stable state before the first encounter with raikou, entei and suicune. The relevant lines of the script are commented with all common target individual strength spreads.

     suicune
     Want a flawless or shiny suicune in Crystal Version? Set DV_target to { "flawless" } or { "color" }--with the braces and the quotes--and set mode to "suicune"--with the quotes--on line 1. Run the script on the last stable state before the battle with suicune. The relevant lines of the script are commented with all common target individual strength spreads.

     count
     How much do you have to walk for the next egg? Set mode to "count"--with the quotes--on line 1. Run the script at any moment after the selection of the second parent with two compatible 'mons in day care.

     lay
     Wanna get an egg readied? Set mode to "lay"--with the quotes--on line 1. Run the script after the dialog of the selection of the second parent with two compatible 'mons in day care.

     hatch
     Wanna hatch eggs? Set mode to "hatch"--with the quotes--on line 1. Run the script in a state of free movement after collection of the egg with the egg in the party.

     walktogether
     Wanna bond with your 'mons? Set mode to "walktogether"--with the quotes--on line 1. Run the script in a state of free movement with the target 'mon first in the party.

U S E 
   use

The script can't be controlled interactively. As it's gotta be set with variables entirely, it's controlled by modes. Before you run the script, you select the mode through its variable.

kvpbsg1ng2rngmanipulationbot.lua
line 1    mode = "encounter"

All 'parameter variables' must be set in the Lua file itself. The mode determines the parameter variables in use; different modes may rely on different parameter variables. Right away in this manual-page-like section of the read-me file follow all parameter variables or constants and their values.
    You must get the game in the last stable state before interaction for the result, e.g. IS spread, 'mon capture, wild 'mon's item, egg eclosion, friendship level... The script must then be ran at that moment, not too earlier, nor any later. It then interacts with the game, reads the memory, rejects failures, reloads the state, advances the game, rinses, repeats, until it succeeds in hitting a frame of your target result.
    The script may need to run for a while. VBA-RR may be set to get the game to run much faster: unsynchronize the emulation speed, skip 9 out of 10 frames, speed it up to 1000%, scale the window down to 1 ×, and disable the sound.^

' P A R A M E T E R '   V A R I A B L E S 

     mode
     ... Sets the script to interact with the game in a certain way.
     values:
          "id",
          "get",
          "catch",
          "breed",
          "encounter",
          "fish",
          "smash",
          "headbutt",
          "trade",
          "battle",
          "hold",
          "unown",
          "raikouenteisuicune",
          "suicune",
          "glitch",
          "yellowmew",
          "gengar",
          "mewtwomoltres",
          "count",
          "lay",
          "hatch",
          "walktogether";

     flag_pause_uponhit
     ... Sets pausing the emulation, when we've succeeded.
      values:
          true,
          false;

     flag_lapras
     ... Sets the script to battle laprases.
      values:
          true,
          false;

     DV_target
     ... Sets usual DV targets.
     values:
          "color", "altcolor" or "shiny" for any alt. color 'mon,
          "flawless" or
          "flawlessdark" for a flawless, dark-type hidden power 'mon,
          "colorflawless", for any '(near-)flawless' alt. color 'mon,
          "flawlessdragon",
          "flawlessice",
          "flawlesspsychic",
          "flawlesselectric",
          "flawlessgrass",
          "flawlesswater",
          "flawlessfire",
          "flawlesssteel",
          "flawlessghost",
          "flawlessbug",
          "flawlessrock",
          "flawlessground",
          "flawlesspoison",
          "flawlessflying",
          "flawlessfighting",
          "colorflawlessgrass",
          "colorflawlessdragon";

     DV_ATKDEF &
     DV_SPDSPC
     ... Set a IS spread by bytes.
     values: [ 0x00, 0xFF ];

     DV_ATK,
     DV_DEF,
     DV_SPD &
     DV_SPC
     ... Set a IS spread by values.
     values: [  0, 15 ];

     species_target
     ... Sets a target species.
     values:
          -1,
          any index of a species ( [   1, 250 ] );

     list_species_target
     ... Sets several target species.
     values:
          1,
          2...
          250;

     list_species_DV_target
     ... Sets the target species and DV together. This parameter overrides
     independent species and DV targets.
     values:
          species,
          DV_ATKDEF and
          DV_SPDSPC;

A C T I O N   R O U T I N E S   ( S C R I P T   M O D E S ) 

     id
     ... Sets the script to get one of the target trainer IDs.
     ... Stops, when the target trainer ID has been obtained.
     The script in this mode is run with the cursor over 'NEW GAME'. mode parameter variables:
          TID_target,
          list_TID_target;

     get
     ... Sets the script to get a gift 'mon with one of the target IS spreads.
     ... Stops, when a target IS spread has been found.
     The script in this mode is run on the last stable state before the 'mon is gifted, or rather its IS spread calculated, in RGBY at the prompt for a nickname with the cursor over 'NO'.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     catch
     ... Sets the script to catch the wild 'mon.
     ... Stops, when the wild 'mon has been caught.
     The script in this mode is run with the cursor over a ball in RGBY or 'USE' on the ball in GSC, before you throw it.
     mode parameter variables: flag_pause_uponhit;

     breed
     ... Sets the script to breed 'mons for an egg with target IS spreads.
     ... Works with GSC only.
     ... Stops, when the target IS spread has been calculated.
     The script in this mode is run at the end of the first string of text of the dialog before the cry of the 'mon after the party screen for the selection of the second parent in day care.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     encounter
     ... Sets the script to make you walk for target species and IS spreads.
     ... Stops, when the target species and IS spread has been calculated.
     The script in this mode is run on a wild-encounter tile. The bot makes you walk right first in GSC.
     mode parameter variables:
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC,
          code_direction;

     fish
     ... Sets the script to fish for certain species and IS spreads.
     ... Stops, when the target species and IS spread has been calculated.
     The script in this mode is run with the cursor over a rod in RGBY or 'USE' on the rod in the menu in GSC.
     mode parameter variables:
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     smash
     ... Sets the script to 'smash rocks' for certain species and IS spreads.
     ... Works with GSC only.
     ... Stops, when the target species and IS spread has been calculated.
     The script in this mode is run on the last stable state on the last string of text of the dialog after action on the rock.
     mode parameter variables:
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     headbutt
     ... Sets the script to 'headbutt trees' for certain species and IS spreads.
     ... Works with GSC only.
     ... Stops, when the target species and IS spread has been calculated.
     The script in this mode is run on the last stable state on the last string of text of the dialog after action on the tree.
     mode parameter variables:
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     trade
     ... Sets the script to trade 'mons with NPCs in game for certain IS spreads.
     ... Works with RGBY only. It could work with GSC too, but the ROM of Crystal has been disassembled, and this has revealed a macro contains the nickname, IS, item, OTID and original trainer name, then 2 bytes of IS for each 'mon, so NPCs' 'mons' IS are hard-coded in GSC.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run on the last stable state on the last string of text of the dialog before the cutscene, around the link cable text.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     battle
     ... Sets the script to battle stationary 'mons for certain IS spreads.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run at the end of the dialog of the cry or the last stable state before the battle.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC,
          flag_lapras;

     hold
     ... Sets the script to encounter wild 'mons with certain items.
     ... Works with GSC only.
     ... Stops, when the target held item has been found.
     The script in this mode is run on a wild-encounter tile.
     mode parameter variables:
          item_target,
          list_item_target,
          species_target,
          list_species_target;

     unown
     ... Sets the script to encounter unowns with certain letters and IS spreads.
     ... Works with GSC only.
     ... Stops, when the target letter and IS spread has been calculated.
     The script in this mode is run on a wild-encounter tile in an all-unown area, namely the underground of the Ruins of Alph.
     mode parameter variables:
          letter_unown_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     raikouenteisuicune
     ... Sets the script to release roamers for certain IS spreads.
     ... Works with Gold and Silver for suicune only, works with Crystal for raikou and entei only.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run on the last stable state before the generation of raikou, entei and suicune.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     suicune
     ... Sets the script to battle suicune for certain IS spreads.
     ... Works with Crystal only.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run on the last stable state before the battle with suicune.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     glitch
     ... Sets the script to exploit the long-range trainer-fly glitch for the target IS spreads.
     ... Works with RGBY only.
     ... Stops, when the target IS spread has been calculated.
     The script in this mode is run on the menu before the battle.
     mode parameter variables:
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     yellowmew
     ... Sets the script to make a mew appear in Yellow with certain DV spreads.
     ... Works with Yellow only.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run on the menu before the battle.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     gengar
     ... Sets the script to battle gengar via the mew glitch for certain IS spreads in Viridian Forest.
     ... Works with RGBY only.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run on the menu before the battle.
     mode parameter variables:
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     mewtwomoltres
     ... Sets the script to battle Moltres for a certain IS spread for a Moltres with 131 of SPC for Mewtwo via the long-range trainer glitch.
     ... Works with RGBY only.
     ... Stops, when the target IS spread has been found.
     The script in this mode is run at the end of the dialog of the cry before the battle with Moltres.
     mode parameter variables:
          species_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC;

     count
     ... Sets the script to print a counter of steps to an egg in day care.
     ... Works with GSC only.
     ... Counts the number of steps to an egg in day care.
     The script in this mode is run at any moment after the selection of the second parent with two compatible 'mons in day care.

     lay
     ... Sets the script to get you to walk, until an egg has been readied.
     ... Works with GSC only.
     ... Stops, when an egg has been readied.
     The script in this mode is run after the dialog of the selection of the second parent with two compatible 'mons in day care.
     mode parameter variables:
          n_step_potentialegg_target,
          max_delay,
          direction_lateral;

     hatch
     ... Sets the script to walk until eggs hatch.
     ... Works with GSC only.
     ... Stops, when the egg has hatched.
     The script in this mode is run in a state of free movement after collection of the egg with the egg in the party.
     mode parameter variables: direction_lateral;

     walktogether
     ... Sets the script to walk for certain friendship values.
     ... Works with Y for the starter pikachu and GSC only.
     ... Stops, when the target friendship value has been reached.
     The script in this mode is run in a state of free movement with the target 'mon first in the party.
     mode parameter variables:
          friendship_target,
          direction_lateral;

F R A N Ç A I S 
        f r a n ç a i s 

Ce logiciel est un script d'automatisation^ en Lua^ pour Pokémon Version Rouge, Version Verte, Version Bleue, Version Jaune : Édition Spéciale Pikachu, Version Or, Version Argent et Version Cristal et pour VisualBoyAdvance-ReRecording (VBA-RR)^. Il requiert une ROM d'un de ces jeux, VBA-ReRecording 23.6 (SVN 480) et une version 32 bits de Windows ou une version 64 bits de Windows avec le sous-système Windows-32-on-Windows-64 (WOW64). Vous pouvez le configurer avec l'explorateur^ et le bloc-notes^ de Windows, puis l'utiliser dans une fenêtre de script en Lua de l'outil de script en Lua de VBA-RR sur un de ces jeux.

I N S T A L L E R 
         installer

  0  Installez VisualBoyAdvance-ReRecording 23.6 (SVN 480)^, et vérifiez l'installation du bloc-notes^ de Windows.
  1  Récupérez mes utilities de manipulation du RNG G1 & G2^, prenez le fichier Lua^ dans l'archive, et mettez-le dans le dossier de scripts en Lua de VBA-RR^.
  2  Lancez VBA-RR^, lancez son stand-alone interpreter de Lua^, parcourez le dossier du script, et modifiez ses 'variables de paramètre'^, ou lancez-le au bon moment du jeu.

U T I L I S E R 
        utiliser

Le script ne se contrôle pas de manière interactive. Il doit être réglé entièrement avec des variables et donc se contrôle par mode. Avant que vous ne lanciez le script, vous en sélectionnez par sa variable le mode.

kvpbsg1ng2rngmanipulationbot.lua
ligne 1    mode = "encounter"

Toutes les 'variables de paramètre' doivent être réglées dans le fichier de Lua lui-même. Le mode détermine les variables de paramètre utilisées ; différents modes peuvent reposer sur différentes variables de paramètre. Juste après dans cette section de ce fichier de read-me à la façon d'une page de manuel suivent toutes les variables ou constantes de paramètre ainsi que leurs valeurs.
    Vous devez mettre le jeu dans le dernier état stable avant l'interaction pour le résultat, par exemple répartition de stats individuelles (SI), capture de 'mon, objet de 'mon sauvage, éclosion d'œuf, niveau d'amitié... Le script doit ensuite se lancer à ce moment, ni trop tôt, ni plus tard. Il interagit ensuite avec le jeu, lit la mémoire, rejette les échecs, recharge l'état, fait avancer le jeu et recommence jusqu'à l'atteinte d'une frame du résultat cible.
    Le script risque d'opérer pour un moment. VBA-RR peut faire tourner le jeu beaucoup plus vite : désynchronisez la vitesse d'émulation, faites sauter 9 frames sur 10, accélérez-le à 1000 %, réduisez la fenêtre à 1 ×, et désactivez le son.^

V A R I A B L E S   ' D E   P A R A M È T R E ' 

     mode
     ... Règle le mode d'interaction du script avec le jeu.
     valeurs :
          "id",
          "get",
          "catch",
          "breed",
          "encounter",
          "fish",
          "smash",
          "headbutt",
          "trade",
          "battle",
          "hold",
          "unown",
          "raikouenteisuicune",
          "suicune",
          "glitch",
          "yellowmew",
          "gengar",
          "mewtwomoltres",
          "count",
          "lay",
          "hatch",
          "walktogether" ;

     flag_pause_uponhit
     ... Permet au script de figer l'émulation après succès.
     valeurs :
          true,
          false ;

     flag_lapras
     ... Permet au script de vous faire combattre des lokhlass.
     valeurs :
          true,
          false ;

     DV_target
     ... Définit des répartitions de SI usuelles.
     valeurs :
          "color", "altcolor" ou "shiny" pour tout 'mon de couleur inhabituelle,
          "flawless" ou
          "flawlessdark" pour un 'mon parfait à puissance cachée de type ténèbres,
          "colorflawless", pour tout 'mon de couleur inhabituelle '(quasi-)parfait',
          "flawlessdragon",
          "flawlessice",
          "flawlesspsychic",
          "flawlesselectric",
          "flawlessgrass",
          "flawlesswater",
          "flawlessfire",
          "flawlesssteel",
          "flawlessghost",
          "flawlessbug",
          "flawlessrock",
          "flawlessground",
          "flawlesspoison",
          "flawlessflying",
          "flawlessfighting",
          "colorflawlessgrass",
          "colorflawlessdragon" ;

     DV_ATKDEF &
     DV_SPDSPC
     ... Règlent une répartition de SI par octets.
     valeurs : [ 0x00 ; 0xFF ] ;

     DV_ATK,
     DV_DEF,
     DV_SPD &
     DV_SPC
     ... Règlent une répartition de SI par valeurs.
     valeurs : [  0 ; 15 ] ;

     species_target
     ... Règle une espèce cible.
     valeurs :
          -1,
          tout index d'espèce ( [   1 ; 250 ] ) ;

     list_species_target
     ... Règle plusieurs espèces cibles.
     valeurs :
          1,
          2...
          250 ;

     list_species_DV_target
     ... Associe l'espèce cible et les SI. Ce paramètre remplace les cibles indépendantes d'espèce et de SI.
     valeurs :
          species,
          DV_ATKDEF et
          DV_SPDSPC ;

R O U T I N E S   D ' A C T I O N   ( M O D E S   D U   S C R I P T ) 

     id
     ... Fait le script chercher des ID de dresseur cibles.
     ... S'arrête à l'obtention de l'ID de dresseur cible.
     Le script en ce mode est exécuté avec le curseur sur 'NOUVEAU JEU'.
     variables de paramètre du mode :
          TID_target,
          list_TID_target ;

     get
     ... Fait le script recevoir des 'mons donnés avec des répartitions des SI cibles.
     ... S'arrête à l'obtention d'une répartition des SI cibles.
     Le script en ce mode est exécuté au dernier état stable avant le don du 'mon ou plutôt le calcul de sa répartition de SI dans RVBJ à la demande de surnom avec le curseur sur 'NON'.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     catch
     ... Fait le script capturer le 'mon sauvage.
     ... S'arrête après capture du 'mon sauvage.
     Le script en ce mode est exécuté avec le curseur sur une ball dans RVBJ ou 'UTIL' sur une ball dans OAC, avant que vous ne la lanciez.
     variables de paramètre du mode : flag_pause_uponhit ;

     breed
     ... Fait le script faire se reproduire des 'mons pour des œufs avec des répartitions de SI cibles.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après calcul de la répartition des SI cibles.
     Le script en ce mode est exécuté à la fin du premier texte du dialogue juste avant le cri du 'mon après l'écran d'équipe pour la sélection du deuxième parent à la pension.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     encounter
     ... Fait le script marcher vers des espèces cibles et des répartitions de SI.
     ... S'arrête après calcul de l'espèce cible et de la répartition de SI.
     Le script en ce mode est exécuté sur une case de rencontre de sauvage. Le bot vous fait marcher vers la droite d'abord dans OAC.
     variables de paramètre du mode :
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC,
          code_direction ;

     fish
     ... Fait le script pêcher certaines espèces avec certaines répartitions de SI.
     ... S'arrête après apparition de l'espèce cible et calcul de la répartition de SI cible.
     Le script en ce mode est exécuté avec le curseur sur une canne dans le menu dans RVBJ ou 'UTIL' sur une canne dans le menu dans OAC.
     variables de paramètre du mode :
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     smash
     ... Fait le script 'casser des rochers' pour certaines espèces et répartitions de SI.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après calcul de l'espèce cible et de la répartition de SI.
     Le script en ce mode est exécuté au dernier état stable à la fin du dialogue après action sur le rocher.
     variables de paramètre du mode :
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     headbutt
     ... Fait le script donner des coups de tête aux arbres avec certaines espèces et répartitions de SI.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après calcul de l'espèce cible et de la répartition de SI.
     Le script en ce mode est exécuté au dernier état stable à la fin du dialogue après action sur l'arbre.
     variables de paramètre du mode :
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     trade
     ... Fait le script échanger avec des PNJ du jeu des 'mons avec certaines répartitions de SI.
     ... Fonctionne avec RVBJ seulement. Le mode pourrait aussi marcher avec OAC, mais le désassemblage de la ROM de Cristal révèle une macro avec le surnom, les SI, l'objet, l'ID de dresseur original et le nom du dresseur d'origine, puis 2 octets de SI pour chaque 'mon : les SI des 'mons des PNJ sont pré-définis dans OAC.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté au dernier état stable à la fin du dialogue avant la cinématique vers le texte du 'câble link' [putain, Nintendo, traduisez correctement les blazes de vos produits, bordel, on a sorti le dictionnaire de l'Académie française et le Littré avec le trésor de la langue française, merde, c'est pas pour rien, oh, c'est 'câble de liaison', hein, bande de cas soc].
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     battle
     ... Fait le script combattre des 'mons statiques avec certaines répartitions de SI.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté à la fin du dialogue du cri ou au dernier état stable avant le combat.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC,
          flag_lapras ;

     hold
     ... Fait le script rencontrer des 'mons sauvages avec certains objets.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après apparition de l'objet tenu cible.
     Le script en ce mode est exécuté sur une case de rencontre sauvage.
     variables de paramètre du mode :
          item_target,
          list_item_target,
          species_target,
          list_species_target ;

     unown
     ... Fait le script rencontrer des zarbis avec certaines lettres et répartitions de SI.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après calcul de la lettre cible et de la répartition de SI.
     Le script en ce mode est exécuté sur une case de rencontre sauvage dans une zone exclusivement peuplée de zarbis, à savoir le sous-sol des ruines d'Alpha.
     variables de paramètre du mode :
          letter_unown_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     raikouenteisuicune
     ... Fait le script relâcher les roamers avec certaines répartitions de SI.
     ... Fonctionne pour un suicune avec Or et Argent seulement, pour un raikou et un entei avec Cristal uniquement.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté au dernier état stable avant la génération de raikou, d'entei et de suicune.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     suicune
     ... Fait le script combattre un suicune avec certaines répartitions de SI.
     ... Fonctionne avec Cristal seulement.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté au dernier état stable avant le combat avec un suicune.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     glitch
     ... Fait le script exploiter le long-range trainer-fly glitch avec des répartitions des SI cibles.
     ... Fonctionne avec RVBJ seulement.
     ... S'arrête après calcul de la répartition des SI cibles.
     Le script en ce mode est exécuté sur le menu avant le combat.
     variables de paramètre du mode :
          species_target,
          list_species_target,
          list_species_DV_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     yellowmew
     ... Fait le script rencontrer un mew avec une certaine répartition de SI dans Jaune.
     ... Fonctionne avec Jaune seulement.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté sur le menu avant le combat.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     gengar
     ... Fait le script combattre un ectoplasma avec certaines répartitions de SI via le mew glitch dans la forêt de Jade.
     ... Fonctionne avec RVBJ seulement.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté sur le menu avant le combat.
     variables de paramètre du mode :
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     mewtwomoltres
     ... Fait le script combattre un sulfura avec 131 de SPC pour un mewtwo via le long-range trainer glitch.
     ... Fonctionne avec RVBJ seulement.
     ... S'arrête après obtention de la répartition des SI cibles.
     Le script en ce mode est exécuté à la fin du dialogue du cri avant le combat avec un sulfura.
     variables de paramètre du mode :
          species_target,
          DV_target,
          DV_ATKDEF,
          DV_SPDSPC,
          DV_ATK,
          DV_DEF,
          DV_SPD,
          DV_SPC ;

     count
     ... Fait le script afficher un compteur de pas jusqu'à la ponte d'un œuf à la pension.
     ... Fonctionne avec OAC seulement.
     ... Compte le nombre de pas jusqu'à un œuf à la pension.
     Le script en ce mode est exécuté à tout moment après la sélection du deuxième parent avec deux 'mons compatibles à la pension.

     lay
     ... Fait le script vous faire marcher jusqu'à la ponte d'un œuf.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après préparation d'un œuf.
     Le script en ce mode est exécuté après le dialogue de sélection du deuxième parent avec deux 'mons compatibles à la pension à l'état de dialogue de la pension avant vérification de l'œuf.
     variables de paramètre du mode :
          n_step_potentialegg_target,
          max_delay,
          direction_lateral ;

     hatch
     ... Fait le script vous faire marcher jusqu'éclosion d'un œuf.
     ... Fonctionne avec OAC seulement.
     ... S'arrête après éclosion de l'œuf.
     Le script en ce mode est exécuté dans un état de déplacement libre avec l'œuf dans l'équipe après récupération de l'œuf.
     variables de paramètre du mode : direction_lateral ;

     walktogether
     ... Fait le script vous faire marcher jusqu'un certain niveau d'amitié du 'mon.
     ... Fonctionne avec J pour le pikachu de départ uniquement et OAC seulement.
     ... S'arrête après atteinte de la valeur d'amitié cible.
     Le script en ce mode est exécuté dans un état de déplacement libre avec le 'mon cible en premier dans l'équipe.
     variables de paramètre du mode :
          friendship_target,
          direction_lateral ;

A L S O   T H A N K 
          A l s o   t h a n k : 
R E M E R C I E Z   A U S S I 
               R e m e r c i e z   a u s s i : 
D A N K E N   S I E   I H N E N   E B E N F A L L S 
                          D a n k e n   S i e   i h n e n   e b e n f a l l s :
-  zep715 for RBYLua,
-  wwwwwwzx for GSCLua,
-  Collector Togamis,
-  zaksabeast,
-  Real96 and
-  Aligatueur;
for they contributed to my project directly or indirectly, wittingly or
unbeknownst to them.
comme ils ont contribué à mon projet directement ou indirectement,
volontairement ou non.
da sie direkt oder indirekt, wissentlich oder unwissentlich zu meinem Projekt beigetragen haben.

                                              ^J:                       
                             ^   .:^^.      ^?7.                        
                           ^?Y~!!~~7J. ~!:~YY.               ...........
                         ^?57.  ~Y5~!5?~:J~~~~^.  .:^^^~~~~~~~~~~~~~!!
                        7G?:  !~    ..       .  ~J  ::.... ....::^^^.   
                        .   ...^^^^^^^~~~~~~~!7J??!~~~~~~~~~~^^::.      
                          !?!^^^^:::....:::^~~~^                        
                          ~7~^^^^^^~~~~^^^::.                           

___________________________________
^	https://www.ibm.com/docs/en/mam/7.6.1?topic=tasks-automation-scripts
^	https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/vba-rerecording/vba-rerecording-svn480-win32.7z
^	C:\Windows\explorer.exe
^	C:\Windows\notepad.exe
	https://apps.microsoft.com/detail/9msmlrh6lzf3?hl=en-US&gl=FR
^	https://github.com/kvpb/rgbygscprngmanipulationutilities
^	rgbygscprngmanipulationutilities\VisualBoyAdvance-ReRecording\kvpbsg1ng2rngmanipulationbot.lua
^	e.g. C:\Program Files\VBA-ReRecording\
^	VBA-RR v23.6 svn480 -> Tools -> Lua Scripting -> New Lua Script Window...
^	https://www.lua.org/manual/5.1/manual.html
	https://www.lua.org/pil/1.4.html
^	https://www.ibm.com/docs/en/z-netview/6.3.0?topic=variables-parameter
^	VBA-RR v23.6 svn480 -> Options -> Speed -> Synchronize Emulation Speed
	VBA-RR v23.6 svn480 -> Options -> Speed -> Frame Skip -> Skip 9 (Skip 9 Out Of Every 10 Frames)
	VBA-RR v23.6 svn480 -> Options -> Speed -> Set Speed -> Other... -> 1000 -> OK
	VBA-RR v23.6 svn480 -> Options -> Video -> 1x Window Size
	VBA-RR v23.6 svn480 -> Options -> Audio -> Disable
^	https://learn.microsoft.com/en-us/windows/apps/develop/launch/
^	rgbygscprngmanipulationutilities/pokemongoldandsilverandcrystalversionbestindividualstrengthspreads/
^	rgbygscprngmanipulationutilities/calculatergbywildmondv/
^	rgbygscprngmanipulationutilities/long-rangetrainerescapeglitchmonbestdvspreads/
^	https://bulbapedia.bulbagarden.net/wiki/List_of_Japanese_event_Pok%C3%A9mon_distributions_in_Generation_I#Game_Freak_Mew
^	https://bulbapedia.bulbagarden.net/wiki/List_of_European_language_event_Pok%C3%A9mon_distributions_in_Generation_I#Nintendo_UK's_Pok%C3%A9mon_Festival_Mew
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/catchmodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/breedmodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/encountermodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/holdmodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/raikouenteisuicunemodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/suicunemodestartposition.png
^	rgbygscprngmanipulationutilities/VisualBoyAdvance-ReRecording/glitchmodestartposition.png