local atkdef
local spespc
local address_opponent
local version = memory.readbyte( 0x141 )
local region = memory.readbyte( 0x142 )
local mode_lapras = false --true --false -- for the Lapras in the depths of Union Cave only. Swim to it, face it, pause there, set this variable to true, and run the script.
local name_file = debug.getinfo( 1, "S")
local filename = name_file.source:match("@(.+)$") -- Putain, le Lua de VBA-RR, cette daube monumentale, bordel.

print(string.format("%s ran.", filename)) --"gscstationary.lua"))
if version == 0x54 then
	if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
		print("EU C ROM ID'd.")
		address_opponent = 0xD20C
	elseif region == 0x45 then
		print("US C ROM ID'd.")
		address_opponent = 0xD20C
	elseif region == 0x4A then
		print("JP C ROM ID'd.")
		address_opponent = 0xD23D
	end
elseif version == 0x55 or version == 0x58 then
	if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
		print("EU GS ROM ID'd.")
		address_opponent = 0xD0F5	
	elseif region == 0x45 then
		print("US GS ROM ID'd.")
		address_opponent = 0xD0F5
	elseif region == 0x4A then
		print("JP GS ROM ID'd.")
		address_opponent = 0xD0E7
	elseif region == 0x4B then
		print("KR GS ROM ID'd.")
		address_opponent = 0xD1B2
	end
else
	print(string.format("ROM unidentified, code: %4x.", version ))
	print("Script stopped.")
	return
end

local dv_flag_addr = address_opponent + 0x21

function shiny( atkdef, spespc )
--	if spespc == 0xAA then
--		if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
--		if atkdef == 0xFA then -- shiny flawless
--		if atkdef == 0xEA then -- shiny grass-type hidden power flawless
	if spespc == 0xFF then -- flawless
		if atkdef == 0xFF then -- flawless
--		if atkdef == 0xEE then -- grass-type hidden power flawless
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
--    if spespc == 0xFF then     -- Grass-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xEE
--        if atkdef == 0xEE then -- Grass-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xEE
--            return true
--        end
--    end
--    return false
--end
 
local state = savestate.create()
while true do
	savestate.save( state )
	while memory.readbyte( dv_flag_addr ) ~= 0x01 do
		if mode_lapras then
			i = 0
			while i < 32 do
				joypad.set( 1, {B=true} ) -- unpause: input B; -- Fuck you, VBA-RR.
				vba.frameadvance()
				i = i + 1
			end
			--joypad.set( 1, {start=true} ) -- unpause: input start;
			--emu.frameadvance()
			--joypad.set( 1, {} ) -- release start.
			--emu.frameadvance()
		end
		joypad.set( 1, {A=true} ) -- press A: encounter Lapras;
		emu.frameadvance()
		--joypad.set( 1, {} ) -- release A.
	end
	emu.frameadvance()
	atkdef = memory.readbyte( address_opponent )
	spespc = memory.readbyte( address_opponent + 1 )
	print(string.format("ATK: %02d;\tDEF: %02d;\tSPE: %02d;\tSPC: %02d;", math.floor( atkdef / 16 ), atkdef % 16, math.floor( spespc / 16 ), spespc % 16 ))
	if shiny( atkdef, spespc ) then
		print("Targeted Pokemon DV frame hit. Script stopped.")
		savestate.save( state )
		vba.pause() --emu.pause()
		break
	else
		print("discarded.")
		savestate.load( state )
	end
	print(os.date("%c"))
	emu.frameadvance()
	emu.frameadvance()
end
print(os.date("%c"))

--	gscstationary.lua
--	A bot for the manipulation of PRNG for ISs of stationary 'mons in Pocket Monsters Gold & Silver and Crystal Version.
--	https://github.com/wwwwwwzx/gsclua/blob/1720ed8d220e756ca66cf5769490d586c04b8561/gsc_stationary.lua
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

--	Copyright 2017 wwwwwwzx
--	Copyright 2022 Karl Vincent Pierre Bertin
--
--	Permission to use, copy, modify, and distribute this software and its
--	documentation for any purpose and without fee is hereby granted, provided that
--	the above copyright notice appear in all copies and that both that copyright
--	notice and this permission notice appear in supporting documentation, and that
--	the names of the contributors not be used in advertising or publicity
--	pertaining to distribution of the software without specific, written prior
--	permission. The contributors make no representations about the
--	suitability of this software for any purpose.  It is provided "as is" without
--	express or implied warranty.