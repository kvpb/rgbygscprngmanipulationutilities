mode = "catch"
-- modes:
-- 	id,                 get,                catch,              breed,
-- 	encounter,          fish,               smash,              headbutt,           trade,              battle,             hold,
-- 	unown,              raikouenteisuicune, suicune,
-- 	glitch,             yellowmew,          gengar,             mewtwomoltres,
-- 	count,              lay,                hatch,              walktogether,
DV_target = {
	"flawless",
	"flawlessdark",
	"colorflawless",
	"colorflawlessdragon",
}
-- IS spreads 'usuels':
-- 	color,               flawless,            colorflawless,
-- 	flawlessdark,        flawlessdragon,      flawlessice,         flawlesspsychic,
-- 	flawlesselectric,    flawlessgrass,       flawlesswater,       flawlessfire,
-- 	flawlesssteel,       flawlessghost,       flawlessbug,         flawlessrock,
-- 	flawlessground,      flawlesspoison,      flawlessflying,      flawlessfighting,
-- 	colorflawlessgrass,  colorflawlessdragon,
-- 	{}: DV_ATKDEF and DV_SPDSPC or DV_ATK, DV_DEF, DV_SPD, DV_SPC are used;
DV_ATKDEF = nil
DV_SPDSPC = nil
DV_ATK = 15
DV_DEF = 15
DV_SPD = 15
DV_SPC = 15
species_target = -1 -- -1: other species aren't filtered;
list_species_target = {
	 23,  24,  35,  50,  51,  60,  61,  63,  64,  66,  67,  74,  75,  79,  80,  81,  82,  84,  85,  88,  89,  90,  92,  93,  95, 102, 104, 105, 111, 112, 113, 116, 117, 120, 123, 124, 129, 130, 131, 132, 147, 148,
	200, 202, 204, 213, 214, 227, 235, 246, 247, -- These are the numbers of KVPB's (my) favorite species. Set these to your species of interest.
	 83,  80,  54,  96, -- These are the numbers of the 'mons of the best set of utility 'mons: farfetch'd for cut and fly in RGBY and cut, fly and headbutt in GSC, slowbro for surf, strength, teleport or dig and flash in RGBY and surf, strength, headbutt even without TM, rock smash, flash and dig in GSC, psyduck for surf, strength, whirlpool and waterfall in GSC, geodude for strength, headbutt, rock smash and dig in GSC and drowzee for headbutt without TM and flash in GSC.
	243, 244, 245, -- These are the species numbers of raikou, entei, suicune for the raikouenteisuicune mode. Remember you can't encounter suicunes this way in Crystal Version; you gotta battle them in C with this script in suicune mode.
} -- {}: the list isn't filtered;
list_species_DV_target = {
--	{ species = 235, DV_ATKDEF = 0xFF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): hasami guillotine, belly drum and struggle attacker smeargle, flawless smeargle;
--	{ species = 235, DV_ATKDEF = 0x1F, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15,  1, 15, 15, 15 ): baton pass with leftovers                   support smeargle,  min-max smeargle;
} -- { { species = 123, DV_ATKDEF = 0xCC, DV_SPDSPC = 0xFF } }: species-and-IS targets; {}: species_target or list_species_target and DV_target are used independently;
item_target = nil
list_item_target = {
	0x08, -- cleffas' [not in the wild], clefairies' & clefables' [not in the wild] moon stone
	0x24, -- grimers' & muks' nugget
	0x49, -- sneasels' quick claw
	0x4D, -- fearows' & dodrios' sharp beak
	0x51, -- beedrills' poison barb
	0x52, -- poliwhirls', poliwrathes' [not in the wild], politoeds' [not in the wild], slowpokes', slowbros' & slowkings' [not in the wild] king's rock
	--0x54, -- no wild 'mon's mint berry
	0x57, -- parases' and parasects' big mushroom
	0x58, -- butterfrees' silver powder
	0x69, -- farfetch'ds' stick
	0x6D, -- mews' [not in the wild] and celebies' miracle berry
	0x6F, -- shellders' and cloysters' [not in the wild] big pearl
	0x70, -- geodudes', gravelers' and golems' [not in the wild] everstone
	0x71, -- misdreavuses' spell tag
	0x76, -- cubones' and marowaks' thick club
	0x7E, -- chanseys' and blisseys' [not in the wild] lucky egg
	0x84, -- staryus' and starmies' [not in the wild] star piece
	0x8F, -- magnemites', magnetons' [not in the wild] and steelixes' [not in the wild] metal coat
	--0x92, -- snorlaxes' leftovers [useless over their 100% chance]
	0x96, -- cleffas' [not in the wild], clefairies', clefables' [not in the wild] & Mr. Mime's mystery berry
	0x97, -- horseas', seadras', kingdras' [not in the wild], dratinies', dragonairs' and dragonites' [not in the wild] dragon scale
	0x98, -- mewtwos' [not in the wild] berserk gene
	0x9C, -- ho-ohs' sacred ash
	--0xAC, -- no wild 'mon's upgrade
	0xAE, -- furrets' gold berry
} -- {}: no list is set;
letter_unown_target = "A"
TID_target = 0 -- 0: no trainer ID is targeted;
list_TID_target = { 1, 2, 3 } -- Red came 1st, Ethan, 2nd, Kris, 3rd. Some people like 777, others, 69. I naturally got 555555 in Sword once!
n_frame_delay = 1000
max_delay = 3600
n_step_potentialegg_target = 2
friendship_target = 220
direction_lateral = "right"
code_direction = 0 -- 0: right; 1: up; 3: left; 4: down; -- Support hunting in the minefield.
flag_pause_uponhit = true
flag_lapras = false -- for laprases in the depths of the Union Cave only; swim to them, face them, pause there, set this variable to true, and run the script.
game = nil
flag_Yellow = false
version_name = nil
region_name = nil
word_revision = nil
version_byte = nil
region_byte = nil
address_TID = nil
address_party = nil
address_mon_wild = nil
address_egg_DV = nil
address_status_daycare = nil
address_n_step_potentialegg = nil
address_step_count = nil
address_flag_capture = nil
list_DV_target = {}
local info_script = debug.getinfo( 1, "S")
local filename = info_script.source:match("@(.+)$")
words_revision_R_JP = {
	0xC1A2,--
	0xD5DD,--
	0x66B8, -- JP R revision 1, version 1.1, SHA-1: ef74c79cded14204ac79e77f4964d9cb25003120;
}
words_revision_G_JP = {
	0x47F5, -- JP G revision 1, version 1.1, SHA-1: 4b97cd44aa3f0dd290bfe7b3ac17b7bd8270897b;
}
words_revision_B_JP = {
	0x36DC, -- JP B, SHA-1: 0da501e3e5c51ab8fef55b092dcdd7e6b050e424;
}
words_revision_Y_JP = {
	0x299C, -- JP Y, SHA-1: 1fb6c264e950d97ce3fd99b347e485b2150df4ff;
}
words_revision_R_US = {
	0xE691, -- US R revision 0, version 1.0, SHA-1: ea9bcae617fdf159b045185467ae58b2e4a48b9a;
}
words_revision_B_US = {
	0x0A9D, -- US B revision 0, version 1.0, SHA-1: d7037c83e1ae5b39bde3c30787637ba1d4c48ce2;
}
words_revision_Y_US = {
	0x7C04, -- US Y revision 0, version 1.0, SHA-1: cc7d03262ebfaf2f06772c1a480c7d9d5f4a38e1;
}
words_revision_R_EU = {
	0xFC7A, -- FR R revision 0, version 1.0, SHA-1: 47a7622fa30e6402a3891fe65b3a930bf9bd7aec;
	0xDC5C, -- DE R, SHA-1: 87d523fe1a0c548db7c5477b451ddec1eb083c06;
}
words_revision_B_EU = {
	0xA456, -- FR B revision 0, version 1.0, SHA-1: 47faa910d0e073c600665bf9c83b6bd17babdf8a;
	0xBC2E, -- DE B, SHA-1: 20e72dc6f41493eee1fdd0cef54214e6c3389688;
}
words_revision_Y_EU = {
	0xC1B7, -- FR Y revision 0, version 1.0, SHA-1: 0aceec0ef7aa2ca5aa831554598d91f61a925591;
}
bytes_revision_G_JP = {
	0x55, -- JP G, SHA-1: a222402235d484ee8e39f3f31bae57cf13daf585;
}
bytes_revision_G_US = {
	0x55, -- US G revision 0, version 1.0, SHA-1: d8b8a3600a465308c9953dfa04f0081c05bdcb94;
}
bytes_revision_G_EU = {
	0x55, -- FR G revision 0, version 1.0, SHA-1: c147c0d8c2b71b7628a7233436f5c052b5b17081;
}
bytes_revision_G_KR = {
	0x55
}
bytes_revision_S_JP = {
	0x58, -- JP S, SHA-1: fa8c51059c1642faa570db56ef089f54d1d2011f;
}
bytes_revision_S_US = {
	0x58, -- US S revision 0, version 1.0, SHA-1: 49b163f7e57702bc939d642a18f591de55d92dae;
}
bytes_revision_S_EU = {
	0x58, -- FR S revision 0, version 1.0, SHA-1: a4a7e8079b7a53e4d9ef43382bbb1090b9d45d1a;
}
bytes_revision_S_KR = {
	0x58
}
bytes_revision_C_JP = {
	0x54, -- JP C, SHA-1: 95127b901bbce2407daf43cce9f45d4c27ef635d;
}
bytes_revision_C_US = {
	0x54, -- US C revision 1, SHA-1: f2f52230b536214ef7c9924f483392993e226cfb;
}
bytes_revision_C_EU = {
	0x54, -- FR C revision 0, version 1.0, SHA-1: c055992b16b7399c687647725cdd1f4f13a2f75c;
}
presets_DV_usual = {
	color = {
		{ DV_ATKDEF = 0x2A, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0,  2, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0x3A, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8,  3, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0x6A, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0,  6, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0x7A, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8,  7, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0xAA, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 10, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0xBA, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 11, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0xEA, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color;
		{ DV_ATKDEF = 0xFA, DV_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color;
	},
	flawlessdark        = { { DV_ATKDEF = 0xFF, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ):       70-power     dark-type hidden power;
	flawlessdragon      = { { DV_ATKDEF = 0xFE, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 14, 15, 15 ):       70-power   dragon-type hidden power;
	flawlessice         = { { DV_ATKDEF = 0xFD, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 13, 15, 15 ):       70-power      ice-type hidden power;
	flawlesspsychic     = { { DV_ATKDEF = 0xFC, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 12, 15, 15 ):       70-power  psychic-type hidden power;
	flawlesselectric    = { { DV_ATKDEF = 0xEF, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 14, 15, 15, 15 ):       70-power electric-type hidden power;
	flawlessgrass       = { { DV_ATKDEF = 0xEE, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 14, 14, 15, 15 ):       70-power    grass-type hidden power;
	flawlesswater       = { { DV_ATKDEF = 0xED, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 14, 13, 15, 15 ):       70-power    water-type hidden power;
	flawlessfire        = { { DV_ATKDEF = 0xEC, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 14, 12, 15, 15 ):       70-power     fire-type hidden power;
	flawlesssteel       = { { DV_ATKDEF = 0xDF, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 15, 15, 15 ):       70-power    steel-type hidden power;
	flawlessghost       = { { DV_ATKDEF = 0xDE, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 14, 15, 15 ):       70-power    ghost-type hidden power;
	flawlessbug         = { { DV_ATKDEF = 0xDD, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 13, 15, 15 ):       70-power      bug-type hidden power;
	flawlessrock        = { { DV_ATKDEF = 0xDC, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 12, 15, 15 ):       70-power     rock-type hidden power;
	flawlessground      = { { DV_ATKDEF = 0xCF, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 12, 15, 15, 15 ):       70-power   ground-type hidden power;
	flawlesspoison      = { { DV_ATKDEF = 0xCE, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 12, 14, 15, 15 ):       70-power   poison-type hidden power;
	flawlessflying      = { { DV_ATKDEF = 0xCD, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 12, 13, 15, 15 ):       70-power   flying-type hidden power;
	flawlessfighting    = { { DV_ATKDEF = 0xCC, DV_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 12, 12, 15, 15 ):       70-power fighting-type hidden power;
	colorflawlessgrass  = { { DV_ATKDEF = 0xEA, DV_SPDSPC = 0xAA } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color 70-power    grass-type hidden power;
	colorflawlessdragon = { { DV_ATKDEF = 0xFA, DV_SPDSPC = 0xAA } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color 70-power   dragon-type hidden power;
}
presets_DV_usual.altcolor = presets_DV_usual.color
presets_DV_usual.shiny = presets_DV_usual.color
presets_DV_usual.flawless = {
	{ DV_ATKDEF = 0xFF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): 70-power dark-type hidden power;
	{ DV_ATKDEF = 0xFE, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 14, 15, 15 ): 70-power dragon-type hidden power;
	{ DV_ATKDEF = 0xFD, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 13, 15, 15 ): 70-power ice-type hidden power;
	{ DV_ATKDEF = 0xFC, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 12, 15, 15 ): 70-power psychic-type hidden power;
	{ DV_ATKDEF = 0xEF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 14, 15, 15, 15 ): 70-power electric-type hidden power;
	{ DV_ATKDEF = 0xEE, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 14, 14, 15, 15 ): 70-power grass-type hidden power;
	{ DV_ATKDEF = 0xED, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 14, 13, 15, 15 ): 70-power water-type hidden power;
	{ DV_ATKDEF = 0xEC, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 14, 12, 15, 15 ): 70-power fire-type hidden power;
	{ DV_ATKDEF = 0xDF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 15, 15, 15 ): 70-power steel-type hidden power;
	{ DV_ATKDEF = 0xDE, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 14, 15, 15 ): 70-power ghost-type hidden power;
	{ DV_ATKDEF = 0xDD, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 13, 15, 15 ): 70-power bug-type hidden power;
	{ DV_ATKDEF = 0xDC, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 12, 15, 15 ): 70-power rock-type hidden power;
	{ DV_ATKDEF = 0xCF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 12, 15, 15, 15 ): 70-power ground-type hidden power;
	{ DV_ATKDEF = 0xCE, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 12, 14, 15, 15 ): 70-power poison-type hidden power;
	{ DV_ATKDEF = 0xCD, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 12, 13, 15, 15 ): 70-power flying-type hidden power;
	{ DV_ATKDEF = 0xCC, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 12, 12, 15, 15 ): 70-power fighting-type hidden power;
}
presets_DV_usual.colorflawless = {
	{ DV_ATKDEF = 0xEA, DV_SPDSPC = 0xAA }, -- ( HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color 70-power grass-type hidden power;
	{ DV_ATKDEF = 0xFA, DV_SPDSPC = 0xAA }, -- ( HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color 70-power dragon-type hidden power;
}
DV_target_YellowMew = {
	{ DV_ATKDEF = 0xFF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): flawless;
}
DV_target_Gengar = {
	{ DV_ATKDEF = 0xFF, DV_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): flawless;
}
DV_target_MewtwoMoltres = {
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x01 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  0,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x11 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  1,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x21 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  2,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x31 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  3,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x41 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  4,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x51 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  5,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x61 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  6,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x71 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  7,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x81 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  8,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0x91 }, -- DV_ATKDEF = any; ( SPD, SPC ) = (  9,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xA1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 10,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xB1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 11,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xC1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 12,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xD1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 13,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xE1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 14,  1 );
	{ DV_ATKDEF =  nil, DV_SPDSPC = 0xF1 }, -- DV_ATKDEF = any; ( SPD, SPC ) = ( 15,  1 );
}
species_number_dex = {
	[   1 ] = "bulbasaur",  [   2 ] = "ivysaur",    [   3 ] = "venusaur",
	[   4 ] = "charmander", [   5 ] = "charmeleon", [   6 ] = "charizard",
	[   7 ] = "squirtle",   [   8 ] = "wartortle",  [   9 ] = "blastoise",
	[  10 ] = "caterpie",   [  11 ] = "metapod",    [  12 ] = "butterfree",
	[  13 ] = "weedle",     [  14 ] = "kakuna",     [  15 ] = "beedrill",
	[  16 ] = "pidgey",     [  17 ] = "pidgeotto",  [  18 ] = "pidgeot",
	[  19 ] = "rattata",    [  20 ] = "raticate",
	[  21 ] = "spearow",    [  22 ] = "fearow",
	[  23 ] = "ekans",      [  24 ] = "arbok",
	                        [  25 ] = "pikachu",    [  26 ] = "raichu",
	[  27 ] = "sandshrew",  [  28 ] = "sandslash",
	[  29 ] = "nidoran♀",   [  30 ] = "nidorina",   [  31 ] = "nidoqueen",
	[  32 ] = "nidoran♂",   [  33 ] = "nidorino",   [  34 ] = "nidoking",
	                        [  35 ] = "clefairy",   [  36 ] = "clefable",
	[  37 ] = "vulpix",     [  38 ] = "ninetales",
	                        [  39 ] = "jigglypuff", [  40 ] = "wigglytuff",
	[  41 ] = "zubat",      [  42 ] = "golbat",
	[  43 ] = "oddish",     [  44 ] = "gloom",      [  45 ] = "vileplume",
	[  46 ] = "paras",      [  47 ] = "parasect",
	[  48 ] = "venonat",    [  49 ] = "venomoth",
	[  50 ] = "diglett",    [  51 ] = "dugtrio",
	[  52 ] = "meowth",     [  53 ] = "persian",
	[  54 ] = "psyduck",    [  55 ] = "golduck",
	[  56 ] = "mankey",     [  57 ] = "primeape",
	[  58 ] = "growlithe",  [  59 ] = "arcanine",
	[  60 ] = "poliwag",    [  61 ] = "poliwhirl",  [  62 ] = "poliwrath",
	[  63 ] = "abra",       [  64 ] = "kadabra",    [  65 ] = "alakazam",
	[  66 ] = "machop",     [  67 ] = "machoke",    [  68 ] = "machamp",
	[  69 ] = "bellsprout", [  70 ] = "weepinbell", [  71 ] = "victreebel",
	[  72 ] = "tentacool",  [  73 ] = "tentacruel",
	[  74 ] = "geodude",    [  75 ] = "graveler",   [  76 ] = "golem",
	[  77 ] = "ponyta",     [  78 ] = "rapidash",
	[  79 ] = "slowpoke",   [  80 ] = "slowbro",
	[  81 ] = "magnemite",  [  82 ] = "magneton",
	[  83 ] = "farfetch'd",
	[  84 ] = "doduo",      [  85 ] = "dodrio",
	[  86 ] = "seel",       [  87 ] = "dewgong",
	[  88 ] = "grimer",     [  89 ] = "muk",
	[  90 ] = "shellder",   [  91 ] = "cloyster",
	[  92 ] = "gastly",     [  93 ] = "haunter",    [  94 ] = "gengar",
	[  95 ] = "onix",
	[  96 ] = "drowzee",    [  97 ] = "hypno",
	[  98 ] = "krabby",     [  99 ] = "kingler",
	[ 100 ] = "voltorb",    [ 101 ] = "electrode",
	[ 102 ] = "exeggcute",  [ 103 ] = "exeggutor",
	[ 104 ] = "cubone",     [ 105 ] = "marowak",
	                        [ 106 ] = "hitmonlee",
	                        [ 107 ] = "hitmonchan",
	[ 108 ] = "lickitung",
	[ 109 ] = "koffing",    [ 110 ] = "weezing",
	[ 111 ] = "rhyhorn",    [ 112 ] = "rhydon",
	[ 113 ] = "chansey",
	[ 114 ] = "tangela",
	[ 115 ] = "kangaskhan",
	[ 116 ] = "horsea",     [ 117 ] = "seadra",
	[ 118 ] = "goldeen",    [ 119 ] = "seaking",
	[ 120 ] = "staryu",     [ 121 ] = "starmie",
	[ 122 ] = "Mr. Mime",
	[ 123 ] = "scyther",
	                        [ 124 ] = "jynx",
	                        [ 125 ] = "electabuzz",
	                        [ 126 ] = "magmar",
	[ 127 ] = "pinsir",
	[ 128 ] = "tauros",
	[ 129 ] = "magikarp",   [ 130 ] = "gyarados",
	[ 131 ] = "lapras",
	[ 132 ] = "ditto",
	[ 133 ] = "eevee",      [ 134 ] = "vaporeon",
	                        [ 135 ] = "jolteon",
	                        [ 136 ] = "flareon",
	[ 137 ] = "porygon",
	[ 138 ] = "omanyte",    [ 139 ] = "omastar",
	[ 140 ] = "kabuto",     [ 141 ] = "kabutops",
	[ 142 ] = "aerodactyl",
	[ 143 ] = "snorlax",
	[ 144 ] = "articuno",
	[ 145 ] = "zapdos",
	[ 146 ] = "moltres",
	[ 147 ] = "dratini",    [ 148 ] = "dragonair",  [ 149 ] = "dragonite",
	[ 150 ] = "mewtwo",
	[ 151 ] = "mew",
	[ 152 ] = "chikorita",  [ 153 ] = "bayleef",    [ 154 ] = "meganium",
	[ 155 ] = "cyndaquil",  [ 156 ] = "quilava",    [ 157 ] = "typhlosion",
	[ 158 ] = "totodile",   [ 159 ] = "croconaw",   [ 160 ] = "feraligatr",
	[ 161 ] = "sentret",    [ 162 ] = "furret",
	[ 163 ] = "hoothoot",   [ 164 ] = "noctowl",
	[ 165 ] = "ledyba",     [ 166 ] = "ledian",
	[ 167 ] = "spinarak",   [ 168 ] = "ariados",
	                                                [ 169 ] = "crobat",
	[ 170 ] = "chinchou",   [ 171 ] = "lanturn",
	[ 172 ] = "pichu",
	[ 173 ] = "cleffa",
	[ 174 ] = "igglybuff",
	[ 175 ] = "togepi",     [ 176 ] = "togetic",
	[ 177 ] = "natu",       [ 178 ] = "xatu",
	[ 179 ] = "mareep",     [ 180 ] = "flaaffy",    [ 181 ] = "ampharos",
	                                                [ 182 ] = "bellossom",
	[ 183 ] = "marill",     [ 184 ] = "azumarill",
	[ 185 ] = "sudowoodo",
	                                                [ 186 ] = "politoed",
	[ 187 ] = "hoppip",     [ 188 ] = "skiploom",   [ 189 ] = "jumpluff",
	[ 190 ] = "aipom",
	[ 191 ] = "sunkern",    [ 192 ] = "sunflora",
	[ 193 ] = "yanma",
	[ 194 ] = "wooper",     [ 195 ] = "quagsire",
	                        [ 196 ] = "espeon",
	                        [ 197 ] = "umbreon",
	[ 198 ] = "murkrow",
	                                                [ 199 ] = "slowking",
	[ 200 ] = "misdreavus",
	[ 201 ] = "unown",
	[ 202 ] = "wobbuffet",
	[ 203 ] = "girafarig",
	[ 204 ] = "pineco",     [ 205 ] = "forretress",
	[ 206 ] = "dunsparce",
	[ 207 ] = "gligar",
	                        [ 208 ] = "steelix",
	[ 209 ] = "snubbull",   [ 210 ] = "granbull",
	[ 211 ] = "qwilfish",
	                        [ 212 ] = "scizor",
	[ 213 ] = "shuckle",
	[ 214 ] = "heracross",
	[ 215 ] = "sneasel",
	[ 216 ] = "teddiursa",  [ 217 ] = "ursaring",
	[ 218 ] = "slugma",     [ 219 ] = "magcargo",
	[ 220 ] = "swinub",     [ 221 ] = "piloswine",
	[ 222 ] = "corsola",
	[ 223 ] = "remoraid",   [ 224 ] = "octillery",
	[ 225 ] = "delibird",
	[ 226 ] = "mantine",
	[ 227 ] = "skarmory",
	[ 228 ] = "houndour",   [ 229 ] = "houndoom",
	[ 230 ] = "kingdra",
	[ 231 ] = "phanpy",     [ 232 ] = "donphan",
	[ 233 ] = "porygon2",
	[ 234 ] = "stantler",
	[ 235 ] = "smeargle",
	[ 236 ] = "tyrogue",    [ 237 ] = "hitmontop",
	[ 238 ] = "smoochum",
	[ 239 ] = "elekid",
	[ 240 ] = "magby",
	[ 241 ] = "miltank",
	[ 242 ] = "blissey",
	[ 243 ] = "raikou",
	[ 244 ] = "entei",
	[ 245 ] = "suicune",
	[ 246 ] = "larvitar",   [ 247 ] = "pupitar",    [ 248 ] = "tyranitar",
	[ 249 ] = "lugia",
	[ 250 ] = "ho-oh",
	[ 251 ] = "celebi"
}
item_number_index_item = {
	[ 0x00 ] = "nothing？",
	[ 0x01 ] = "master ball",
	[ 0x02 ] = "ultra ball",
	[ 0x03 ] = "bright powder",
	[ 0x04 ] = "great ball",
	[ 0x05 ] = "poké ball",
	[ 0x06 ] = "カビチュウ",
	[ 0x07 ] = "bicycle",
	[ 0x08 ] = "moon stone",
	[ 0x09 ] = "antidote",
	[ 0x0A ] = "Burn Heal", -- Might be a product name in the lore or some shit.
	[ 0x0B ] = "Ice Heal", -- Same.
	[ 0x0C ] = "Awakening", -- Again.
	[ 0x0D ] = "Paralyz Heal", -- And so on and so forth.
	[ 0x0E ] = "Full Restore",
	[ 0x0F ] = "max potion",
	[ 0x10 ] = "hyper potion",
	[ 0x11 ] = "super potion",
	[ 0x12 ] = "potion",
	[ 0x13 ] = "escape rope",
	[ 0x14 ] = "repel",
	[ 0x15 ] = "max elixer",
	[ 0x16 ] = "fire stone",
	[ 0x17 ] = "thunderstone",
	[ 0x18 ] = "water stone",
	[ 0x19 ] = "カビチュウ",
	[ 0x1A ] = "HP Up",
	[ 0x1B ] = "protein",
	[ 0x1C ] = "iron",
	[ 0x1D ] = "Carbos",
	[ 0x1E ] = "lucky punch",
	[ 0x1F ] = "calcium",
	[ 0x20 ] = "rare candy",
	[ 0x21 ] = "X Accuracy",
	[ 0x22 ] = "leaf stone",
	[ 0x23 ] = "metal powder",
	[ 0x24 ] = "nugget",
	[ 0x25 ] = "poké doll",
	[ 0x26 ] = "Full Heal",
	[ 0x27 ] = "Revive",
	[ 0x28 ] = "Max Revive",
	[ 0x29 ] = "Guard Spec.",
	[ 0x2A ] = "Super Repel",
	[ 0x2B ] = "Max Repel",
	[ 0x2C ] = "Dire Hit",
	[ 0x2D ] = "カビチュウ",
	[ 0x2E ] = "fresh water",
	[ 0x2F ] = "soda pop",
	[ 0x30 ] = "lemonade",
	[ 0x31 ] = "X Attack",
	[ 0x32 ] = "カビチュウ",
	[ 0x33 ] = "X Defend",
	[ 0x34 ] = "X Speed",
	[ 0x35 ] = "X Special",
	[ 0x36 ] = "coin case",
	[ 0x37 ] = "item finder",
	[ 0x38 ] = "カビチュウ",
	[ 0x39 ] = "exp. share",
	[ 0x3A ] = "old rod",
	[ 0x3B ] = "good rod",
	[ 0x3C ] = "silver leaf",
	[ 0x3D ] = "super rod",
	[ 0x3E ] = "PP Up",
	[ 0x3F ] = "ether",
	[ 0x40 ] = "max ether",
	[ 0x41 ] = "elixer",
	[ 0x42 ] = "red scale",
	[ 0x43 ] = "secret potion",
	[ 0x44 ] = "S.S. ticket",
	[ 0x45 ] = "mystery egg",
	[ 0x46 ] = "clear bell",
	[ 0x47 ] = "silver wing",
	[ 0x48 ] = "Moomoo Milk",
	[ 0x49 ] = "quick claw",
	[ 0x4A ] = "PSN cure berry",
	[ 0x4B ] = "gold leaf",
	[ 0x4C ] = "soft sand",
	[ 0x4D ] = "sharp beak",
	[ 0x4E ] = "PRZ cure berry",
	[ 0x4F ] = "burnt berry",
	[ 0x50 ] = "ice berry",
	[ 0x51 ] = "poison barb",
	[ 0x52 ] = "king's rock",
	[ 0x53 ] = "bitter berry",
	[ 0x54 ] = "mint berry",
	[ 0x55 ] = "red apricorn",
	[ 0x56 ] = "tiny mushroom",
	[ 0x57 ] = "big mushroom",
	[ 0x58 ] = "silver powder",
	[ 0x59 ] = "blue apricorn",
	[ 0x5A ] = "カビチュウ",
	[ 0x5B ] = "amulet coin",
	[ 0x5C ] = "yellow apricorn",
	[ 0x5D ] = "green apricorn",
	[ 0x5E ] = "cleanse tag",
	[ 0x5F ] = "mystic water",
	[ 0x60 ] = "twisted spoon",
	[ 0x61 ] = "white apricorn",
	[ 0x62 ] = "black belt",
	[ 0x63 ] = "black apricorn",
	[ 0x64 ] = "カビチュウ",
	[ 0x65 ] = "pink apricorn",
	[ 0x66 ] = "black glasses",
	[ 0x67 ] = "slowpoke tail",
	[ 0x68 ] = "pink bow",
	[ 0x69 ] = "stick",
	[ 0x6A ] = "smoke ball",
	[ 0x6B ] = "never-melt ice",
	[ 0x6C ] = "magnet",
	[ 0x6D ] = "miracle berry",
	[ 0x6E ] = "pearl",
	[ 0x6F ] = "big pearl",
	[ 0x70 ] = "everstone",
	[ 0x71 ] = "spell tag",
	[ 0x72 ] = "Rage Candy Bar",
	[ 0x73 ] = "GS ball",
	[ 0x74 ] = "blue card",
	[ 0x75 ] = "miracle seed",
	[ 0x76 ] = "thick club",
	[ 0x77 ] = "focus band",
	[ 0x78 ] = "カビチュウ",
	[ 0x79 ] = "energy powder",
	[ 0x7A ] = "energy root",
	[ 0x7B ] = "Heal Powder",
	[ 0x7C ] = "revival herb",
	[ 0x7D ] = "hard stone",
	[ 0x7E ] = "lucky egg",
	[ 0x7F ] = "card key",
	[ 0x80 ] = "machine part",
	[ 0x81 ] = "egg ticket",
	[ 0x82 ] = "lost item",
	[ 0x83 ] = "star dust",
	[ 0x84 ] = "star piece",
	[ 0x85 ] = "basement key",
	[ 0x86 ] = "pass",
	[ 0x87 ] = "カビチュウ",
	[ 0x88 ] = "カビチュウ",
	[ 0x89 ] = "カビチュウ",
	[ 0x8A ] = "charcoal",
	[ 0x8B ] = "berry juice",
	[ 0x8C ] = "scope lens",
	[ 0x8D ] = "カビチュウ",
	[ 0x8E ] = "カビチュウ",
	[ 0x8F ] = "metal coat",
	[ 0x90 ] = "dragon fang",
	[ 0x91 ] = "カビチュウ",
	[ 0x92 ] = "leftovers",
	[ 0x93 ] = "カビチュウ",
	[ 0x94 ] = "カビチュウ",
	[ 0x95 ] = "カビチュウ",
	[ 0x96 ] = "mystery berry",
	[ 0x97 ] = "dragon scale",
	[ 0x98 ] = "berserk gene",
	[ 0x99 ] = "カビチュウ",
	[ 0x9A ] = "カビチュウ",
	[ 0x9B ] = "カビチュウ",
	[ 0x9C ] = "sacred ash",
	[ 0x9D ] = "heavy ball",
	[ 0x9E ] = "flower mail",
	[ 0x9F ] = "level ball",
	[ 0xA0 ] = "lure ball",
	[ 0xA1 ] = "fast ball",
	[ 0xA2 ] = "カビチュウ",
	[ 0xA3 ] = "light ball",
	[ 0xA4 ] = "friend ball",
	[ 0xA5 ] = "moon ball",
	[ 0xA6 ] = "love ball",
	[ 0xA7 ] = "normal box",
	[ 0xA8 ] = "gorgeous box",
	[ 0xA9 ] = "sun stone",
	[ 0xAA ] = "polkadot bow",
	[ 0xAB ] = "カビチュウ",
	[ 0xAC ] = "upgrade",
	[ 0xAD ] = "berry",
	[ 0xAE ] = "gold berry",
	[ 0xAF ] = "squirt bottle",
	[ 0xB0 ] = "カビチュウ",
	[ 0xB1 ] = "park ball",
	[ 0xB2 ] = "rainbow wing",
	[ 0xB3 ] = "カビチュウ",
	[ 0xB4 ] = "brick piece",
	[ 0xB5 ] = "surf mail",
	[ 0xB6 ] = "lite blue mail",
	[ 0xB7 ] = "portrait mail",
	[ 0xB8 ] = "lovely mail",
	[ 0xB9 ] = "eon mail",
	[ 0xBA ] = "morph mail",
	[ 0xBB ] = "blue sky mail",
	[ 0xBC ] = "music mail",
	[ 0xBD ] = "mirage mail",
	[ 0xBE ] = "カビチュウ",
	[ 0xBF ] = "TM01",
	[ 0xC0 ] = "TM02",
	[ 0xC1 ] = "TM03",
	[ 0xC2 ] = "TM04",
	[ 0xC3 ] = "TM04", -- What the fuck? This isn't even a TM by the way.
	[ 0xC4 ] = "TM05",
	[ 0xC5 ] = "TM06",
	[ 0xC6 ] = "TM07",
	[ 0xC7 ] = "TM08",
	[ 0xC8 ] = "TM09",
	[ 0xC9 ] = "TM10",
	[ 0xCA ] = "TM11",
	[ 0xCB ] = "TM12",
	[ 0xCC ] = "TM13",
	[ 0xCD ] = "TM14",
	[ 0xCE ] = "TM15",
	[ 0xCF ] = "TM16",
	[ 0xD0 ] = "TM17",
	[ 0xD1 ] = "TM18",
	[ 0xD2 ] = "TM19",
	[ 0xD3 ] = "TM20",
	[ 0xD4 ] = "TM21",
	[ 0xD5 ] = "TM22",
	[ 0xD6 ] = "TM23",
	[ 0xD7 ] = "TM24",
	[ 0xD8 ] = "TM25",
	[ 0xD9 ] = "TM26",
	[ 0xDA ] = "TM27",
	[ 0xDB ] = "TM28",
	[ 0xDC ] = "TM28", -- Again!?...
	[ 0xDD ] = "TM29",
	[ 0xDE ] = "TM30",
	[ 0xDF ] = "TM31",
	[ 0xE0 ] = "TM32",
	[ 0xE1 ] = "TM33",
	[ 0xE2 ] = "TM34",
	[ 0xE3 ] = "TM35",
	[ 0xE4 ] = "TM36",
	[ 0xE5 ] = "TM37",
	[ 0xE6 ] = "TM38",
	[ 0xE7 ] = "TM39",
	[ 0xE8 ] = "TM40",
	[ 0xE9 ] = "TM41",
	[ 0xEA ] = "TM42",
	[ 0xEB ] = "TM43",
	[ 0xEC ] = "TM44",
	[ 0xED ] = "TM45",
	[ 0xEE ] = "TM46",
	[ 0xEF ] = "TM47",
	[ 0xF0 ] = "TM48",
	[ 0xF1 ] = "TM49",
	[ 0xF2 ] = "TM50",
	[ 0xF3 ] = "HM01",
	[ 0xF4 ] = "HM02",
	[ 0xF5 ] = "HM03",
	[ 0xF6 ] = "HM04",
	[ 0xF7 ] = "HM05",
	[ 0xF8 ] = "HM06",
	[ 0xF9 ] = "HM07", -- None of the HMs after this one is an actual HM. I guess they were going to make other utility moves HMs. HMs are just TMs with a child safety lock: they're meant to prevent players from soft-locking themselves in the game, for example getting stranded in Cianwood City [it can be achieved anyway].
	[ 0xFA ] = "HM08",
	[ 0xFB ] = "HM09",
	[ 0xFC ] = "HM10",
	[ 0xFD ] = "HM11",
	[ 0xFE ] = "HM12",
	[ 0xFF ] = "cancel" -- This is the menu entry.
}
print(string.format("Running %s.", filename)) --"rgbylong-rangetrainerflyglitch.lua")

function belongsto_table( list, x )
	for n_i = 1, table.getn( list ) do
		if list[ n_i ] == x then
			return true
		end
	end
	return false
end

function is_empty( list )
	if table.getn( list ) == 0 then
		return true
	end
	return false
end

function shift_left( n, n_bits )
	return n * math.pow( 2, n_bits )
end

function shift_right( n, n_bits )
	return math.floor( n / math.pow( 2, n_bits ) )
end

function bitwiseand( n_1, n_2 )
	local n_result = 0
	local n_place = 1

	while n_1 > 0 or n_2 > 0 do
		if n_1 % 2 == 1 and n_2 % 2 == 1 then
			n_result = n_result + n_place
		end
		n_1 = math.floor( n_1 / 2 )
		n_2 = math.floor( n_2 / 2 )
		n_place = n_place * 2
	end
	return n_result
end

function reverse_word( word )
	return ( word % 0x100 ) * 0x100 + math.floor( word / 0x100 )
end

function press( buttons, n_frames )
	for n_frame = 1, n_frames do
		joypad.set( 1, buttons )
		emu.frameadvance()
	end
end

function advance( n_frames )
	for n_frame = 1, n_frames do
		emu.frameadvance()
	end
end

function pause()
	if flag_pause_uponhit and vba ~= nil and vba.pause ~= nil then
		vba.pause()
	end
end

function stop(message)
	print(message)
	print("Stopped the script.")
	pause()
	error(message)
end

function read_DV( address_DV )
	return memory.readbyte( address_DV ), memory.readbyte( address_DV + 1 )
end

function print_DV( DV_ATKDEF, DV_SPDSPC )
	local n_ATK
	local n_DEF
	local n_SPD
	local n_SPC
	local n_HP

	if DV_ATKDEF == nil or DV_SPDSPC == nil then
		print(string.format("DV: %s %s;",
			DV_ATKDEF ~= nil and string.format( "0x%02X", DV_ATKDEF ) or "any",
			DV_SPDSPC ~= nil and string.format( "0x%02X", DV_SPDSPC ) or "any" ))
		return
	end
	n_ATK = shift_right(
		bitwiseand( DV_ATKDEF, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
	n_DEF = bitwiseand( DV_ATKDEF, shift_left( 1, 4 ) - 1 )
	n_SPD = shift_right(
		bitwiseand( DV_SPDSPC, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
	n_SPC = bitwiseand( DV_SPDSPC, shift_left( 1, 4 ) - 1 )
	n_HP = shift_left( bitwiseand( n_ATK, 0x01 ), 3 )
		 + shift_left( bitwiseand( n_DEF, 0x01 ), 2 )
		 + shift_left( bitwiseand( n_SPD, 0x01 ), 1 )
		 + bitwiseand( n_SPC, 0x01 )
	print(string.format("( HP, ATK, DEF, SPD, SPC ) = ( %d, %d, %d, %d, %d )", n_HP, n_ATK, n_DEF, n_SPD, n_SPC ))
	print(string.format("DV: 0x%02X 0x%02X;", DV_ATKDEF, DV_SPDSPC ))
end

function print_target_DV_list()
	local n_spread
	local n_spreads
	local spread_IS
	local string_line
	local string_HP
	local n_ATK
	local n_DEF
	local n_SPD
	local n_SPC

	n_spreads = table.getn( list_DV_target )
	print(string.format("%d target IS spreads:", n_spreads ))
	print(string.format("\t( ATKDEF, SPDSPC ) = (  HP, ATK, DEF, SPD, SPC )"))
	print(string.format("\t    n_16      n_16          n_10 n_10 n_10 n_10 n_10")) --print(string.format("\t( n_16, n_16 ) = ( n_10, n_10, n_10, n_10, n_10 )"))
	--print(string.format("00000\t( n_ATKDEF_16, n_SPDSPC_16 ) = (  n_HP, n_ATK, n_DEF, n_SPD, n_SPC )")) --print(string.format("00000\t( n_ATKDEF_16, n_SPDSPC_16 ) = (  n_HP_10, n_ATK_10, n_DEF_10, n_SPD_10, n_SPC_10 )")) --print(string.format("00000\t( n_16, n_16 ) = (  HP, ATK, DEF, SPD, SPC )"))
	for n_spread = 1, n_spreads do
		spread_IS = list_DV_target[ n_spread ]
		if spread_IS.DV_ATKDEF ~= nil then
			n_ATK = shift_right( bitwiseand( spread_IS.DV_ATKDEF, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
			n_DEF = bitwiseand( spread_IS.DV_ATKDEF, shift_left( 1, 4 ) - 1 )
		else
			n_ATK = nil
			n_DEF = nil
		end
		if spread_IS.DV_SPDSPC ~= nil then
			n_SPD = shift_right( bitwiseand( spread_IS.DV_SPDSPC, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
			n_SPC = bitwiseand( spread_IS.DV_SPDSPC, shift_left( 1, 4 ) - 1 )
		else
			n_SPD = nil
			n_SPC = nil
		end
		if n_ATK ~= nil and n_DEF ~= nil and n_SPD ~= nil and n_SPC ~= nil then
			string_HP = string.format("%02d", shift_left( bitwiseand( n_ATK, 0x01 ), 3 )
				 + shift_left( bitwiseand( n_DEF, 0x01 ), 2 )
				 + shift_left( bitwiseand( n_SPD, 0x01 ), 1 )
				 + bitwiseand( n_SPC, 0x01 )
			)
		else
			string_HP = "any"
		end
		string_line = string.format("%05d\t( %s, %s ) = ( %s, %s, %s, %s, %s )",
			n_spread,
			spread_IS.DV_ATKDEF ~= nil and string.format("0x%02X", spread_IS.DV_ATKDEF ) or "any",
			spread_IS.DV_SPDSPC ~= nil and string.format("0x%02X", spread_IS.DV_SPDSPC ) or "any",
			string_HP,
			n_ATK ~= nil and string.format("%02d", n_ATK ) or "any",
			n_DEF ~= nil and string.format("%02d", n_DEF ) or "any",
			n_SPD ~= nil and string.format("%02d", n_SPD ) or "any",
			n_SPC ~= nil and string.format("%02d", n_SPC ) or "any"
		)
		if n_spread < n_spreads then
			print(string_line .. ",")
		else
			print(string_line .. ";")
		end
	end
end

function accept_DV( DV_ATKDEF, DV_SPDSPC )
	local spread_target

	for n_spread = 1, table.getn( list_DV_target ) do
		spread_target = list_DV_target[ n_spread ]
		if ( spread_target.DV_ATKDEF == nil or DV_ATKDEF == spread_target.DV_ATKDEF )
		and ( spread_target.DV_SPDSPC == nil or DV_SPDSPC == spread_target.DV_SPDSPC ) then
			return true
		end
	end
	return false
end

function add_DV( list_DV, list_DV_additional )
	for n_DV = 1, table.getn( list_DV_additional ) do
		list_DV[ table.getn( list_DV ) + 1 ] = {
			DV_ATKDEF = list_DV_additional[ n_DV ].DV_ATKDEF,
			DV_SPDSPC = list_DV_additional[ n_DV ].DV_SPDSPC,
		}
	end
end

function get_unown_letter( DV_ATKDEF, DV_SPDSPC )
	local n_ATK_bits
	local n_DEF_bits
	local n_SPD_bits
	local n_SPC_bits
	local n_form
	local letters

	letters = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" }
	n_ATK_bits = shift_right( bitwiseand( DV_ATKDEF, 0x60 ), 5 )
	n_DEF_bits = shift_right( bitwiseand( DV_ATKDEF, 0x06 ), 1 )
	n_SPD_bits = shift_right( bitwiseand( DV_SPDSPC, 0x60 ), 5 )
	n_SPC_bits = shift_right( bitwiseand( DV_SPDSPC, 0x06 ), 1 )
	n_form = math.floor( ( n_ATK_bits * 0x40 + n_DEF_bits * 0x10 + n_SPD_bits * 0x04 + n_SPC_bits ) / 10 ) + 1
	return letters[ n_form ]
end

function set_target_DV_from_values()
	local spread

	list_DV_target = {}
	if DV_ATKDEF ~= nil and DV_SPDSPC ~= nil then
		spread = {
			DV_ATKDEF = DV_ATKDEF,
			DV_SPDSPC = DV_SPDSPC,
		}
		list_DV_target[ table.getn( list_DV_target ) + 1 ] = spread
	else
		spread = {
			DV_ATKDEF = shift_left( DV_ATK, 4 ) + DV_DEF,
			DV_SPDSPC = shift_left( DV_SPD, 4 ) + DV_SPC,
		}
		list_DV_target[ table.getn( list_DV_target ) + 1 ] = spread
	end
	return true
end

function set_target_DV_from_preset()
	local preset

	list_DV_target = {}
	for n_preset = 1, table.getn( DV_target ) do
		preset = DV_target[ n_preset ]
		if presets_DV_usual[ preset ] ~= nil then
			add_DV( list_DV_target, presets_DV_usual[ preset ] )
		else
			stop("Don't know that target preset.\ntarget preset: " .. tostring( preset ) .. ";")
		end
	end
	if is_empty( list_DV_target ) then
		return false
	end
	return true
end

function set_target_DV_list()
	if not is_empty( DV_target ) then
		if set_target_DV_from_preset() then
			return
		end
	else
		if set_target_DV_from_values() then
			return
		end
	end
	stop("No IS target has been set.")
end

function build_target_DV_list( list_DV_target_special )
	if are_species_target_DV_set() then
		set_target_species_DV_list()
	else
		set_target_DV_list()
	end
	if list_DV_target_special ~= nil and not is_empty( list_DV_target_special ) then
		list_DV_target = {}
		add_DV( list_DV_target, list_DV_target_special )
	end
	print_target_DV_list() --print(string.format("target IS spreads: %d;", table.getn( list_DV_target ) ))
end

function detect_game()
	local name_region_candidate

	version_byte = memory.readbyte( 0x141 )
	region_byte = memory.readbyte( 0x142 )
	word_revision = memory.readword( 0x14E )
	if region_byte == 0x44 or region_byte == 0x46 or region_byte == 0x49 or region_byte == 0x53 then
		name_region_candidate = "EU"
	elseif region_byte == 0x45 then
		name_region_candidate = "US"
	elseif region_byte == 0x4A then
		name_region_candidate = "JP"
	elseif region_byte == 0x4B then
		name_region_candidate = "KR"
	else
		name_region_candidate = nil
	end
	if version_byte == 0x54 then
		game = "GSC"
		version_name = "Crystal"
		region_name = name_region_candidate
		address_flag_capture = 0xC10A
		if region_name == "JP" then
			address_TID = 0xD48C
			address_party = 0xDC9D
			address_mon_wild = 0xD23D
			address_egg_DV = 0xDF06
			address_status_daycare = 0xDE89
			address_n_step_potentialegg = 0xDEB7
			address_step_count = 0xDC39
			return
		elseif region_name == "US" or region_name == "EU" then
			address_TID = 0xD47B
			address_party = 0xDCD7
			address_mon_wild = 0xD20C
			address_egg_DV = 0xDF90
			address_status_daycare = 0xDEF5
			address_n_step_potentialegg = 0xDF2D
			address_step_count = 0xDCA5
			return
		end
	elseif version_byte == 0x55 or version_byte == 0x58 then
		game = "GSC"
		if version_byte == 0x55 then
			version_name = "Gold"
		else
			version_name = "Silver"
		end
		region_name = name_region_candidate
		address_flag_capture = 0xC00A
		if region_name == "JP" then
			address_TID = 0xD1B3
			address_party = 0xD9E8
			address_mon_wild = 0xD0E7
			address_egg_DV = 0xDC51
			address_status_daycare = 0xDBD4
			address_n_step_potentialegg = 0xDC02
			address_step_count = 0xD984
			return
		elseif region_name == "KR" then
			address_TID = 0xD25C
			address_party = 0xDB1F
			address_mon_wild = 0xD1B2
			address_egg_DV = 0xDDD8
			address_status_daycare = 0xDD3D
			address_n_step_potentialegg = 0xDD75
			address_step_count = 0xDAED
			return
		elseif region_name == "US" or region_name == "EU" then
			address_TID = 0xD1A1
			address_party = 0xDA22
			address_mon_wild = 0xD0F5
			address_egg_DV = 0xDCDB
			address_status_daycare = 0xDC40
			address_n_step_potentialegg = 0xDC78
			address_step_count = 0xD9F0
			return
		end
	end
	game = "RGBY"
	if belongsto_table( words_revision_R_JP, word_revision ) then
		version_name = "Red"
		region_name = "JP"
		address_TID = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_G_JP, word_revision ) then
		version_name = "Green"
		region_name = "JP"
		address_TID = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_JP, word_revision ) then
		version_name = "Blue"
		region_name = "JP"
		address_TID = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_JP, word_revision ) then
		version_name = "Yellow"
		region_name = "JP"
		address_TID = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		address_step_count = address_party - 0x23
		flag_Yellow = true
		return
	elseif belongsto_table( words_revision_R_US, word_revision ) then
		version_name = "Red"
		region_name = "US"
		address_TID = 0xD359
		address_party = 0xD163
		address_mon_wild = 0xCFF1
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_US, word_revision ) then
		version_name = "Blue"
		region_name = "US"
		address_TID = 0xD359
		address_party = 0xD163
		address_mon_wild = 0xCFF1
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_US, word_revision ) then
		version_name = "Yellow"
		region_name = "US"
		address_TID = 0xD358
		address_party = 0xD162
		address_mon_wild = 0xCFF0
		address_flag_capture = address_party - 0x47
		address_step_count = address_party - 0x28
		flag_Yellow = true
		return
	elseif belongsto_table( words_revision_R_EU, word_revision ) then
		version_name = "Red"
		region_name = "EU"
		address_TID = 0xD35E
		address_party = 0xD168
		address_mon_wild = 0xCFF6
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_EU, word_revision ) then
		version_name = "Blue"
		region_name = "EU"
		address_TID = 0xD35E
		address_party = 0xD168
		address_mon_wild = 0xCFF6
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_EU, word_revision ) then
		version_name = "Yellow"
		region_name = "EU"
		address_TID = 0xD35D
		address_party = 0xD167
		address_mon_wild = 0xCFF5
		address_flag_capture = address_party - 0x47
		address_step_count = address_party - 0x28
		flag_Yellow = true
		return
	end
	game = nil
	address_flag_capture = nil
	stop( string.format("Couldn't identify the game, RGBY revision word %04X, GSC version byte %02X.", word_revision, version_byte ) )
end

function accept_species( species )
	if species_target ~= -1 and species_target ~= species then
		return false
	end
	if not is_empty( list_species_target ) and not belongsto_table( list_species_target, species ) then
		return false
	end
	return true
end

function are_species_target_DV_set()
	if list_species_DV_target ~= nil and table.getn( list_species_DV_target ) > 0 then
		return true
	end
	return false
end

function set_target_species_DV_list()
	list_DV_target = {}
	add_DV( list_DV_target, list_species_DV_target )
	if is_empty( list_DV_target ) then
		stop("No IS target has been set.")
	end
end

function accept_DV_from_target( target, DV_ATKDEF, DV_SPDSPC )
	if target.DV_ATKDEF ~= nil and target.DV_ATKDEF ~= DV_ATKDEF then
		return false
	end
	if target.DV_SPDSPC ~= nil and target.DV_SPDSPC ~= DV_SPDSPC then
		return false
	end
	return true
end

function accept_target_DV( DV_ATKDEF, DV_SPDSPC )
	local target

	if not are_species_target_DV_set() then
		return accept_DV( DV_ATKDEF, DV_SPDSPC )
	end
	for n_target = 1, table.getn( list_species_DV_target ) do
		target = list_species_DV_target[ n_target ]
		if accept_DV_from_target( target, DV_ATKDEF, DV_SPDSPC ) then
			return true
		end
	end
	return false
end

function accept_target_species( species )
	local target

	if not are_species_target_DV_set() then
		return accept_species( species )
	end
	for n_target = 1, table.getn( list_species_DV_target ) do
		target = list_species_DV_target[ n_target ]
		if target.species == nil or target.species == -1 or target.species == species then
			return true
		end
	end
	return false
end

function accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC )
	local target

	if not are_species_target_DV_set() then
		if accept_species( species ) and accept_DV( DV_ATKDEF, DV_SPDSPC ) then
			return true
		end
		return false
	end
	for n_target = 1, table.getn( list_species_DV_target ) do
		target = list_species_DV_target[ n_target ]
		if ( target.species == nil or target.species == -1 or target.species == species )
		and accept_DV_from_target( target, DV_ATKDEF, DV_SPDSPC ) then
			return true
		end
	end
	return false
end

function accept_TID( TID )
	if TID_target ~= 0 and TID_target == TID then
		return true
	end
	if not is_empty( list_TID_target ) and belongsto_table( list_TID_target, TID ) then
		return true
	end
	if game == "RGBY" and TID_target == 0 and is_empty( list_TID_target ) then
		return true
	end
	return false
end

function accept_item( item )
	if item_target == nil and is_empty( list_item_target ) then
		return true
	end
	if item_target ~= nil and item_target == item then
		return true
	end
	if not is_empty( list_item_target ) and belongsto_table( list_item_target, item ) then
		return true
	end
	return false
end

function detect_egg()
	local status_daycare

	status_daycare = memory.readbyte( address_status_daycare )
	return math.floor( status_daycare / 0x40 ) - 2 * math.floor( status_daycare / 0x80 ) == 1 -- The bit 0x40 (bit 6)'s set: an egg's been readied.
end

function turn_back( direction_name ) --reverse_direction
	if direction_name == "right" then
		return "left"
	end
	return "right"
end

function set_direction( direction_name )
	if direction_name == "right" then
		joypad.set( 1, { right = true } )
	elseif direction_name == "left" then
		joypad.set( 1, { left = true } )
	else
		stop("Don't know that direction.")
	end
end

function wait_frames( n_frames )
	local n_frame

	joypad.set( 1, {} )
	for n_frame = 1, n_frames do
		emu.frameadvance()
	end
end

function attempt_stepping( direction_name )
	local n_frame
	local n_wait
	local step_count_before
	local step_count_after

	step_count_before = memory.readbyte( address_step_count )
	for n_frame = 1, 60 do
		set_direction( direction_name )
		emu.frameadvance()
		step_count_after = memory.readbyte( address_step_count )
		if step_count_after ~= step_count_before then
			joypad.set( 1, {} )
			for n_wait = 1, 24 do
				emu.frameadvance()
			end
			return true
		end
	end
	joypad.set( 1, {} )
	for n_wait = 1, 12 do
		emu.frameadvance()
	end
	return false
end

function walk_laterally_safely()
	if attempt_stepping( direction_lateral ) then
		direction_lateral = turn_back( direction_lateral )
		return true
	end
	direction_lateral = turn_back( direction_lateral )
	if attempt_stepping( direction_lateral ) then
		direction_lateral = turn_back( direction_lateral )
		return true
	end
	return false
end

function press_A()
	local n_frame
	local n_wait

	for n_frame = 1, 6 do
		joypad.set( 1, { A = true } )
		emu.frameadvance()
	end
	joypad.set( 1, {} )
	for n_wait = 1, 6 do
		emu.frameadvance()
	end
end

function get_egg_party_slot()
	local count_party
	local n_i
	local egg_party_slot

	count_party = memory.readbyte( address_party )
	egg_party_slot = nil
	for n_i = 1, count_party do
		if memory.readbyte( address_party + n_i ) == 0xFD then
			egg_party_slot = n_i
		end
	end
	return egg_party_slot
end

function count()
	n_step_potentialegg_last = -1
	status_daycare_last = -1

	while true do
		n_step_potentialegg = memory.readbyte( address_n_step_potentialegg )
		status_daycare = memory.readbyte( address_status_daycare )
		if n_step_potentialegg ~= n_step_potentialegg_last or status_daycare ~= status_daycare_last then
			print(string.format("steps to egg: %3d; daycare man: 0x%02X;", n_step_potentialegg, status_daycare ))
			if detect_egg() then
				print("Readied an egg.")
			elseif n_step_potentialegg == 0 then
				print("steps to potential egg: 256;")
			else
				print("steps to potential egg: " .. n_step_potentialegg .. ";")
			end
			n_step_potentialegg_last = n_step_potentialegg
			status_daycare_last = status_daycare
		end
		emu.frameadvance()
	end
end

function detect_eggverification_window()
	n_step_potentialegg = memory.readbyte( address_n_step_potentialegg )

	if n_step_potentialegg == 0 then
		return false
	end
	if n_step_potentialegg > n_step_potentialegg_target then
		return false
	end
	return true
end

function lay() --get_anegg_laid()
	local flag_success

	n_step_potentialegg_last = -1
	status_daycare_last = -1

	print("Walking, until we can check the egg.")
	while not detect_egg() and not detect_eggverification_window() do
		if not walk_laterally_safely() then
			stop("Didn't detect any lateral movement.")
		end
		n_step_potentialegg = memory.readbyte( address_n_step_potentialegg )
		status_daycare = memory.readbyte( address_status_daycare )
		if n_step_potentialegg ~= n_step_potentialegg_last or status_daycare ~= status_daycare_last then
			print(string.format("steps to egg: %3d; daycare man: 0x%02X;", n_step_potentialegg, status_daycare ))
			if n_step_potentialegg == 0 then
				print("steps to potential egg: 256;")
			else
				print("steps to potential egg: " .. n_step_potentialegg .. ";")
			end
			n_step_potentialegg_last = n_step_potentialegg
			status_daycare_last = status_daycare
		end
	end
	if detect_egg() then
		print("Readied an egg.")
		print(string.format("daycare man: 0x%02X;", memory.readbyte( address_status_daycare ) ))
	else
		if not detect_eggverification_window() then
			stop("Not in the egg verification window.")
		end
		n_step_potentialegg = memory.readbyte( address_n_step_potentialegg )
		direction_lateral_eggverification = direction_lateral
		state_eggverification = savestate.create()
		savestate.save( state_eggverification )
		print("Saved the state, before we check the egg.")
		print(string.format("steps to egg: %d;", n_step_potentialegg ))
		delay = 0
		flag_success = false
		while delay < max_delay + 1 and not flag_success do
			savestate.load( state_eggverification )
			emu.frameadvance()
			direction_lateral = direction_lateral_eggverification
			wait_frames( delay )
			print("Attempting to check the egg.")
			print(string.format("delay: %4d;", delay ))
			if not walk_laterally_safely() then
				stop("Didn't detect any lateral movement from the egg verification state.")
			end
			n_step_potentialegg = memory.readbyte( address_n_step_potentialegg )
			status_daycare = memory.readbyte( address_status_daycare )
			if detect_egg() then
				flag_success = true
				print("Readied an egg.")
				print(string.format("delay: %4d; steps to egg: %3d; daycare man: 0x%02X;", delay, n_step_potentialegg, status_daycare ))
			else
				print("Didn't ready an egg; reloading.")
				print(string.format("delay: %4d; steps to egg: %3d; daycare man: 0x%02X;", delay, n_step_potentialegg, status_daycare ))
				delay = delay + 1
			end
		end
		if not flag_success then
			stop("Didn't find any egg within the max delay.")
		end
	end
	print("Stopped the script.")
	state = savestate.create()
	savestate.save( state )
end

function hatch()
	egg_party_slot = get_egg_party_slot()
	if egg_party_slot == nil then
		stop("Didn't find the egg.")
	end

	species_list_address = address_party + egg_party_slot
	party_mon_address = address_party + 0x08 + 0x30 * ( egg_party_slot - 1 )
	n_failure_movement_consecutive = 0

	print("Hatching egg in party slot " .. egg_party_slot .. ".")
	while memory.readbyte( species_list_address ) == 0xFD do
		if walk_laterally_safely() then
			n_failure_movement_consecutive = 0
		else
			n_failure_movement_consecutive = n_failure_movement_consecutive + 1
			print("Didn't detect any lateral movement; pressing A.")
			press_A()
			if n_failure_movement_consecutive >= 200 then
				stop("No hatch detected.")
			end
		end
	end
	for n_wait = 1, 60 do
		emu.frameadvance()
	end
	print(string.format("Hatched the %s egg, species %d ( 0x%02X ).", species_number_dex[ memory.readbyte( party_mon_address ) ], memory.readbyte( party_mon_address ), memory.readbyte( party_mon_address ) )) --print(string.format("Hatched the egg, species %d ( 0x%02X ).", memory.readbyte( party_mon_address ), memory.readbyte( party_mon_address ) ))
	print("Stopped the script.")
	state = savestate.create()
	savestate.save( state )
end

function walktogether() --befriend()
	if game == "GSC" then
		n_party = memory.readbyte( address_party )
		party_slot = nil
		n_i = 1
		while n_i <= n_party and party_slot == nil do
			address_species = address_party + n_i
			address_friendship = address_party + 0x08 + 0x30 * ( n_i - 1 ) + 0x1B
			species = memory.readbyte( address_species )
			friendship = memory.readbyte( address_friendship )
			if friendship < friendship_target then
				party_slot = n_i
			end
			n_i = n_i + 1
		end
		if party_slot == nil then
			stop("No 'mon is below the target friendship level.")
		end

		friendship_last = -1
		last_step_count = memory.readbyte( address_step_count )
		number_steps = 0

		print("Walking with the 'mon in party slot " .. party_slot .. ".")
		print(string.format("species: %d, 0x%02X;", species, species ))
		print("initial friendship level: " .. friendship .. ".")
		print("target friendship level: " .. friendship_target .. ".")
		while friendship < friendship_target do
			if not walk_laterally_safely() then
				stop("Didn't detect any lateral movement.")
			end
			step_count = memory.readbyte( address_step_count )
			if step_count ~= last_step_count then
				number_steps = number_steps + 1
				last_step_count = step_count
			end
			friendship = memory.readbyte( address_friendship )
			if friendship ~= friendship_last then
				print(string.format("friendship level: %3d; number of steps: %d;", friendship, number_steps ))
				friendship_last = friendship
			end
		end
		print(string.format("Reached target friendship level %d.", friendship ))
		print("Stopped the script.")
		state = savestate.create()
		savestate.save( state )
	elseif game == "RGBY" and version_name == "Yellow" then
		friendship_target = 147 -- Buddying up with the starter pikachu only serves to get Cerulean City's girl to gift her bulbasaur to you. That requires a friendship level of 147. This friendship level starts at 90. You may or may not reach it before Cerulean City. Nothing else from the game aside from the starter pikachu's mood and reaction depends on this. The script can stop at 147.
		if memory.readbyte( address_party ) < 1 then
			stop("No 'mon is in party.")
		end
		if address_step_count == nil then
			address_step_count = address_party - 0x28
		end
		if region_name == "JP" then
			n_name_length = 0x06
		else
			n_name_length = 0x0B
		end
		n_party = memory.readbyte( address_party )
		n_slot = 1
		slot_Pikachu = nil
		while n_slot <= n_party and slot_Pikachu == nil do
			species = memory.readbyte( address_party + n_slot )
			if species == 0x54 then
				address_mon = address_party + 0x08 + 0x2C * ( n_slot - 1 )
				address_OT = address_party + 0x08 + 0x2C * 6 + n_name_length * ( n_slot - 1 )
				address_player_name = address_party - n_name_length
				flag_same_OT = true
				n_i = 0
				while n_i < n_name_length do
					if memory.readbyte( address_OT + n_i ) ~= memory.readbyte( address_player_name + n_i ) then
						flag_same_OT = false
					end
					n_i = n_i + 1
				end
				if memory.readbyte( address_mon + 0x0C ) == memory.readbyte( address_TID )
				and memory.readbyte( address_mon + 0x0D ) == memory.readbyte( address_TID + 1 )
				and flag_same_OT
				and ( memory.readbyte( address_mon + 0x01 ) ~= 0 or memory.readbyte( address_mon + 0x02 ) ~= 0 ) then
					slot_Pikachu = n_slot
				end
			end
			n_slot = n_slot + 1
		end
		if slot_Pikachu == nil then
			print("No starter Pikachu was found.")
			print("Stopped the script.")
			state = savestate.create()
			savestate.save( state )
			return
		end
		address_species = address_party + slot_Pikachu
		if region_name == "JP" then
			address_friendship = address_party + 0x2CC
		else
			address_friendship = address_party + 0x30D
		end
		species = memory.readbyte( address_species )
		friendship = memory.readbyte( address_friendship )
		friendship_last = -1
		number_steps = 0
		print("Walking with the 'mon in party slot " .. slot_Pikachu .. ".")
		print(string.format("species: %d, 0x%02X;", species, species ))
		print("initial friendship level: " .. friendship .. ".")
		print("target friendship level: " .. friendship_target .. ".")
		while friendship < friendship_target do
			if not walk_laterally_safely() then
				stop("Didn't detect any lateral movement.")
			end
			number_steps = number_steps + 1
			friendship = memory.readbyte( address_friendship )
			if friendship ~= friendship_last then
				print(string.format("friendship level: %3d; number of steps: %d;", friendship, number_steps ))
				friendship_last = friendship
			end
		end
		print(string.format("Reached target friendship level %d.", friendship ))
		print("Stopped the script.")
		state = savestate.create()
		savestate.save( state )
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function id() --get_IDd()
	local state
	local TID

	if game == "RGBY" then
		state = savestate.create()
		savestate.save( state )
		while true do
			emu.frameadvance()
			savestate.save( state )
			press( { A = true }, 32 )
			TID = reverse_word( memory.readword( address_TID ) )
			print(string.format("TID: %d;", TID ))
			if accept_TID( TID ) then
				print(string.format("Got the TID %d.", TID ))
				savestate.save( state )
				return
			end
			savestate.load( state )
		end
	elseif game == "GSC" then
		state = savestate.create()
		while true do
			savestate.save( state )
			press( { A = true }, 20 )
			TID = reverse_word( memory.readword( address_TID ) )
			print(string.format("TID: %d;", TID ))
			if accept_TID( TID ) then
				print(string.format("Got the TID %d.", TID ))
				savestate.save( state )
				return
			end
			savestate.load( state )
			advance( 2 )
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function get()
	local state
	local n_mon_party
	local address_DV
	local DV_ATKDEF
	local DV_SPDSPC
	local n_i

	set_target_DV_list()
	print_target_DV_list() --print(string.format("target IS spreads: %d;", table.getn( list_DV_target ) ))
	if game == "RGBY" then
		n_mon_party = memory.readbyte( address_party ) - 1
		address_DV = address_party + 0x23 + n_mon_party * 0x2C
		state = savestate.create()
		savestate.save( state )
		while true do
			emu.frameadvance()
			savestate.save( state )
			n_i = 0
			while n_i < 20 do
				joypad.set( 1, { A = true } )
				vba.frameadvance()
				n_i = n_i + 1
			end
			DV_ATKDEF, DV_SPDSPC = read_DV( address_DV )
			if accept_DV( DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.load( state )
		end
	elseif game == "GSC" then
		n_mon_party = memory.readbyte( address_party )
		address_DV = address_party + 0x1D + n_mon_party * 0x30
		state = savestate.create()
		while true do
			savestate.save( state )
			while memory.readbyte( address_party ) == n_mon_party do
				joypad.set( 1, { A = true } )
				emu.frameadvance()
			end
			emu.frameadvance()
			DV_ATKDEF, DV_SPDSPC = read_DV( address_DV )
			if accept_DV( DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.load( state )
			emu.frameadvance()
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function catch()
	if game == "RGBY" then
		n_frame_delay = 501
	elseif game == "GSC" then
		n_frame_delay = 764
	end -- calculated empirically quick and dirty from Green and the Japanese Crystal Version, as it's 01:11:11, and I'm gonna sleep, so I might have minimized the delay no better than approximately.
	local state

	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, n_frame_delay )
		if game == "RGBY" and memory.readbyte( address_flag_capture ) ~= 0 or game == "GSC" and memory.readword( address_flag_capture ) ~= 0 then
			print("Caught the 'mon.")
			savestate.save( state )
			return
		end
		print("Missed the 'mon.")
		savestate.load( state )
		emu.frameadvance()
	end
end

function breed()
	if game ~= "GSC" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC

	set_target_DV_list()
	print_target_DV_list() --print(string.format("target IS spreads: %d;", table.getn( list_DV_target ) ))
	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, 105 )
		DV_ATKDEF, DV_SPDSPC = read_DV( address_egg_DV )
		if accept_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
		emu.frameadvance()
	end
end

function encounter()
	local state
	local n_frame
	local i
	local species
	local species_RGBY
	local DV_ATKDEF
	local DV_SPDSPC
	local address_flag_DV
	local address_species
	local list_species_RGBY

	build_target_DV_list()
	if game == "RGBY" then
		list_species_RGBY = {
			[ 0x01 ] = 112, [ 0x02 ] = 115, [ 0x03 ] = 32, [ 0x04 ] = 35, [ 0x05 ] = 21, [ 0x06 ] = 100, [ 0x07 ] = 34, [ 0x08 ] = 80,
			[ 0x09 ] = 2, [ 0x0A ] = 103, [ 0x0B ] = 108, [ 0x0C ] = 102, [ 0x0D ] = 88, [ 0x0E ] = 94, [ 0x0F ] = 29, [ 0x10 ] = 31,
			[ 0x11 ] = 104, [ 0x12 ] = 111, [ 0x13 ] = 131, [ 0x14 ] = 59, [ 0x15 ] = 151, [ 0x16 ] = 130, [ 0x17 ] = 90, [ 0x18 ] = 72,
			[ 0x19 ] = 92, [ 0x1A ] = 123, [ 0x1B ] = 120, [ 0x1C ] = 9, [ 0x1D ] = 127, [ 0x1E ] = 114,
			[ 0x21 ] = 58, [ 0x22 ] = 95, [ 0x23 ] = 22, [ 0x24 ] = 16, [ 0x25 ] = 79, [ 0x26 ] = 64, [ 0x27 ] = 75, [ 0x28 ] = 113,
			[ 0x29 ] = 67, [ 0x2A ] = 122, [ 0x2B ] = 106, [ 0x2C ] = 107, [ 0x2D ] = 24, [ 0x2E ] = 47, [ 0x2F ] = 54, [ 0x30 ] = 96,
			[ 0x31 ] = 76, [ 0x33 ] = 126, [ 0x35 ] = 125, [ 0x36 ] = 82, [ 0x37 ] = 109, [ 0x39 ] = 56, [ 0x3A ] = 86, [ 0x3B ] = 50,
			[ 0x3C ] = 128, [ 0x40 ] = 83, [ 0x41 ] = 48, [ 0x42 ] = 149, [ 0x46 ] = 84, [ 0x47 ] = 60, [ 0x48 ] = 124, [ 0x49 ] = 146,
			[ 0x4A ] = 144, [ 0x4B ] = 145, [ 0x4C ] = 132, [ 0x4D ] = 52, [ 0x4E ] = 98, [ 0x52 ] = 37, [ 0x53 ] = 38, [ 0x54 ] = 25,
			[ 0x55 ] = 26, [ 0x58 ] = 147, [ 0x59 ] = 148, [ 0x5A ] = 140, [ 0x5B ] = 141, [ 0x5C ] = 116, [ 0x5D ] = 117,
			[ 0x60 ] = 27, [ 0x61 ] = 28, [ 0x62 ] = 138, [ 0x63 ] = 139, [ 0x64 ] = 39, [ 0x65 ] = 40, [ 0x66 ] = 133, [ 0x67 ] = 136,
			[ 0x68 ] = 135, [ 0x69 ] = 134, [ 0x6A ] = 66, [ 0x6B ] = 41, [ 0x6C ] = 23, [ 0x6D ] = 46, [ 0x6E ] = 61, [ 0x6F ] = 62,
			[ 0x70 ] = 13, [ 0x71 ] = 14, [ 0x72 ] = 15, [ 0x74 ] = 85, [ 0x75 ] = 57, [ 0x76 ] = 51, [ 0x77 ] = 49, [ 0x78 ] = 87,
			[ 0x7B ] = 10, [ 0x7C ] = 11, [ 0x7D ] = 12, [ 0x7E ] = 68, [ 0x80 ] = 55, [ 0x81 ] = 97, [ 0x82 ] = 42, [ 0x83 ] = 150,
			[ 0x84 ] = 143, [ 0x85 ] = 129, [ 0x88 ] = 89, [ 0x8A ] = 99, [ 0x8B ] = 91, [ 0x8D ] = 101, [ 0x8E ] = 36, [ 0x8F ] = 110,
			[ 0x90 ] = 53, [ 0x91 ] = 105, [ 0x93 ] = 93, [ 0x94 ] = 63, [ 0x95 ] = 65, [ 0x96 ] = 17, [ 0x97 ] = 18, [ 0x98 ] = 121,
			[ 0x99 ] = 1, [ 0x9A ] = 3, [ 0x9B ] = 73, [ 0x9D ] = 118, [ 0x9E ] = 119, [ 0xA3 ] = 77, [ 0xA4 ] = 78, [ 0xA5 ] = 19,
			[ 0xA6 ] = 20, [ 0xA7 ] = 33, [ 0xA8 ] = 30, [ 0xA9 ] = 74, [ 0xAA ] = 137, [ 0xAB ] = 142, [ 0xAD ] = 81,
			[ 0xB0 ] = 4, [ 0xB1 ] = 7, [ 0xB2 ] = 5, [ 0xB3 ] = 8, [ 0xB4 ] = 6, [ 0xB9 ] = 43, [ 0xBA ] = 44, [ 0xBB ] = 45,
			[ 0xBC ] = 69, [ 0xBD ] = 70, [ 0xBE ] = 71,
		}
		address_species = address_mon_wild - 0x0C
		state = savestate.create()
		while true do
			emu.frameadvance()
			savestate.save( state )
			n_frame = 0
			while memory.readbyte( 0xC027 ) ~= 0xF0 do
				if n_frame < 31 then
					joypad.set( 1, { right = true } )
				else
					joypad.set( 1, { left = true } )
				end
				emu.frameadvance()
				n_frame = ( n_frame + 1 ) % 65
			end
			species_RGBY = memory.readbyte( address_species )
			species = list_species_RGBY[ species_RGBY ] or species_RGBY
			DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
			if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
				print("Got a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			if not accept_target_species( species ) then
				print("Rejecting the species.")
				print( string.format("species: %d, 0x%02X;", species, species ) )
				print( string.format("RGBY species index: %d, 0x%02X;", species_RGBY, species_RGBY ) )
				print_DV( DV_ATKDEF, DV_SPDSPC )
			else
				print("Rejecting the spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
			end
			savestate.load( state )
		end
	elseif game == "GSC" then
		address_flag_DV = address_mon_wild + 0x21
		address_species = address_mon_wild + 0x22
		state = savestate.create()
		while true do
			savestate.save( state )
			i = 0
			if code_direction == 0 or code_direction ~= 1 and code_direction ~= 3 and code_direction ~= 4 then
				while memory.readbyte( address_species ) == 0 do
					if i < 15 then
						joypad.set( 1, { left = false } )
						joypad.set( 1, { right = true } )
					else
						joypad.set( 1, { right = false } )
						joypad.set( 1, { left = true } )
					end
					emu.frameadvance()
					i = ( i + 1 ) % 32
				end
			end
			if code_direction == 1 then
				while memory.readbyte( address_species ) == 0 do
					if i < 15 then
						joypad.set( 1, { down = false } )
						joypad.set( 1, { up = true } )
					else
						joypad.set( 1, { up = false } )
						joypad.set( 1, { down = true } )
					end
					emu.frameadvance()
					i = ( i + 1 ) % 32
				end
			end
			if code_direction == 3 then
				while memory.readbyte( address_species ) == 0 do
					if i < 15 then
						joypad.set( 1, { right = false } )
						joypad.set( 1, { left = true } )
					else
						joypad.set( 1, { left = false } )
						joypad.set( 1, { right = true } )
					end
					emu.frameadvance()
					i = ( i + 1 ) % 32
				end
			end
			if code_direction == 4 then
				while memory.readbyte( address_species ) == 0 do
					if i < 15 then
						joypad.set( 1, { up = false } )
						joypad.set( 1, { down = true } )
					else
						joypad.set( 1, { down = false } )
						joypad.set( 1, { up = true } )
					end
					emu.frameadvance()
					i = ( i + 1 ) % 32
				end
			end
			species = memory.readbyte( address_species )
			print(string.format("species: %d;", species ))
			if not accept_target_species( species ) then
				savestate.load( state )
			else
				while memory.readbyte( address_flag_DV ) ~= 0x01 do
					emu.frameadvance()
				end
				DV_ATKDEF = memory.readbyte( address_mon_wild )
				DV_SPDSPC = memory.readbyte( address_mon_wild + 1 )
				print(string.format("ATK: %02d;\tDEF: %02d;\tSPE: %02d;\tSPC: %02d;", math.floor( DV_ATKDEF / 16 ), DV_ATKDEF % 16, math.floor( DV_SPDSPC / 16 ), DV_SPDSPC % 16 ))
				if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
					print("Hit the frame of the IS of the target 'mon; stopped the script.")
					savestate.save( state )
					return
				else
					savestate.load( state )
				end
			end
			emu.frameadvance()
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function fish()
	local state
	local species
	local species_RGBY
	local DV_ATKDEF
	local DV_SPDSPC
	local address_flag_fish
	local address_flag_DV
	local address_species
	local n_frame
	local list_species_RGBY

	build_target_DV_list()
	state = savestate.create()
	if game == "RGBY" then
		list_species_RGBY = {
			[ 0x01 ] = 112, [ 0x02 ] = 115, [ 0x03 ] =  32, [ 0x04 ] =  35,
			[ 0x05 ] =  21, [ 0x06 ] = 100, [ 0x07 ] =  34, [ 0x08 ] =  80,
			[ 0x09 ] =   2, [ 0x0A ] = 103, [ 0x0B ] = 108, [ 0x0C ] = 102,
			[ 0x0D ] =  88, [ 0x0E ] =  94, [ 0x0F ] =  29, [ 0x10 ] =  31,
			[ 0x11 ] = 104, [ 0x12 ] = 111, [ 0x13 ] = 131, [ 0x14 ] =  59,
			[ 0x15 ] = 151, [ 0x16 ] = 130, [ 0x17 ] =  90, [ 0x18 ] =  72,
			[ 0x19 ] =  92, [ 0x1A ] = 123, [ 0x1B ] = 120, [ 0x1C ] =   9,
			[ 0x1D ] = 127, [ 0x1E ] = 114, [ 0x21 ] =  58, [ 0x22 ] =  95,
			[ 0x23 ] =  22, [ 0x24 ] =  16, [ 0x25 ] =  79, [ 0x26 ] =  64,
			[ 0x27 ] =  75, [ 0x28 ] = 113, [ 0x29 ] =  67, [ 0x2A ] = 122,
			[ 0x2B ] = 106, [ 0x2C ] = 107, [ 0x2D ] =  24, [ 0x2E ] =  47,
			[ 0x2F ] =  54, [ 0x30 ] =  96, [ 0x31 ] =  76, [ 0x33 ] = 126,
			[ 0x35 ] = 125, [ 0x36 ] =  82, [ 0x37 ] = 109, [ 0x39 ] =  56,
			[ 0x3A ] =  86, [ 0x3B ] =  50, [ 0x3C ] = 128, [ 0x40 ] =  83,
			[ 0x41 ] =  48, [ 0x42 ] = 149, [ 0x46 ] =  84, [ 0x47 ] =  60,
			[ 0x48 ] = 124, [ 0x49 ] = 146, [ 0x4A ] = 144, [ 0x4B ] = 145,
			[ 0x4C ] = 132, [ 0x4D ] =  52, [ 0x4E ] =  98, [ 0x52 ] =  37,
			[ 0x53 ] =  38, [ 0x54 ] =  25, [ 0x55 ] =  26, [ 0x58 ] = 147,
			[ 0x59 ] = 148, [ 0x5A ] = 140, [ 0x5B ] = 141, [ 0x5C ] = 116,
			[ 0x5D ] = 117, [ 0x60 ] =  27, [ 0x61 ] =  28, [ 0x62 ] = 138,
			[ 0x63 ] = 139, [ 0x64 ] =  39, [ 0x65 ] =  40, [ 0x66 ] = 133,
			[ 0x67 ] = 136, [ 0x68 ] = 135, [ 0x69 ] = 134, [ 0x6A ] =  66,
			[ 0x6B ] =  41, [ 0x6C ] =  23, [ 0x6D ] =  46, [ 0x6E ] =  61,
			[ 0x6F ] =  62, [ 0x70 ] =  13, [ 0x71 ] =  14, [ 0x72 ] =  15,
			[ 0x74 ] =  85, [ 0x75 ] =  57, [ 0x76 ] =  51, [ 0x77 ] =  49,
			[ 0x78 ] =  87, [ 0x7B ] =  10, [ 0x7C ] =  11, [ 0x7D ] =  12,
			[ 0x7E ] =  68, [ 0x80 ] =  55, [ 0x81 ] =  97, [ 0x82 ] =  42,
			[ 0x83 ] = 150, [ 0x84 ] = 143, [ 0x85 ] = 129, [ 0x88 ] =  89,
			[ 0x8A ] =  99, [ 0x8B ] =  91, [ 0x8D ] = 101, [ 0x8E ] =  36,
			[ 0x8F ] = 110, [ 0x90 ] =  53, [ 0x91 ] = 105, [ 0x93 ] =  93,
			[ 0x94 ] =  63, [ 0x95 ] =  65, [ 0x96 ] =  17, [ 0x97 ] =  18,
			[ 0x98 ] = 121, [ 0x99 ] =   1, [ 0x9A ] =   3, [ 0x9B ] =  73,
			[ 0x9D ] = 118, [ 0x9E ] = 119, [ 0xA3 ] =  77, [ 0xA4 ] =  78,
			[ 0xA5 ] =  19, [ 0xA6 ] =  20, [ 0xA7 ] =  33, [ 0xA8 ] =  30,
			[ 0xA9 ] =  74, [ 0xAA ] = 137, [ 0xAB ] = 142, [ 0xAD ] =  81,
			[ 0xB0 ] =   4, [ 0xB1 ] =   7, [ 0xB2 ] =   5, [ 0xB3 ] =   8,
			[ 0xB4 ] =   6, [ 0xB9 ] =  43, [ 0xBA ] =  44, [ 0xBB ] =  45,
			[ 0xBC ] =  69, [ 0xBD ] =  70, [ 0xBE ] =  71,
		}
		address_flag_fish = 0xCD3D
		if region_name == "JP" then
			address_species = 0xD036
		elseif region_name == "US" and version_name == "Yellow" then
			address_species = 0xD058
		elseif region_name == "US" then
			address_species = 0xD059
		elseif region_name == "EU" and version_name == "Yellow" then
			address_species = 0xD05D
		elseif region_name == "EU" then
			address_species = 0xD05E
		else
			stop( string.format("Don't know the version %4x.", version_byte ) )
		end
		while true do
			emu.frameadvance()
			savestate.save( state )
			joypad.set( 1, { A = true } )
			emu.frameadvance()
			n_frame = 0
			while n_frame < 200 do
				emu.frameadvance()
				n_frame = n_frame + 1
			end
			if memory.readbyte( address_flag_fish ) == 0x02 then
				stop("There are no fishable 'mons here.")
			elseif memory.readbyte( address_flag_fish ) == 0x01 then
				species_RGBY = memory.readbyte( address_species )
				species = list_species_RGBY[ species_RGBY ] or species_RGBY
				if accept_target_species( species ) then
					savestate.save( state )
					n_frame = 0
					while n_frame < 210 do
						joypad.set( 1, { A = true } )
						emu.frameadvance()
						n_frame = n_frame + 1
					end
					while true do
						emu.frameadvance()
						savestate.save( state )
						DV_ATKDEF = 0
						DV_SPDSPC = 0
						while memory.readbyte( 0xC027 ) ~= 0xF0 do
							joypad.set( 1, { A = true } )
							emu.frameadvance()
							DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
						end
						DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
						if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
							print("Found a target spread.")
							print_DV( DV_ATKDEF, DV_SPDSPC )
							savestate.save( state )
							return
						end
						print("Rejecting the spread.")
						print_DV( DV_ATKDEF, DV_SPDSPC )
						savestate.load( state )
					end
				else
					print("Rejecting the species.")
					print( string.format("species: %d, 0x%02X;", species, species ) )
					print( string.format("RGBY species index: %d, 0x%02X;", species_RGBY, species_RGBY ) )
					savestate.load( state )
				end
			else
				print("Nothing bit.")
				savestate.load( state )
			end
		end
	elseif game == "GSC" then
		address_flag_fish = address_mon_wild - 0x1D
		address_flag_DV = address_mon_wild + 0x21
		address_species = address_mon_wild + 0x22
		while true do
			savestate.save( state )
			joypad.set( 1, { A = true } )
			emu.frameadvance()
			if memory.readbyte( address_flag_fish ) ~= 0x01 then
				print("Nothing bit.")
				savestate.load( state )
			else
				species = 0
				while species == 0 do
					emu.frameadvance()
					species = memory.readbyte( address_species )
				end
				if not accept_target_species( species ) then
					print("Rejecting the species.")
					print( string.format("species: %d, 0x%02X;", species, species ) )
					savestate.load( state )
				else
					print(string.format("Found a %s, species %d.", species_number_dex[ species ], species )) --print(string.format("Found species %d.", species ))
					advance( 300 )
					break
				end
			end
			emu.frameadvance()
		end
		while true do
			savestate.save( state )
			joypad.set( 1, { A = true } )
			while memory.readbyte( address_flag_DV ) ~= 0x01 do
				emu.frameadvance()
			end
			emu.frameadvance()
			DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
			if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.load( state )
			emu.frameadvance()
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function smash()
	if game ~= "GSC" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local species
	local DV_ATKDEF
	local DV_SPDSPC
	local address_flag_DV
	local address_flag_battle
	local address_species

	build_target_DV_list()
	address_flag_DV = address_mon_wild + 0x21
	address_flag_battle = address_mon_wild + 0x22
	address_species = address_mon_wild - 0x08
	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, 100 )
		if memory.readbyte( address_flag_battle ) == 0 then
			print("Didn't find the encounter.")
			savestate.load( state )
		else
			while memory.readbyte( address_flag_DV ) ~= 0x01 do
				emu.frameadvance()
			end
			species = memory.readbyte( address_species )
			if accept_target_species( species ) then
				DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
				if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
					print("Found a target spread.")
					print_DV( DV_ATKDEF, DV_SPDSPC )
					savestate.save( state )
					return
				end
				print("Rejecting the spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
			else
				print("Rejecting the species.")
				print( string.format("species: %d, 0x%02X;", species, species ) )
			end
			savestate.load( state )
		end
		emu.frameadvance()
	end
end

function headbutt()
	if game ~= "GSC" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local species
	local DV_ATKDEF
	local DV_SPDSPC
	local address_species
	local address_flag

	build_target_DV_list()
	address_species = address_mon_wild - 0x08
	address_flag = address_mon_wild + 0x22
	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, 100 )
		if memory.readbyte( address_flag ) == 0 then
			savestate.load( state )
		else
			while memory.readbyte( address_mon_wild + 0x21 ) ~= 0x01 do
				emu.frameadvance()
			end
			species = memory.readbyte( address_species )
			if accept_target_species( species ) then
				DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
				if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
					print("Found a target spread.")
					print_DV( DV_ATKDEF, DV_SPDSPC )
					savestate.save( state )
					return
				end
				print("Rejecting the spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.load( state )
			else
				print(string.format("Rejecting the %s, species %d.", species_number_dex[ species ], species )) --print(string.format("Rejecting species %d.", species ))
				savestate.load( state )
			end
		end
		emu.frameadvance()
	end
end

function trade()
	if game ~= "RGBY" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local n_mon_party
	local address_DV
	local DV_ATKDEF
	local DV_SPDSPC
	local DV_ATKDEF_previous
	local DV_SPDSPC_previous

	set_target_DV_list()
	print_target_DV_list() --print(string.format("target IS spreads: %d;", table.getn( list_DV_target ) ))
	n_mon_party = memory.readbyte( address_party ) - 1
	address_DV = address_party + 0x23 + n_mon_party * 0x2C
	state = savestate.create()
	while true do
		emu.frameadvance()
		DV_ATKDEF_previous, DV_SPDSPC_previous = read_DV( address_DV )
		savestate.save( state )
		press( { A = true }, 1 )
		DV_ATKDEF, DV_SPDSPC = read_DV( address_DV )
		while DV_ATKDEF == DV_ATKDEF_previous and DV_SPDSPC == DV_SPDSPC_previous do
			emu.frameadvance()
			DV_ATKDEF, DV_SPDSPC = read_DV( address_DV )
		end
		if accept_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
	end
end

function battle()
	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local address_flag_DV
	local n_i

	build_target_DV_list()
	state = savestate.create()
	if game == "RGBY" then
		savestate.save( state )
		while true do
			joypad.set( 1, { A = true } )
			emu.frameadvance()
			DV_ATKDEF = 0
			DV_SPDSPC = 0
			savestate.save( state )
			while memory.readbyte( 0xC027 ) ~= 0xF0 do
				joypad.set( 1, { A = false } )
				emu.frameadvance()
				DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
			end
			if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.load( state )
		end
	elseif game == "GSC" then
		address_flag_DV = address_mon_wild + 0x21
		while true do
			savestate.save( state )
			while memory.readbyte( address_flag_DV ) ~= 0x01 do
				if flag_lapras then
					n_i = 0
					while n_i < 32 do
						joypad.set( 1, { B = true } )
						vba.frameadvance()
						n_i = n_i + 1
					end
				end
				joypad.set( 1, { A = true } )
				emu.frameadvance()
			end
			if flag_lapras then
				emu.frameadvance()
			end
			DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
			if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.load( state )
			emu.frameadvance()
			emu.frameadvance()
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function hold() --get_held()
	if game ~= "GSC" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local species
	local item
	local address_species
	local address_item
	local i

	address_species = address_mon_wild + 0x22
	address_item = address_mon_wild - 0x05
	state = savestate.create()
	while true do
		savestate.save( state )
		i = 0
		while memory.readbyte( address_species ) == 0 do
			if i < 15 then
				joypad.set( 1, { left = false } )
				joypad.set( 1, { right = true } )
			else
				joypad.set( 1, { right = false } )
				joypad.set( 1, { left = true } )
			end
			emu.frameadvance()
			i = ( i + 1 ) % 32
		end
		species = memory.readbyte( address_species )
		if accept_target_species( species ) then
			advance( 500 )
			item = memory.readbyte( address_item )
			if accept_item( item ) then
				print(string.format("Found a %s, item 0x%02X, on a %s, species %d.", item_number_index_item[ item ], item, species_number_dex[ species ], species )) --print(string.format("Found the item 0x%02X on species %d.", item, species ))
				savestate.save( state )
				return
			end
			if item ~= 0x00 then
				print(string.format("Rejecting the %s, species %d, with a %s, item 0x%02X.", species_number_dex[ species ], species, item_number_index_item[ item ], item ))
			else
				print(string.format("Rejecting the %s, species %d, with %s", species_number_dex[ species ], species, item_number_index_item[ item ] ))
			end
			--print(string.format("Rejected species %d with the item 0x%02X.", species, item ))
			savestate.load( state )
		else
			print(string.format("Rejecting the %s, species %d.", species_number_dex[ species ], species )) --print(string.format("Rejecting species %d.", species ))
			savestate.load( state )
		end
		emu.frameadvance()
	end
end

function unown()
	if game ~= "GSC" then
		stop(string.format("Don't know the version %4x.", version_byte ))
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local letter
	local address_species
	local address_flag_DV
	local address_flag_battle
	local i

	build_target_DV_list()
	address_species = address_mon_wild - 0x08
	address_flag_DV = address_mon_wild + 0x21
	address_flag_battle = address_mon_wild + 0x22
	state = savestate.create()
	while true do
		savestate.save( state )
		i = 0
		while memory.readbyte( address_flag_battle ) == 0 do
			if i < 15 then
				joypad.set( 1, { left = false } )
				joypad.set( 1, { right = true } )
			else
				joypad.set( 1, { right = false } )
				joypad.set( 1, { left = true } )
			end
			emu.frameadvance()
			i = ( i + 1 ) % 32
		end
		if memory.readbyte( address_species ) ~= 201 then
			stop("Didn't find the encounter slot of unown.")
		end
		while memory.readbyte( address_flag_DV ) ~= 0x01 do
			emu.frameadvance()
		end
		emu.frameadvance()
		DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
		letter = get_unown_letter( DV_ATKDEF, DV_SPDSPC )
		print("unown letter: " .. letter .. ";")
		if letter == letter_unown_target then
			if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
				print("Found a target spread.")
				print_DV( DV_ATKDEF, DV_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
		end
		savestate.load( state )
		emu.frameadvance()
	end
end

function raikouenteisuicune()
	if game ~= "GSC" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local species
	local DV_ATKDEF
	local DV_SPDSPC
	local name_species
	local address_species_roamer
	local address_flag_DV
	local address_flag_battle
	local n_i

	build_target_DV_list()
	address_species_roamer = address_mon_wild - 0x08
	address_flag_DV = address_mon_wild + 0x21
	address_flag_battle = address_mon_wild + 0x22
	state = savestate.create()
	while true do
		for n_i = 0, 15 do
			press( { left = true }, 10 )
			press( { left = false }, 10 )
		end
		press( { up = true }, 10 )
		press( { up = false }, 10 )
		savestate.save( state )
		while memory.readbyte( address_flag_battle ) == 0 do
			press( { left = true }, 10 )
			press( { left = false }, 10 )
			press( { right = true }, 10 )
			press( { right = false }, 10 )
		end
		while memory.readbyte( address_flag_DV ) ~= 0x01 do
			emu.frameadvance()
		end
		species = memory.readbyte( address_species_roamer )
		if species ~= 243 and species ~= 244 and species ~= 245 or not accept_target_species( species ) then
			if species ~= 0 then
				print(string.format("Rejecting the %s, species %d.", species_number_dex[ species ], species )) --print(string.format("Rejecting species %d.", species ))
			end
			savestate.load( state )
			press( { down = true }, 10 )
			press( { down = false }, 10 )
			for n_i = 0, 15 do
				press( { right = true }, 10 )
				press( { right = false }, 10 )
			end
			press( { left = true }, 10 )
			press( { left = false }, 10 )
		else
			advance( n_frame_delay )
			savestate.load( state )
			while true do
				savestate.load( state )
				while memory.readbyte( address_flag_battle ) == 0 do
					press( { left = true, A = true }, 16 )
					press( { left = false, A = false }, 16 )
					press( { right = true, A = true }, 16 )
					press( { right = false, A = false }, 16 )
				end
				while memory.readbyte( address_flag_DV ) ~= 0x01 do
					emu.frameadvance()
				end
				species = memory.readbyte( address_species_roamer )
				if species ~= 243 and species ~= 244 and species ~= 245 or not accept_target_species( species ) then
					if species ~= 0 then
						print(string.format("Rejecting the %s, species %d.", species_number_dex[ species ], species )) --print(string.format("Rejecting species %d.", species ))
					end
					savestate.load( state )
					press( { down = true }, 10 )
					press( { down = false }, 10 )
					press( { up = true }, 10 )
					press( { up = false }, 10 )
					savestate.save( state )
				else
					if species == 243 then
						name_species = "raikou"
					elseif species == 244 then
						name_species = "entei"
					else
						name_species = "suicune"
					end
					DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
					if accept_target_species_DV( species, DV_ATKDEF, DV_SPDSPC ) then
						print("Found a target spread.")
						print(string.format("species %d: %s;", species, name_species ))
						print_DV( DV_ATKDEF, DV_SPDSPC )
						savestate.save( state )
						return
					end
					print("Rejecting the spread.")
					print(string.format("species %d: %s;", species, name_species ))
					print_DV( DV_ATKDEF, DV_SPDSPC )
					savestate.load( state )
					press( { down = true }, 10 )
					press( { down = false }, 10 )
					press( { up = true }, 10 )
					press( { up = false }, 10 )
					savestate.save( state )
				end
				emu.frameadvance()
			end
		end
		emu.frameadvance()
	end
end

function suicune()
	if game ~= "GSC" or version_name ~= "Crystal" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local address_flag_DV

	build_target_DV_list()
	address_flag_DV = address_mon_wild + 0x21
	state = savestate.create()
	while true do
		savestate.save( state )
		while memory.readbyte( address_flag_DV ) ~= 0x01 do
			press( { up = true }, 10 )
			emu.frameadvance()
		end
		DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
		if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
		emu.frameadvance()
		emu.frameadvance()
	end
end

function glitch()
	if game ~= "RGBY" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local counter

	build_target_DV_list()
	counter = 0
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { B = true }, 255 )
		DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
		counter = counter + 1
		if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print(string.format("counter: %d;", counter ))
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
	end
end

function yellowmew()
	if version_name ~= "Yellow" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local address_DV

	build_target_DV_list( DV_target_YellowMew )
	address_DV = 0xCFF5
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { A = true }, 250 )
		DV_ATKDEF, DV_SPDSPC = read_DV( address_DV )
		if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
	end
end

function gengar()
	if game ~= "RGBY" then
		stop(string.format("Don't know the version %4x.", version_byte ))
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC
	local counter

	build_target_DV_list( DV_target_Gengar )
	counter = 0
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { up = true }, 250 )
		DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
		counter = counter + 1
		if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print(string.format("counter: %d;", counter ))
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
	end
end

function mewtwomoltres()
	if game ~= "RGBY" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local DV_ATKDEF
	local DV_SPDSPC

	build_target_DV_list( DV_target_MewtwoMoltres )
	state = savestate.create()
	savestate.save( state )
	while true do
		joypad.set( 1, { A = true } )
		emu.frameadvance()
		DV_ATKDEF = 0
		DV_SPDSPC = 0
		savestate.save( state )
		while memory.readbyte( 0xC027 ) ~= 0xF0 do
			joypad.set( 1, { A = false } )
			emu.frameadvance()
			DV_ATKDEF, DV_SPDSPC = read_DV( address_mon_wild )
		end
		if accept_target_DV( DV_ATKDEF, DV_SPDSPC ) then
			print("Found a target spread.")
			print_DV( DV_ATKDEF, DV_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_DV( DV_ATKDEF, DV_SPDSPC )
		savestate.load( state )
	end
end

function do_mode() -- DoCode? Ha ha!
	if mode == "id" then
		id() -- works with RGBY and GSC.
	elseif mode == "get" then
		get() -- works with RGBY and GSC.
	elseif mode == "catch" then
		catch() -- works with RGBY and GSC.
	elseif mode == "breed" then
		breed() -- works with GSC.
	elseif mode == "encounter" then
		encounter() -- works with RGBY and GSC.
	elseif mode == "fish" then
		fish() -- works with RGBY and GSC.
	elseif mode == "smash" then
		smash() -- works with GSC.
	elseif mode == "headbutt" then
		headbutt() -- works with GSC.
	elseif mode == "trade" then
		trade() -- works with RGBY ~and GSC~.
	elseif mode == "battle" then
		battle() -- works with RGBY and GSC.
	elseif mode == "hold" then
		hold() -- works with GSC.
	elseif mode == "unown" then
		unown() -- works with GSC.
	elseif mode == "raikouenteisuicune" then
		raikouenteisuicune() -- works with GS.
	elseif mode == "suicune" then
		suicune() -- works with C.
	elseif mode == "glitch" then
		glitch() -- works with RGBY.
	elseif mode == "yellowmew" then
		yellowmew() -- works with Y.
	elseif mode == "gengar" then
		gengar() -- works with RGBY.
	elseif mode == "mewtwomoltres" then
		mewtwomoltres() -- works with RGBY.
	elseif mode == "count" then
		count() -- works with GSC.
	elseif mode == "lay" then
		lay() -- works with GSC.
	elseif mode == "hatch" then
		hatch() -- works with GSC.
	elseif mode == "walktogether" then
		walktogether() -- works with Y and GSC.
	else
		stop("Don't know the mode " .. tostring( mode ) .. ".")
	end
end

function main()
	detect_game()
	print("game: " .. game .. ";")
	print("version: " .. version_name .. ";")
	print("mode: " .. mode .. ";")
	do_mode()
	print( os.date("%c") )
	pause()
end

main()

--	kvpbsg1ng2rngmanipulationbot.lua
--	KVPB's RGBY & GSC PRNG manipulation utility for VisualBoyAdvance-ReRecording 23.6 (SVN 480)
--
--	Karl V. P. B. `kvpb`  Karl Thomas George West `ktgw`
--	+33 A BB BB BB BB     +1 (DDD) DDD-DDDD
--	local-part@domain     local-part@domain
--	kvpb.fr
--	https://x.com/ktgwkvpb
--	https://github.com/kvpb

--	Copyright 2022, 2023, 2024, 2025, 2026 Karl Vincent Pierre Bertin AKA Karl Thomas George West
--
--	Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the names of the contributors not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. The contributors make no representations about the suitability of this software for any purpose.  It is provided "as is" without express or implied warranty.