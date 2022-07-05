local targets = {
	{ species = 235, atkdef = 0xFF, spespc = 0xFF, },
	{ species = 90, atkdef = 0xFF, spespc = 0xFF, }, { species = 91, atkdef = 0xFF, spespc = 0xFF, },
	{
		species = 127,
		atkdef = 0xDD,
		spespc = 0xFF,
	},
}
local atkdef
local spespc
local species
local enemy_addr
local version = memory.readbyte( 0x141 )
local region = memory.readbyte( 0x142 )
local name_file = debug.getinfo( 1, "S")
local filename = name_file.source:match("@(.+)$")
local direction = 0 -- 0: right; 1: up; 3: left; 4: down; -- Support hunting in the minefield.

print(string.format("%s ran.", filename)) --"gscwildbot.lua"))
if version == 0x54 then
	if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
		print("EU C ROM ID'd.")
		enemy_addr = 0xD20C
	elseif region == 0x45 then
		print("US C ROM ID'd.")
		enemy_addr = 0xD20C
	elseif region == 0x4A then
		print("JP C ROM ID'd.")
		enemy_addr = 0xD23D
	end
elseif version == 0x55 or version == 0x58 then
	if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
		print("EU GS ROM ID'd.")
		enemy_addr = 0xD0F5
	elseif region == 0x45 then
		print("US GS ROM ID'd.")
		enemy_addr = 0xD0F5
	elseif region == 0x4A then
		print("JP GS ROM ID'd.")
		enemy_addr = 0xD0E7
	elseif region == 0x4B then
		print("KN GS ROM ID'd.")
		enemy_addr = 0xD1B2
	end
else
	print(string.format("ROM not ID'd, code: %4x.", version ))
	print("Script stopped.")
	return
end

local dv_flag_addr = enemy_addr + 0x21
local species_addr = enemy_addr + 0x22

local function species_is_wanted( species )
	for _, target in ipairs( targets ) do
		if target.species == -1 or target.species == species then
			return true
		end
	end
	return false
end
function shiny( species, atkdef , spespc )
	for _, target in ipairs( targets ) do
		local species_ok = target.species == -1 or target.species == species
		local atkdef_ok = target.atkdef == nil or target.atkdef == atkdef
		local spespc_ok = target.spespc == nil or target.spespc == spespc
		if species_ok and atkdef_ok and spespc_ok then
			return true
		end
	end
	return false
end -- fighting-type 70-power hidden power flawless scyther

local state = savestate.create()
while true do
	savestate.save( state )
	i = 0
	if direction == 0 or direction ~= 1 and direction ~= 3 and direction ~= 4 then
		while memory.readbyte( species_addr ) == 0 do
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
	if direction == 1 then
		while memory.readbyte( species_addr ) == 0 do
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
	if direction == 3 then
		while memory.readbyte( species_addr ) == 0 do
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
	if direction == 4 then
		while memory.readbyte( species_addr ) == 0 do
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
	-- I couldn't've come up with a shittier kludge quite frankly.
	species = memory.readbyte( species_addr )
	print(string.format("species: %d", species ))
	if not species_is_wanted( species ) then
		savestate.load( state )
	else
		while memory.readbyte( dv_flag_addr ) ~= 0x01 do
			emu.frameadvance()
		end
		atkdef = memory.readbyte( enemy_addr )
		spespc = memory.readbyte( enemy_addr + 1 )
		print(string.format("ATK: %02d;\tDEF: %02d;\tSPE: %02d;\tSPC: %02d;", math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16 ))
		if shiny( species, atkdef, spespc ) then
			print("Targeted Pokemon DV frame hit. Script stopped.")
			savestate.save( state )
			vba.pause()
			break
		else
			savestate.load( state )
		end
	end
	emu.frameadvance()
end
print(os.date("%c"))

--	gscwildbot2.lua
--	A bot for the manipulation of the PRNG for ISs of stationary 'mons in Pocket Monsters Gold & Silver and Crystal Version.
--
--	`wwwwwwzx`
--	https://github.com/wwwwwwzx
--
--	Karl V. P. B. `kvpb`	AKA Karl Thomas George West `ktgw`
--	+33 A BB BB BB BB	+1 (DDD) DDD-DDDD
--	local-part@domain	local-part@domain
--	kvpb.fr					
--	https://x.com/ktgwkvpb	
--	https://github.com/kvpb	