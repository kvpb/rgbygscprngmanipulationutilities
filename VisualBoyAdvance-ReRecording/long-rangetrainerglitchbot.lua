local mbyte = memory.readbyte
local mword = memory.readword
local version = mword( 0x14E )
local base_address
local atkdef
local spespc
local name_file = debug.getinfo( 1, "S")
local filename = name_file.source:match("@(.+)$")

print(string.format("%s ran.", filename)) --"long-rangetrainerglitch.lua"))
if version == 0xC1A2 or version == 0x47F5 or version == 0x36DC or version == 0xD5DD or version == 0x299C then
	print("JP RGBY ROM ID'd.")
	base_address = 0xCFD8
elseif version == 0xE691 or version == 0xA9D then
	print("US RB ROM ID'd.")
	base_address = 0xCFF1
elseif version == 0x7C04 then
	print("US Y ROM ID'd.")
	base_address = 0xCFF0
elseif version == 0xD289 or version == 0x9C5E or version == 0xDC5C or version == 0xBC2E or version == 0x4A38 or version == 0xD714 or version == 0xFC7A or version == 0xA456 then
	print("EU RB ROM ID'd.")
	base_address = 0xCFF6
elseif version == 0x8F4E or version == 0xFB66 or version == 0x3756 or version == 0xC1B7 then
	print("EU Y ROM ID'd.")
	base_address = 0xCFF5
else
	print(string.format("ROM not identified, code: %4x.", version ))
	print("Script stopped.")
	return
end

function shiny( atkdef, spespc )
--	if spespc == 0xAA then                                                                                                                                       -- rare
--		if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then -- rare
--	if spespc == 0xFF then         -- flawless
--		if atkdef == 0xFF then -- flawless
	if spespc == 0xEF then         -- near-flawless -- And not 0xFF for mons with an encounter rate of 25[, 20, 15, 10, 8, 5 or even 3 so less than 30]. https://pastebin.com/iBT64Pkq https://www.smogon.com/ingame/guides/rby_gsc_stats#rbys-illegal-dvs https://gamefaqs.gamespot.com/gameboy/367023-pokemon-red-version/faqs/64175/encounter-tables https://pastebin.com/C8xqV670 https://pastebin.com/szC2vDDk https://pastebin.com/GgZQ9vxu http://pastebin.com/Dnw1PE2U https://imgur.com/5Zqf5X2 Actually also for mons with encounter rates of 5, 8, 10, 15, 20 and 30. red 5.txt red 8.txt red 10.txt red 15.txt red 20.txt red 30.txt yellow 5.txt yellow 8.txt yellow 10.txt yellow 15.txt yellow 20.txt yellow 30.txt
		if atkdef == 0xFF then -- near-flawless
--	if spespc == 0xF7 then         -- max speed near-flawless
--		if atkdef == 0xFF then -- max speed near-flawless
--	if spespc == 0xFF then         -- min attack near-flawless
--		if atkdef == 0x0F then -- min attack near-flawless
			return true
		else
			return false
		end
	else
		return false
	end
end

local c = 0
state = savestate.create()
savestate.save( state )

while true do
	emu.frameadvance()
	savestate.save( state )
	i = 0
	while i < 255 do
		joypad.set( 1, { B = true } )
		vba.frameadvance()
		i = i + 1
	end
	atkdef = mbyte( base_address )
	spespc = mbyte( base_address + 1 )
	c = c + 1
	if shiny( atkdef, spespc ) then
		print("Targeted color, flawless color, near-flawless color, flawless or near-flawless 'mon IS spread frame hit. Script stopped.") -- https://bulbapedia.bulbagarden.net/wiki/Shiny#Terminology https://bulbapedia.bulbagarden.net/wiki/Stats_judge#Quotes
		print("Counter:", c)
		print(string.format("attack: %d;", math.floor( atkdef / 16 ) ))
		print(string.format("defense: %d;", atkdef % 16 ))
		print(string.format("speed: %d;", math.floor( spespc / 16 ) ))
		print(string.format("special: %d;", spespc % 16 ))
--		attackdv = bitand( atkdef, 1 << 4 - 1 ) --attackdv = ( atkdef & ( 1 << 4 - 1 ) )
--		defensedv = bitand( atkdef, 1 << 8 - 1 ) --defensedv = ( atkdef & ( 1 << 8 - 1 ) )
--		speeddv = bitand( spespc, 1 << 4 - 1 ) --speeddv = ( spespc & ( 1 << 4 - 1 ) )
--		specialdv = bitand( spespc, 1 << 8 - 1 ) --specialdv = ( spespc & ( 1 << 8 - 1 ) )
--		hpdv = attackdv * math.pow( 2, 3 ) + defensedv * math.pow( 2, 2 ) + speeddv * math.pow( 2, 1 ) + specialdv * math.pow( 2, 0 ) --hpdv = attack * 2^3 + defensedv * 2^2 + speeddv * 2^1 + specialdv * 2^0 --( attack .. defensedv .. speeddv .. specialdv )
--		print(string.format("attack: %d; defense: %d; speed: %d; special: %d; hit points: %d;", math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16, hp )) --print(string.format("attack: %d; defense: %d; speed: %d; special: %d; hit points: %d;", math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16, hp ))
		savestate.save( state )
		vba.pause()
		break
	else
		print(string.format( math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16 ) )
		savestate.load( state )
	end
end
emu.pause()
print(os.date("%c"))