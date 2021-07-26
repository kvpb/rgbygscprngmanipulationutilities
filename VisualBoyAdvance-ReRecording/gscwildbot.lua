local desired_species = -1 --129 --130 --95 --92 -- The pokedex number of the targeted pokemon species or -1 for any species or encounter slot.
--local desired_species = 92 -- Gastly
--local desired_species = 123 -- Scyther
--local desired_species = 127 -- Pinsir
--local desired_species = 130 -- Gyarados
--local desired_species = 132 -- Ditto
--local desired_species = 183 -- Marill
--local desired_species = 246 -- Larvitar
local atkdef
local spespc
local species
local enemy_addr
local version = memory.readbyte( 0x141 )
local region = memory.readbyte( 0x142 )
local name_file = debug.getinfo( 1, "S")
local filename = name_file.source:match("@(.+)$")
local direction = 0 -- 0: right; 1: up; 3: left; 4: down; -- Support hunting in the minefield.

print(string.format("%s ran.", filename)) --"gscwild.lua"))
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

function shiny( atkdef, spespc )
	if spespc == 0xAA then -- rare
--		if atkdef == 0xFA then -- 'flawless', dragon-type hidden power flawless shiny --if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then -- rare
		if atkdef == 0xEA then -- grass-type hidden power 'flawless' shiny
--	if spespc == 0xFF then -- flawless
--		if atkdef == 0xFF then -- flawless
--		if atkdef == 0xEE then -- grass-type hidden power flawless
--		if atkdef == 0xED then -- water-type hidden power flawless
--		if atkdef == 0xDC then -- rock-type hidden power flawless
--		if atkdef == 0xFD then -- ice-type hidden power flawless
			return true
		end
	end
	return false
end
--function shiny(atkdef,spespc) --function colorhighestDV(ATKDEF, SPESPC) --function altcolorflawless
--    if spespc == 0xAA then     -- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
--        if atkdef == 0xFA then -- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
--            return true
--        end
--    end
--    return false
--end
--function shiny(atkdef,spespc) --function maxDV(ATKDEF, SPESPC) --function flawless
--    if spespc == 0xFF then     -- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
--        if atkdef == 0xFF then -- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
--            return true
--        end
--    end
--    return false
--end
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xCF then
--            return true
--        end
--    end
--    return false
--end -- Ground-type 70-power Hidden Power Flawless Gyarados
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xDD then
--            return true
--        end
--    end
--    return false
--end -- Bug- or Fighting-type 70-power Hidden Power Flawless Scyther
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xDD then
--            return true
--        end
--    end
--    return false
--end -- Bug-type 70-power Hidden Power Flawless Pinsir

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
	if desired_species > 0 and desired_species ~= species then
		savestate.load( state )
	else
		while memory.readbyte( dv_flag_addr ) ~= 0x01 do
			emu.frameadvance()
		end
		atkdef = memory.readbyte( enemy_addr )
		spespc = memory.readbyte( enemy_addr + 1 )
		print(string.format("ATK: %02d;\tDEF: %02d;\tSPE: %02d;\tSPC: %02d;", math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16 ))
		if shiny( atkdef, spespc ) then
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