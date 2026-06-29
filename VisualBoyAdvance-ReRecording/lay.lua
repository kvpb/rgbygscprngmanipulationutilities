address_daycare_man = 0xDE89
address_step_to_egg = 0xDEB7
address_step_count = 0xDC39

direction_lateral = "right"
target_step_to_egg = 2
max_delay = 3600

function stop_script( message )
  print( message )
  print("Stopped the script.")
  emu.pause()
  error( message )
end

function has_bit_6( n )
  return math.floor( n / 0x40 ) - 2 * math.floor( n / 0x80 ) == 1
end

function is_daycare_egg_ready()
  return has_bit_6( memory.readbyte( address_daycare_man ) )
end

function is_before_or_at_target_step()
  step_to_egg = memory.readbyte( address_step_to_egg )

  if step_to_egg == 0 then
    return false
  end

  if step_to_egg > target_step_to_egg then
    return false
  end

  return true
end

function opposite_direction( direction_name )
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
    stop_script("Don't know that direction.")
  end
end

function wait_frames( n_frames )
  local n_frame

  joypad.set( 1, {} )

  for n_frame = 1, n_frames do
    emu.frameadvance()
  end
end

function try_step( direction_name )
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

function walk_lateral_safe()
  if try_step( direction_lateral ) then
    direction_lateral = opposite_direction( direction_lateral )
    return true
  end

  direction_lateral = opposite_direction( direction_lateral )

  if try_step( direction_lateral ) then
    direction_lateral = opposite_direction( direction_lateral )
    return true
  end

  return false
end

function print_step_status()
  step_to_egg = memory.readbyte( address_step_to_egg )
  daycare_man = memory.readbyte( address_daycare_man )

  print( string.format("steps to egg: %3d; daycare man: 0x%02X;", step_to_egg, daycare_man ) )

  if step_to_egg == 0 then
    print("steps to potential egg: 256;")
  else
    print("steps to potential egg: " .. step_to_egg .. ";")
  end
end

last_step_to_egg = -1
last_daycare_man = -1

print("Walking, until we can check the egg.")

while not is_daycare_egg_ready() and not is_before_or_at_target_step() do
  if not walk_lateral_safe() then
    stop_script("Didn't detect any lateral movement.")
  end

  step_to_egg = memory.readbyte( address_step_to_egg )
  daycare_man = memory.readbyte( address_daycare_man )

  if step_to_egg ~= last_step_to_egg or daycare_man ~= last_daycare_man then
    print_step_status()

    last_step_to_egg = step_to_egg
    last_daycare_man = daycare_man
  end
end

if is_daycare_egg_ready() then
  print( string.format("Readied an egg.\ndaycare man: 0x%02X;", memory.readbyte( address_daycare_man ) ) )
else
  if not is_before_or_at_target_step() then
    stop_script("Not in the egg verification window.")
  end

  step_to_egg = memory.readbyte( address_step_to_egg )
  direction_lateral_last_step = direction_lateral

  state_last_step = savestate.create()
  savestate.save( state_last_step )

  print( string.format("Saved the state, before we check the egg.\nsteps to egg: %d;", step_to_egg ) )

  delay = 0
  flag_found = false

  while delay < max_delay + 1 and not flag_found do
    savestate.load( state_last_step )
    emu.frameadvance()

    direction_lateral = direction_lateral_last_step

    wait_frames( delay )

    print( string.format("Attempting to check the egg.\ndelay: %4d;", delay ) )

    if not walk_lateral_safe() then
      stop_script("Didn't detect any lateral movement from the egg verification state.")
    end

    step_to_egg = memory.readbyte( address_step_to_egg )
    daycare_man = memory.readbyte( address_daycare_man )

    if is_daycare_egg_ready() then
      flag_found = true
      print( string.format("Readied an egg.\ndelay: %4d; steps to egg: %3d; daycare man: 0x%02X;", delay, step_to_egg, daycare_man ) )
    else
      print( string.format("Didn't ready an egg; reloading.\ndelay: %4d; steps to egg: %3d; daycare man: 0x%02X;", delay, step_to_egg, daycare_man ) )
      delay = delay + 1
    end
  end

  if not flag_found then
    stop_script("Didn't find any egg within the max delay.")
  end
end

print("Stopped the script.")
emu.pause()
print( os.date("%c") )

--	lay.lua
--	A bot for the automation of the calculation of the DV spread of an egg in Pocket Monsters Gold & Silver and Crystal Version.
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