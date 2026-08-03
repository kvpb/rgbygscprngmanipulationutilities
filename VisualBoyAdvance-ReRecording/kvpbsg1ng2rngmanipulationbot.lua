mode = "unown"
-- modes:
-- 	id,                 get,                catch,              breed,
-- 	encounter,          fish,               smash,              headbutt,           trade,              battle,             hold,
-- 	unown,              raikouenteisuicune, suicune,
-- 	glitch,             yellowmew,          gengar,             mewtwomoltres,
-- 	count,              lay,                hatch,              walktogether,
IS_target = {
	"faridakhennane", -- I'm debugging the software with these dysgenic, lower-half-tier individual strengths. Gotta wipe 'em all out.
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
-- 	{}: IS_ATKDEF and IS_SPDSPC or IS_ATK, IS_DEF, IS_SPD, IS_SPC are used;
IS_ATKDEF = nil
IS_SPDSPC = nil
IS_ATK = 15
IS_DEF = 15
IS_SPD = 15
IS_SPC = 15
species_target = -1 -- -1: other species aren't filtered;
list_species_target = {
	 16,  98,--
	 23,  24,  35,  50,  51,  60,  61,  63,  64,  66,  67,  74,  75,  79,  80,  81,  82,  84,  85,  88,  89,  90,  92,  93,  95, 102, 104, 105, 111, 112, 113, 116, 117, 120, 123, 124, 129, 130, 131, 132, 147, 148,
	200, 202, 204, 213, 214, 227, 235, 246, 247,
	 83,  80,  54,  96, -- These are the numbers of the 'mons of the best utility 'mons.
	243, 244, 245 -- These are the species numbers of raikou, entei, suicune for the raikouenteisuicune mode. Remember you can't encounter suicunes this way in Crystal Version; you gotta battle them in C with this script in suicune mode.
} -- {}: the list isn't filtered;
list_species_IS_target = {} -- { { species = 123, IS_ATKDEF = 0xCC, IS_SPDSPC = 0xFF } }: species-and-IS targets; {}: species_target or list_species_target and IS_target are used independently;
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
IDNo_target = 0 -- 0: no ID No. is targeted;
list_IDNo_target = { 1, 2, 3 } -- Red came 1st, Ethan, 2nd, Kris, 3rd. Some people like 777, others, 69. I got 555555 in Sword!
n_frame_delay = 1000
max_delay = 3600
n_step_potentialegg_target = 2
friendship_target = 220
direction_lateral = "right"
code_direction = 0 -- 0: right; 1: up; 3: left; 4: down; -- Support hunting in the minefield.
flag_pause_uponhit = true
flag_lapras = false -- for laprases in the depths of Union Cave only; swim to them, face them, pause there, set this variable to true, and run the script.
game = nil
flag_Yellow = false
version_name = nil
region_name = nil
word_revision = nil
version_byte = nil
region_byte = nil
address_IDNo = nil
address_party = nil
address_mon_wild = nil
address_egg_IS = nil
address_status_daycare = nil
address_n_step_potentialegg = nil
address_step_count = nil
address_flag_capture = nil
list_IS_target = {}
local info_script = debug.getinfo( 1, "S")
local filename = info_script.source:match("@(.+)$")
words_revision_R_JP = {
	0xC1A2,--
	0xD5DD,--
	0x66B8,
}
words_revision_G_JP = {
	0x47F5,
}
words_revision_B_JP = {
	0x36DC,
}
words_revision_Y_JP = {
	0x299C,
}
words_revision_R_US = {
	0xE691,
}
words_revision_B_US = {
	0x0A9D,
}
words_revision_Y_US = {
	0x7C04,
}
words_revision_R_EU = {
	0xFC7A,
}
words_revision_B_EU = {
	0xA456,
}
words_revision_Y_EU = {
	0xC1B7,
}
bytes_revision_G_JP = {
	0x55,
}
bytes_revision_G_US = {
	0x55,
}
bytes_revision_G_EU = {
	0x55,
}
bytes_revision_G_KR = {
	0x55,
}
bytes_revision_S_JP = {
	0x58,
}
bytes_revision_S_US = {
	0x58,
}
bytes_revision_S_EU = {
	0x58,
}
bytes_revision_S_KR = {
	0x58,
}
bytes_revision_C_JP = {
	0x54,
}
bytes_revision_C_US = {
	0x54,
}
bytes_revision_C_EU = {
	0x54,
}
presets_IS_usual = {
	faridakhennane = {
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x00, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x01, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x02, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x03, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x04, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x05, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x06, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x07, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x20, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x21, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x22, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x23, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x24, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x25, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x26, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x27, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x40, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x41, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x42, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x43, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x44, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x45, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x46, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x47, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x60, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x61, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x62, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x63, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x64, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x65, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x66, IS_SPDSPC = 0x77 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x00 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x01 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x02 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x03 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x04 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x05 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x06 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x07 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x10 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x11 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x12 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x13 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x14 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x15 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x16 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x17 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x20 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x21 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x22 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x23 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x24 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x25 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x26 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x27 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x30 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x31 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x32 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x33 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x34 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x35 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x36 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x37 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x40 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x41 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x42 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x43 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x44 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x45 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x46 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x47 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x50 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x51 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x52 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x53 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x54 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x55 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x56 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x57 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x60 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x61 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x62 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x63 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x64 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x65 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x66 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x67 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x70 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x71 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x72 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x73 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x74 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x75 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x76 },
		{ IS_ATKDEF = 0x67, IS_SPDSPC = 0x77 },
	}, -- I'm debugging the software with these dysgenic, lower-half-tier individual strengths. Gotta wipe 'em all out.
	color = {
		{ IS_ATKDEF = 0x2A, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0,  2, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0x3A, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8,  3, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0x6A, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0,  6, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0x7A, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8,  7, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0xAA, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 10, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0xBA, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 11, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0xEA, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color;
		{ IS_ATKDEF = 0xFA, IS_SPDSPC = 0xAA }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color;
	},
	flawlessdark        = { { IS_ATKDEF = 0xFF, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ):       70-power     dark-type hidden power;
	flawlessdragon      = { { IS_ATKDEF = 0xFE, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 14, 15, 15 ):       70-power   dragon-type hidden power;
	flawlessice         = { { IS_ATKDEF = 0xFD, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 13, 15, 15 ):       70-power      ice-type hidden power;
	flawlesspsychic     = { { IS_ATKDEF = 0xFC, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 12, 15, 15 ):       70-power  psychic-type hidden power;
	flawlesselectric    = { { IS_ATKDEF = 0xEF, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 14, 15, 15, 15 ):       70-power electric-type hidden power;
	flawlessgrass       = { { IS_ATKDEF = 0xEE, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 14, 14, 15, 15 ):       70-power    grass-type hidden power;
	flawlesswater       = { { IS_ATKDEF = 0xED, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 14, 13, 15, 15 ):       70-power    water-type hidden power;
	flawlessfire        = { { IS_ATKDEF = 0xEC, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 14, 12, 15, 15 ):       70-power     fire-type hidden power;
	flawlesssteel       = { { IS_ATKDEF = 0xDF, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 15, 15, 15 ):       70-power    steel-type hidden power;
	flawlessghost       = { { IS_ATKDEF = 0xDE, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 14, 15, 15 ):       70-power    ghost-type hidden power;
	flawlessbug         = { { IS_ATKDEF = 0xDD, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 13, 15, 15 ):       70-power      bug-type hidden power;
	flawlessrock        = { { IS_ATKDEF = 0xDC, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 12, 15, 15 ):       70-power     rock-type hidden power;
	flawlessground      = { { IS_ATKDEF = 0xCF, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 12, 15, 15, 15 ):       70-power   ground-type hidden power;
	flawlesspoison      = { { IS_ATKDEF = 0xCE, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 12, 14, 15, 15 ):       70-power   poison-type hidden power;
	flawlessflying      = { { IS_ATKDEF = 0xCD, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  7, 12, 13, 15, 15 ):       70-power   flying-type hidden power;
	flawlessfighting    = { { IS_ATKDEF = 0xCC, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  3, 12, 12, 15, 15 ):       70-power fighting-type hidden power;
	minmax              = { { IS_ATKDEF = 0x1F, IS_SPDSPC = 0xFF } }, -- (  HP, ATK, DEF, SPD, SPC ) = ( 15,  1, 15, 15, 15 ): minmax;
	colorflawlessgrass  = { { IS_ATKDEF = 0xEA, IS_SPDSPC = 0xAA } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color 70-power    grass-type hidden power;
	colorflawlessdragon = { { IS_ATKDEF = 0xFA, IS_SPDSPC = 0xAA } }, -- (  HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color 70-power   dragon-type hidden power;
}
presets_IS_usual.altcolor = presets_IS_usual.color
presets_IS_usual.shiny = presets_IS_usual.color
presets_IS_usual.flawless = {
	{ IS_ATKDEF = 0xFF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): 70-power dark-type hidden power;
	{ IS_ATKDEF = 0xFE, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 14, 15, 15 ): 70-power dragon-type hidden power;
	{ IS_ATKDEF = 0xFD, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 13, 15, 15 ): 70-power ice-type hidden power;
	{ IS_ATKDEF = 0xFC, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 15, 12, 15, 15 ): 70-power psychic-type hidden power;
	{ IS_ATKDEF = 0xEF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 14, 15, 15, 15 ): 70-power electric-type hidden power;
	{ IS_ATKDEF = 0xEE, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 14, 14, 15, 15 ): 70-power grass-type hidden power;
	{ IS_ATKDEF = 0xED, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 14, 13, 15, 15 ): 70-power water-type hidden power;
	{ IS_ATKDEF = 0xEC, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 14, 12, 15, 15 ): 70-power fire-type hidden power;
	{ IS_ATKDEF = 0xDF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 15, 15, 15 ): 70-power steel-type hidden power;
	{ IS_ATKDEF = 0xDE, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 14, 15, 15 ): 70-power ghost-type hidden power;
	{ IS_ATKDEF = 0xDD, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 13, 13, 15, 15 ): 70-power bug-type hidden power;
	{ IS_ATKDEF = 0xDC, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 11, 13, 12, 15, 15 ): 70-power rock-type hidden power;
	{ IS_ATKDEF = 0xCF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 12, 15, 15, 15 ): 70-power ground-type hidden power;
	{ IS_ATKDEF = 0xCE, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 12, 14, 15, 15 ): 70-power poison-type hidden power;
	{ IS_ATKDEF = 0xCD, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  7, 12, 13, 15, 15 ): 70-power flying-type hidden power;
	{ IS_ATKDEF = 0xCC, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = (  3, 12, 12, 15, 15 ): 70-power fighting-type hidden power;
}
presets_IS_usual.colorflawless = {
	{ IS_ATKDEF = 0xEA, IS_SPDSPC = 0xAA }, -- ( HP, ATK, DEF, SPD, SPC ) = (  0, 14, 10, 10, 10 ): color 70-power grass-type hidden power;
	{ IS_ATKDEF = 0xFA, IS_SPDSPC = 0xAA }, -- ( HP, ATK, DEF, SPD, SPC ) = (  8, 15, 10, 10, 10 ): color 70-power dragon-type hidden power;
}
IS_target_YellowMew = {
	{ IS_ATKDEF = 0xFF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): flawless;
}
IS_target_Gengar = {
	{ IS_ATKDEF = 0xFF, IS_SPDSPC = 0xFF }, -- ( HP, ATK, DEF, SPD, SPC ) = ( 15, 15, 15, 15, 15 ): flawless;
}
IS_target_MewtwoMoltres = {
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x01 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  0,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x11 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  1,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x21 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  2,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x31 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  3,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x41 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  4,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x51 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  5,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x61 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  6,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x71 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  7,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x81 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  8,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0x91 }, -- IS_ATKDEF = any; ( SPD, SPC ) = (  9,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xA1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 10,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xB1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 11,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xC1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 12,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xD1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 13,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xE1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 14,  1 );
	{ IS_ATKDEF =  nil, IS_SPDSPC = 0xF1 }, -- IS_ATKDEF = any; ( SPD, SPC ) = ( 15,  1 );
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

function read_IS( address_IS )
	return memory.readbyte( address_IS ), memory.readbyte( address_IS + 1 )
end

function print_IS( IS_ATKDEF, IS_SPDSPC )
	local n_ATK
	local n_DEF
	local n_SPD
	local n_SPC
	local n_HP

	if IS_ATKDEF == nil or IS_SPDSPC == nil then
		print(string.format("IS: %s %s;",
			IS_ATKDEF ~= nil and string.format( "0x%02X", IS_ATKDEF ) or "any",
			IS_SPDSPC ~= nil and string.format( "0x%02X", IS_SPDSPC ) or "any" ))
		return
	end
	n_ATK = shift_right(
		bitwiseand( IS_ATKDEF, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
	n_DEF = bitwiseand( IS_ATKDEF, shift_left( 1, 4 ) - 1 )
	n_SPD = shift_right(
		bitwiseand( IS_SPDSPC, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
	n_SPC = bitwiseand( IS_SPDSPC, shift_left( 1, 4 ) - 1 )
	n_HP = shift_left( bitwiseand( n_ATK, 0x01 ), 3 )
		 + shift_left( bitwiseand( n_DEF, 0x01 ), 2 )
		 + shift_left( bitwiseand( n_SPD, 0x01 ), 1 )
		 + bitwiseand( n_SPC, 0x01 )
	print(string.format("( HP, ATK, DEF, SPD, SPC ) = ( %d, %d, %d, %d, %d )", n_HP, n_ATK, n_DEF, n_SPD, n_SPC ))
	print(string.format("IS: 0x%02X 0x%02X;", IS_ATKDEF, IS_SPDSPC ))
end

function print_target_IS_list()
	local n_spread
	local n_spreads
	local spread_IS
	local string_line
	local string_HP
	local n_ATK
	local n_DEF
	local n_SPD
	local n_SPC

	n_spreads = table.getn( list_IS_target )
	print(string.format("%d target IS spreads:", n_spreads ))
	print(string.format("\t( ATKDEF, SPDSPC ) = (  HP, ATK, DEF, SPD, SPC )"))
	print(string.format("\t    n_16      n_16          n_10 n_10 n_10 n_10 n_10")) --print(string.format("\t( n_16, n_16 ) = ( n_10, n_10, n_10, n_10, n_10 )"))
	--print(string.format("00000\t( n_ATKDEF_16, n_SPDSPC_16 ) = (  n_HP, n_ATK, n_DEF, n_SPD, n_SPC )")) --print(string.format("00000\t( n_ATKDEF_16, n_SPDSPC_16 ) = (  n_HP_10, n_ATK_10, n_DEF_10, n_SPD_10, n_SPC_10 )")) --print(string.format("00000\t( n_16, n_16 ) = (  HP, ATK, DEF, SPD, SPC )"))
	for n_spread = 1, n_spreads do
		spread_IS = list_IS_target[ n_spread ]
		if spread_IS.IS_ATKDEF ~= nil then
			n_ATK = shift_right( bitwiseand( spread_IS.IS_ATKDEF, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
			n_DEF = bitwiseand( spread_IS.IS_ATKDEF, shift_left( 1, 4 ) - 1 )
		else
			n_ATK = nil
			n_DEF = nil
		end
		if spread_IS.IS_SPDSPC ~= nil then
			n_SPD = shift_right( bitwiseand( spread_IS.IS_SPDSPC, shift_left( 1, 8 ) - shift_left( 1, 4 ) ), 4 )
			n_SPC = bitwiseand( spread_IS.IS_SPDSPC, shift_left( 1, 4 ) - 1 )
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
			spread_IS.IS_ATKDEF ~= nil and string.format("0x%02X", spread_IS.IS_ATKDEF ) or "any",
			spread_IS.IS_SPDSPC ~= nil and string.format("0x%02X", spread_IS.IS_SPDSPC ) or "any",
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

function accept_IS( IS_ATKDEF, IS_SPDSPC )
	local spread_target

	for n_spread = 1, table.getn( list_IS_target ) do
		spread_target = list_IS_target[ n_spread ]
		if ( spread_target.IS_ATKDEF == nil or IS_ATKDEF == spread_target.IS_ATKDEF )
		and ( spread_target.IS_SPDSPC == nil or IS_SPDSPC == spread_target.IS_SPDSPC ) then
			return true
		end
	end
	return false
end

function add_IS( list_IS, list_IS_additional )
	for n_IS = 1, table.getn( list_IS_additional ) do
		list_IS[ table.getn( list_IS ) + 1 ] = {
			IS_ATKDEF = list_IS_additional[ n_IS ].IS_ATKDEF,
			IS_SPDSPC = list_IS_additional[ n_IS ].IS_SPDSPC,
		}
	end
end

function get_unown_letter( IS_ATKDEF, IS_SPDSPC )
	local n_ATK_bits
	local n_DEF_bits
	local n_SPD_bits
	local n_SPC_bits
	local n_form
	local letters

	letters = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" }
	n_ATK_bits = shift_right( bitwiseand( IS_ATKDEF, 0x60 ), 5 )
	n_DEF_bits = shift_right( bitwiseand( IS_ATKDEF, 0x06 ), 1 )
	n_SPD_bits = shift_right( bitwiseand( IS_SPDSPC, 0x60 ), 5 )
	n_SPC_bits = shift_right( bitwiseand( IS_SPDSPC, 0x06 ), 1 )
	n_form = math.floor( ( n_ATK_bits * 0x40 + n_DEF_bits * 0x10 + n_SPD_bits * 0x04 + n_SPC_bits ) / 10 ) + 1
	return letters[ n_form ]
end

function set_target_IS_from_values()
	local spread

	list_IS_target = {}
	if IS_ATKDEF ~= nil and IS_SPDSPC ~= nil then
		spread = {
			IS_ATKDEF = IS_ATKDEF,
			IS_SPDSPC = IS_SPDSPC,
		}
		list_IS_target[ table.getn( list_IS_target ) + 1 ] = spread
	else
		spread = {
			IS_ATKDEF = shift_left( IS_ATK, 4 ) + IS_DEF,
			IS_SPDSPC = shift_left( IS_SPD, 4 ) + IS_SPC,
		}
		list_IS_target[ table.getn( list_IS_target ) + 1 ] = spread
	end
	return true
end

function set_target_IS_from_preset()
	local preset

	list_IS_target = {}
	for n_preset = 1, table.getn( IS_target ) do
		preset = IS_target[ n_preset ]
		if presets_IS_usual[ preset ] ~= nil then
			add_IS( list_IS_target, presets_IS_usual[ preset ] )
		else
			stop("Don't know that target preset.\ntarget preset: " .. tostring( preset ) .. ";")
		end
	end
	if is_empty( list_IS_target ) then
		return false
	end
	return true
end

function set_target_IS_list()
	if not is_empty( IS_target ) then
		if set_target_IS_from_preset() then
			return
		end
	else
		if set_target_IS_from_values() then
			return
		end
	end
	stop("No IS target has been set.")
end

function build_target_IS_list( list_IS_target_special )
	if are_species_target_IS_set() then
		set_target_species_IS_list()
	else
		set_target_IS_list()
	end
	if list_IS_target_special ~= nil and not is_empty( list_IS_target_special ) then
		list_IS_target = {}
		add_IS( list_IS_target, list_IS_target_special )
	end
	print_target_IS_list() --print(string.format("target IS spreads: %d;", table.getn( list_IS_target ) ))
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
			address_IDNo = 0xD48C
			address_party = 0xDC9D
			address_mon_wild = 0xD23D
			address_egg_IS = 0xDF06
			address_status_daycare = 0xDE89
			address_n_step_potentialegg = 0xDEB7
			address_step_count = 0xDC39
			return
		elseif region_name == "US" or region_name == "EU" then
			address_IDNo = 0xD47B
			address_party = 0xDCD7
			address_mon_wild = 0xD20C
			address_egg_IS = 0xDF90
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
			address_IDNo = 0xD1B3
			address_party = 0xD9E8
			address_mon_wild = 0xD0E7
			address_egg_IS = 0xDC51
			address_status_daycare = 0xDBD4
			address_n_step_potentialegg = 0xDC02
			address_step_count = 0xD984
			return
		elseif region_name == "KR" then
			address_IDNo = 0xD25C
			address_party = 0xDB1F
			address_mon_wild = 0xD1B2
			address_egg_IS = 0xDDD8
			address_status_daycare = 0xDD3D
			address_n_step_potentialegg = 0xDD75
			address_step_count = 0xDAED
			return
		elseif region_name == "US" or region_name == "EU" then
			address_IDNo = 0xD1A1
			address_party = 0xDA22
			address_mon_wild = 0xD0F5
			address_egg_IS = 0xDCDB
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
		address_IDNo = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_G_JP, word_revision ) then
		version_name = "Green"
		region_name = "JP"
		address_IDNo = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_JP, word_revision ) then
		version_name = "Blue"
		region_name = "JP"
		address_IDNo = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_JP, word_revision ) then
		version_name = "Yellow"
		region_name = "JP"
		address_IDNo = 0xD2D8
		address_party = 0xD123
		address_mon_wild = 0xCFD8
		address_flag_capture = address_mon_wild + 0x109
		address_step_count = address_party - 0x23
		flag_Yellow = true
		return
	elseif belongsto_table( words_revision_R_US, word_revision ) then
		version_name = "Red"
		region_name = "US"
		address_IDNo = 0xD359
		address_party = 0xD163
		address_mon_wild = 0xCFF1
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_US, word_revision ) then
		version_name = "Blue"
		region_name = "US"
		address_IDNo = 0xD359
		address_party = 0xD163
		address_mon_wild = 0xCFF1
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_US, word_revision ) then
		version_name = "Yellow"
		region_name = "US"
		address_IDNo = 0xD358
		address_party = 0xD162
		address_mon_wild = 0xCFF0
		address_flag_capture = address_party - 0x47
		address_step_count = address_party - 0x28
		flag_Yellow = true
		return
	elseif belongsto_table( words_revision_R_EU, word_revision ) then
		version_name = "Red"
		region_name = "EU"
		address_IDNo = 0xD35E
		address_party = 0xD168
		address_mon_wild = 0xCFF6
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_B_EU, word_revision ) then
		version_name = "Blue"
		region_name = "EU"
		address_IDNo = 0xD35E
		address_party = 0xD168
		address_mon_wild = 0xCFF6
		address_flag_capture = address_party - 0x47
		flag_Yellow = false
		return
	elseif belongsto_table( words_revision_Y_EU, word_revision ) then
		version_name = "Yellow"
		region_name = "EU"
		address_IDNo = 0xD35D
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

function are_species_target_IS_set()
	if list_species_IS_target ~= nil and table.getn( list_species_IS_target ) > 0 then
		return true
	end
	return false
end

function set_target_species_IS_list()
	list_IS_target = {}
	add_IS( list_IS_target, list_species_IS_target )
	if is_empty( list_IS_target ) then
		stop("No IS target has been set.")
	end
end

function accept_IS_from_target( target, IS_ATKDEF, IS_SPDSPC )
	if target.IS_ATKDEF ~= nil and target.IS_ATKDEF ~= IS_ATKDEF then
		return false
	end
	if target.IS_SPDSPC ~= nil and target.IS_SPDSPC ~= IS_SPDSPC then
		return false
	end
	return true
end

function accept_target_IS( IS_ATKDEF, IS_SPDSPC )
	local target

	if not are_species_target_IS_set() then
		return accept_IS( IS_ATKDEF, IS_SPDSPC )
	end
	for n_target = 1, table.getn( list_species_IS_target ) do
		target = list_species_IS_target[ n_target ]
		if accept_IS_from_target( target, IS_ATKDEF, IS_SPDSPC ) then
			return true
		end
	end
	return false
end

function accept_target_species( species )
	local target

	if not are_species_target_IS_set() then
		return accept_species( species )
	end
	for n_target = 1, table.getn( list_species_IS_target ) do
		target = list_species_IS_target[ n_target ]
		if target.species == nil or target.species == -1 or target.species == species then
			return true
		end
	end
	return false
end

function accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC )
	local target

	if not are_species_target_IS_set() then
		if accept_species( species ) and accept_IS( IS_ATKDEF, IS_SPDSPC ) then
			return true
		end
		return false
	end
	for n_target = 1, table.getn( list_species_IS_target ) do
		target = list_species_IS_target[ n_target ]
		if ( target.species == nil or target.species == -1 or target.species == species )
		and accept_IS_from_target( target, IS_ATKDEF, IS_SPDSPC ) then
			return true
		end
	end
	return false
end

function accept_IDNo( IDNo )
	if IDNo_target ~= 0 and IDNo_target == IDNo then
		return true
	end
	if not is_empty( list_IDNo_target ) and belongsto_table( list_IDNo_target, IDNo ) then
		return true
	end
	if game == "RGBY" and IDNo_target == 0 and is_empty( list_IDNo_target ) then
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
	return math.floor( status_daycare / 0x40 ) - 2 * math.floor( status_daycare / 0x80 ) == 1 -- The bit 0x40 (bit 6 )'s set: an egg's been readied.
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
	print(string.format("Hatched the egg, species %d ( 0x%02X ).", memory.readbyte( party_mon_address ), memory.readbyte( party_mon_address ) ))
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
		friendship_target = 147 -- Buddying up with the starter pikachu only serves to get Cerulean City's girl to gift her bulbasaur to you. That requires a friendship level of 147. This friendship level starts at 90. You may or may not reach it before Cerulean City. Nothing else from the game aside from the starter pikachu's mood and reactions depends on this. The script can stop at 147.
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
				if memory.readbyte( address_mon + 0x0C ) == memory.readbyte( address_IDNo )
				and memory.readbyte( address_mon + 0x0D ) == memory.readbyte( address_IDNo + 1 )
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
	local IDNo

	if game == "RGBY" then
		state = savestate.create()
		savestate.save( state )
		while true do
			emu.frameadvance()
			savestate.save( state )
			press( { A = true }, 32 )
			IDNo = reverse_word( memory.readword( address_IDNo ) )
			print(string.format("ID No.: %d;", IDNo ))
			if accept_IDNo( IDNo ) then
				print(string.format("Got the ID No. %d.", IDNo ))
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
			IDNo = reverse_word( memory.readword( address_IDNo ) )
			print(string.format("ID No.: %d;", IDNo ))
			if accept_IDNo( IDNo ) then
				print(string.format("Got the ID No. %d.", IDNo ))
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
	local address_IS
	local IS_ATKDEF
	local IS_SPDSPC
	local n_i

	set_target_IS_list()
	print_target_IS_list() --print(string.format("target IS spreads: %d;", table.getn( list_IS_target ) ))
	if game == "RGBY" then
		n_mon_party = memory.readbyte( address_party ) - 1
		address_IS = address_party + 0x23 + n_mon_party * 0x2C
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
			IS_ATKDEF, IS_SPDSPC = read_IS( address_IS )
			if accept_IS( IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.load( state )
		end
	elseif game == "GSC" then
		n_mon_party = memory.readbyte( address_party )
		address_IS = address_party + 0x1D + n_mon_party * 0x30
		state = savestate.create()
		while true do
			savestate.save( state )
			while memory.readbyte( address_party ) == n_mon_party do
				joypad.set( 1, { A = true } )
				emu.frameadvance()
			end
			emu.frameadvance()
			IS_ATKDEF, IS_SPDSPC = read_IS( address_IS )
			if accept_IS( IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.load( state )
			emu.frameadvance()
		end
	else
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end
end

function catch()
	local state

	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, n_frame_delay )
		if game == "RGBY" and memory.readbyte( address_flag_capture ) ~= 0 or game == "GSC" and memory.readword( address_flag_capture ) ~= 0 then
			print("Caught the 'mon.")
			savestate.save( state )
			return
		elseif game ~= "GSC" and game ~= "RGBY" then
			stop( string.format("Don't know the version %4x.", version_byte ) )
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
	local IS_ATKDEF
	local IS_SPDSPC

	set_target_IS_list()
	print_target_IS_list() --print(string.format("target IS spreads: %d;", table.getn( list_IS_target ) ))
	state = savestate.create()
	while true do
		savestate.save( state )
		press( { A = true }, 105 )
		IS_ATKDEF, IS_SPDSPC = read_IS( address_egg_IS )
		if accept_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local address_flag_IS
	local address_species
	local list_species_RGBY

	build_target_IS_list()
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
			IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
			if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
				print("Got a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			if not accept_target_species( species ) then
				print("Rejecting the species.")
				print( string.format("species: %d, 0x%02X;", species, species ) )
				print( string.format("RGBY species index: %d, 0x%02X;", species_RGBY, species_RGBY ) )
				print_IS( IS_ATKDEF, IS_SPDSPC )
			else
				print("Rejecting the spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
			end
			savestate.load( state )
		end
	elseif game == "GSC" then
		address_flag_IS = address_mon_wild + 0x21
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
				while memory.readbyte( address_flag_IS ) ~= 0x01 do
					emu.frameadvance()
				end
				IS_ATKDEF = memory.readbyte( address_mon_wild )
				IS_SPDSPC = memory.readbyte( address_mon_wild + 1 )
				print(string.format("ATK: %02d;\tDEF: %02d;\tSPE: %02d;\tSPC: %02d;", math.floor( IS_ATKDEF / 16 ), IS_ATKDEF % 16, math.floor( IS_SPDSPC / 16 ), IS_SPDSPC % 16 ))
				if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
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
	local IS_ATKDEF
	local IS_SPDSPC
	local address_flag_fish
	local address_flag_IS
	local address_species
	local n_frame
	local list_species_RGBY

	build_target_IS_list()
	state = savestate.create()
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
						IS_ATKDEF = 0
						IS_SPDSPC = 0
						while memory.readbyte( 0xC027 ) ~= 0xF0 do
							joypad.set( 1, { A = true } )
							emu.frameadvance()
							IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
						end
						IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
						if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
							print("Found a target spread.")
							print_IS( IS_ATKDEF, IS_SPDSPC )
							savestate.save( state )
							return
						end
						print("Rejecting the spread.")
						print_IS( IS_ATKDEF, IS_SPDSPC )
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
		address_flag_IS = address_mon_wild + 0x21
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
					print(string.format("Found species %d.", species ))
					advance( 300 )
					break
				end
			end
			emu.frameadvance()
		end
		while true do
			savestate.save( state )
			joypad.set( 1, { A = true } )
			while memory.readbyte( address_flag_IS ) ~= 0x01 do
				emu.frameadvance()
			end
			emu.frameadvance()
			IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
			if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local address_flag_IS
	local address_flag_battle
	local address_species

	build_target_IS_list()
	address_flag_IS = address_mon_wild + 0x21
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
			while memory.readbyte( address_flag_IS ) ~= 0x01 do
				emu.frameadvance()
			end
			species = memory.readbyte( address_species )
			if accept_target_species( species ) then
				IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
				if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
					print("Found a target spread.")
					print_IS( IS_ATKDEF, IS_SPDSPC )
					savestate.save( state )
					return
				end
				print("Rejecting the spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local address_species
	local address_flag

	build_target_IS_list()
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
				IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
				if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
					print("Found a target spread.")
					print_IS( IS_ATKDEF, IS_SPDSPC )
					savestate.save( state )
					return
				end
				print("Rejecting the spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.load( state )
			else
				print(string.format("Rejecting species %d.", species ))
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
	local address_IS
	local IS_ATKDEF
	local IS_SPDSPC
	local IS_ATKDEF_previous
	local IS_SPDSPC_previous

	set_target_IS_list()
	print_target_IS_list() --print(string.format("target IS spreads: %d;", table.getn( list_IS_target ) ))
	n_mon_party = memory.readbyte( address_party ) - 1
	address_IS = address_party + 0x23 + n_mon_party * 0x2C
	state = savestate.create()
	while true do
		emu.frameadvance()
		IS_ATKDEF_previous, IS_SPDSPC_previous = read_IS( address_IS )
		savestate.save( state )
		press( { A = true }, 1 )
		IS_ATKDEF, IS_SPDSPC = read_IS( address_IS )
		while IS_ATKDEF == IS_ATKDEF_previous and IS_SPDSPC == IS_SPDSPC_previous do
			emu.frameadvance()
			IS_ATKDEF, IS_SPDSPC = read_IS( address_IS )
		end
		if accept_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
		savestate.load( state )
	end
end

function battle()
	local state
	local IS_ATKDEF
	local IS_SPDSPC
	local address_flag_IS
	local n_i

	build_target_IS_list()
	state = savestate.create()
	if game == "RGBY" then
		savestate.save( state )
		while true do
			joypad.set( 1, { A = true } )
			emu.frameadvance()
			IS_ATKDEF = 0
			IS_SPDSPC = 0
			savestate.save( state )
			while memory.readbyte( 0xC027 ) ~= 0xF0 do
				joypad.set( 1, { A = false } )
				emu.frameadvance()
				IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
			end
			if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.load( state )
		end
	elseif game == "GSC" then
		address_flag_IS = address_mon_wild + 0x21
		while true do
			savestate.save( state )
			while memory.readbyte( address_flag_IS ) ~= 0x01 do
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
			IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
			if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
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
				print(string.format("Found the item 0x%02X on species %d.", item, species ))
				savestate.save( state )
				return
			end
			print(string.format("Rejected species %d with the item 0x%02X.", species, item ))
			savestate.load( state )
		else
			print(string.format("Rejecting species %d.", species ))
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
	local IS_ATKDEF
	local IS_SPDSPC
	local letter
	local address_species
	local address_flag_IS
	local address_flag_battle
	local i

	build_target_IS_list()
	address_species = address_mon_wild - 0x08
	address_flag_IS = address_mon_wild + 0x21
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
		while memory.readbyte( address_flag_IS ) ~= 0x01 do
			emu.frameadvance()
		end
		emu.frameadvance()
		IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
		letter = get_unown_letter( IS_ATKDEF, IS_SPDSPC )
		print("unown letter: " .. letter .. ";")
		if letter == letter_unown_target then
			if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
				print("Found a target spread.")
				print_IS( IS_ATKDEF, IS_SPDSPC )
				savestate.save( state )
				return
			end
			print("Rejecting the spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local name_species
	local address_species_roamer
	local address_flag_IS
	local address_flag_battle
	local n_i

	build_target_IS_list()
	address_species_roamer = address_mon_wild - 0x08
	address_flag_IS = address_mon_wild + 0x21
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
		while memory.readbyte( address_flag_IS ) ~= 0x01 do
			emu.frameadvance()
		end
		species = memory.readbyte( address_species_roamer )
		if species ~= 243 and species ~= 244 and species ~= 245 or not accept_target_species( species ) then
			if species ~= 0 then
				print(string.format("Rejecting species %d.", species ))
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
				while memory.readbyte( address_flag_IS ) ~= 0x01 do
					emu.frameadvance()
				end
				species = memory.readbyte( address_species_roamer )
				if species ~= 243 and species ~= 244 and species ~= 245 or not accept_target_species( species ) then
					if species ~= 0 then
						print(string.format("Rejecting species %d.", species ))
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
					IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
					if accept_target_species_IS( species, IS_ATKDEF, IS_SPDSPC ) then
						print("Found a target spread.")
						print(string.format("species %d: %s;", species, name_species ))
						print_IS( IS_ATKDEF, IS_SPDSPC )
						savestate.save( state )
						return
					end
					print("Rejecting the spread.")
					print(string.format("species %d: %s;", species, name_species ))
					print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local address_flag_IS

	build_target_IS_list()
	address_flag_IS = address_mon_wild + 0x21
	state = savestate.create()
	while true do
		savestate.save( state )
		while memory.readbyte( address_flag_IS ) ~= 0x01 do
			press( { up = true }, 10 )
			emu.frameadvance()
		end
		IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
		if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
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
	local IS_ATKDEF
	local IS_SPDSPC
	local counter

	build_target_IS_list()
	counter = 0
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { B = true }, 255 )
		IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
		counter = counter + 1
		if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print(string.format("counter: %d;", counter ))
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
		savestate.load( state )
	end
end

function yellowmew() -- Preferably catch level-5 flawless mews [for this growl twice at the foe with your starter pikachu] with ID No. 22796 as owner ゲーフリ in Japanese games for a Game Freak mew or GF in European and American games for an equivalent Nintendo UK's Pokémon Festival mew.
	if version_name ~= "Yellow" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local IS_ATKDEF
	local IS_SPDSPC
	local address_IS

	build_target_IS_list( IS_target_YellowMew )
	address_IS = 0xCFF5
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { A = true }, 250 )
		IS_ATKDEF, IS_SPDSPC = read_IS( address_IS )
		if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
		savestate.load( state )
	end
end

function gengar()
	if game ~= "RGBY" then
		stop(string.format("Don't know the version %4x.", version_byte ))
	end

	local state
	local IS_ATKDEF
	local IS_SPDSPC
	local counter

	build_target_IS_list( IS_target_Gengar )
	counter = 0
	state = savestate.create()
	savestate.save( state )
	while true do
		emu.frameadvance()
		savestate.save( state )
		press( { up = true }, 250 )
		IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
		counter = counter + 1
		if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print(string.format("counter: %d;", counter ))
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
		savestate.load( state )
	end
end

function mewtwomoltres()
	if game ~= "RGBY" then
		stop( string.format("Don't know the version %4x.", version_byte ) )
	end

	local state
	local IS_ATKDEF
	local IS_SPDSPC

	build_target_IS_list( IS_target_MewtwoMoltres )
	state = savestate.create()
	savestate.save( state )
	while true do
		joypad.set( 1, { A = true } )
		emu.frameadvance()
		IS_ATKDEF = 0
		IS_SPDSPC = 0
		savestate.save( state )
		while memory.readbyte( 0xC027 ) ~= 0xF0 do
			joypad.set( 1, { A = false } )
			emu.frameadvance()
			IS_ATKDEF, IS_SPDSPC = read_IS( address_mon_wild )
		end
		if accept_target_IS( IS_ATKDEF, IS_SPDSPC ) then
			print("Found a target spread.")
			print_IS( IS_ATKDEF, IS_SPDSPC )
			savestate.save( state )
			return
		end
		print("Rejecting the spread.")
		print_IS( IS_ATKDEF, IS_SPDSPC )
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
		gengar() -- works with RGB.
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