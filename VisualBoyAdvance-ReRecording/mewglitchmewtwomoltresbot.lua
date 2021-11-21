local version = memory.readword(0x14e)
local flag_addr = 0xc027
local base_address
local atkdef
local spespc

if version == 0xc1a2 or version == 0x47F5 or version == 0x36dc or version == 0xd5dd or version == 0x299c then
	print("JP RGBY ROM ID'd.")
	base_address = 0xcfd8
elseif version == 0xe691 or version == 0xa9d then
	print("US RB ROM ID'd.")
	base_address = 0xcff1
elseif version == 0x7c04 then
	print("US Y ROM ID'd.")
	base_address = 0xcff0
elseif version == 0xd289 or version == 0x9c5e or version == 0xdc5c or version == 0xbc2e or version == 0x4a38 or version == 0xd714 or version == 0xfc7a or version == 0xa456 then
	print("EU RB ROM ID'd.")
	base_address = 0xcff6
elseif version == 0x8f4e or version == 0xfb66 or version == 0x3756 or version == 0xc1b7 then
	print("EU Y ROM ID'd.")
	base_address = 0xcff5
else
	print(string.format("ROM unidentified, code: %4x.", version ))
	print("Script stopped.")
	return
end

function shiny( atkdef, spespc ) --function moltres( atkdef, spespc )
	if spespc == 0x01 then -- Only the SPC DV matters. 0x01: Mewtwo ( level-50 Moltres' SPC == 131 );
		if atkdef ~= 0x00 or atkdef == 0x00 then -- ATK & DEF ISs don't matter.
			return true
		else
			return false
		end
	else
		return false
	end
end

state = savestate.create()
savestate.save( state )

while true do
	joypad.set(1, {A=true})
	emu.frameadvance()
	atkdef = 0
	spespc = 0
	savestate.save(state)
	while memory.readbyte(flag_addr)~=0xf0 do
		joypad.set(1, {A=false})
		vba.frameadvance()
		atkdef = memory.readbyte(base_address)
		spespc = memory.readbyte(base_address+1)
	end
	if shiny(atkdef,spespc) then
		print("Shiny!!! Script stopped.")
		print(string.format("atk: %d", math.floor(atkdef/16)))
		print(string.format("def: %d", atkdef%16))
		print(string.format("spe: %d", math.floor(spespc/16)))
		print(string.format("spc: %d", spespc%16))
		savestate.save(state)
		break
	else
		print("discarded")
		savestate.load(state)
	end
end
emu.pause()