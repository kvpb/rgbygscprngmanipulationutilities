address_party = 0xDC9D
address_step_count = 0xDC39

direction_lateral = "right"

function stop( message )
  print( message )
  print("Stopped the script.")
  emu.pause()
  error( message )
end

function opposite_direction( direction_name )
  local direction_opposite

  if direction_name == "right" then
    direction_opposite = "left"
  else
    direction_opposite = "right"
  end

  return direction_opposite
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

function try_step( direction_name )
  local n_frame
  local n_wait
  local step_count_before
  local step_count_after
  local flag_step

  flag_step = false
  step_count_before = memory.readbyte( address_step_count )
  n_frame = 1

  while n_frame <= 40 and not flag_step do
    set_direction( direction_name )
    emu.frameadvance()

    step_count_after = memory.readbyte( address_step_count )

    if step_count_after ~= step_count_before then
      flag_step = true
    end

    n_frame = n_frame + 1
  end

  joypad.set( 1, {} )

  for n_wait = 1, 12 do
    emu.frameadvance()
  end

  return flag_step
end

function walk_lateral_safe()
  local flag_success

  flag_success = false

  if try_step( direction_lateral ) then
    direction_lateral = opposite_direction( direction_lateral )
    flag_success = true
  else
    direction_lateral = opposite_direction( direction_lateral )

    if try_step( direction_lateral ) then
      direction_lateral = opposite_direction( direction_lateral )
      flag_success = true
    end
  end

  return flag_success
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

function find_egg_party_slot()
  local party_count
  local n_i
  local egg_party_slot

  party_count = memory.readbyte( address_party )
  egg_party_slot = nil

  for n_i = 1, party_count do
    if memory.readbyte( address_party + n_i ) == 0xFD then
      egg_party_slot = n_i
    end
  end

  return egg_party_slot
end

function get_party_species_list_address( n_party_slot )
  return address_party + n_party_slot
end

function get_party_mon_address( n_party_slot )
  return address_party + 0x08 + 0x30 * ( n_party_slot - 1 )
end

egg_party_slot = find_egg_party_slot()

if egg_party_slot == nil then
  stop("Didn't find the egg.")
end

species_list_address = get_party_species_list_address( egg_party_slot )
party_mon_address = get_party_mon_address( egg_party_slot )
n_failed_movement = 0

print("Hatching egg in party slot " .. egg_party_slot .. ".")

while memory.readbyte( species_list_address ) == 0xFD do
  if walk_lateral_safe() then
    n_failed_movement = 0
  else
    n_failed_movement = n_failed_movement + 1
    print("Didn't detect any lateral movement; pressing A.")
    press_A()

    if n_failed_movement >= 200 then
      stop("No hatch detected.")
    end
  end
end

for n_wait = 1, 60 do
  emu.frameadvance()
end

print( string.format("Hatched the egg, species %d ( 0x%02X ).", memory.readbyte( party_mon_address ), memory.readbyte( party_mon_address ) ) )
print("Stopped the script.")
emu.pause()
print( os.date("%c") )

--	hatch.lua
--	A bot for the automation of the birth of 'mons in Pocket Monsters Gold & Silver and Crystal Version.
--
--	Karl V. P. B. `kvpb`	AKA Karl Thomas George West `ktgw`
--	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
--	local-part@domain		local-part@domain
--	kvpb.fr
--	https://x.com/ktgwkvpb
--	https://github.com/kvpb

--	Copyright 2026 Karl Vincent Pierre Bertin
--
--	Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the names of the contributors not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. The contributors make no representations about the suitability of this software for any purpose.  It is provided "as is" without express or implied warranty.