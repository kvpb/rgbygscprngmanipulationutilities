version_code_1 = memory.readbyte( 0x141 )
version_code_2 = memory.readbyte( 0x142 )

game = "Unknown"
version = "Unknown"
region = "Unknown"

address_party = 0x0000
address_step_count = 0xDC39

target_friendship = 220
direction_lateral = "right"

function stop_script( message )
  print( message )
  print("Stopped the script.")
  emu.pause()
  error( message )
end

if version_code_1 == 0x54 and version_code_2 == 0x4A then
  game = "GSC"
  version = "Crystal"
  region = "JP"
  address_party = 0xDC9D
elseif version_code_1 == 0x54 and version_code_2 == 0x45 then
  game = "GSC"
  version = "Crystal"
  region = "US"
elseif version_code_1 == 0x54 and version_code_2 == 0x50 then
  game = "GSC"
  version = "Crystal"
  region = "EU"
elseif version_code_2 == 0x4A then
  game = "GSC"
  version = "Gold/Silver"
  region = "JP"
elseif version_code_2 == 0x45 then
  game = "GSC"
  version = "Gold/Silver"
  region = "US"
elseif version_code_2 == 0x50 then
  game = "GSC"
  version = "Gold/Silver"
  region = "EU"
elseif version_code_2 == 0x4B then
  game = "GSC"
  version = "Gold/Silver"
  region = "KR"
else
  stop_script( string.format("Don't know the game, header bytes 0x%02X 0x%02X.", version_code_1, version_code_2 ) )
end

if address_party == 0x0000 then
  stop_script("Party address not set for " .. version .. " " .. region .. ".")
end

address_species = address_party + 1
address_friendship = address_party + 0x08 + 0x1B

function set_direction( direction_name )
  if direction_name == "right" then
    joypad.set( 1, { right = true } )
  elseif direction_name == "left" then
    joypad.set( 1, { left = true } )
  else
    stop_script("Don't know that direction.")
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
    if direction_lateral == "right" then
      direction_lateral = "left"
    else
      direction_lateral = "right"
    end

    return true
  end

  if direction_lateral == "right" then
    direction_lateral = "left"
  else
    direction_lateral = "right"
  end

  if try_step( direction_lateral ) then
    if direction_lateral == "right" then
      direction_lateral = "left"
    else
      direction_lateral = "right"
    end

    return true
  end

  return false
end

if memory.readbyte( address_party ) < 1 then
  stop_script("No 'mon is in party slot 1.")
end

species = memory.readbyte( address_species )
friendship = memory.readbyte( address_friendship )

last_friendship = -1
last_step_count = memory.readbyte( address_step_count )
counted_steps = 0

print("Walking with the 'mon in party slot 1.")
print( string.format("species: %d / 0x%02X;", species, species ) )
print("initial friendship level: " .. friendship .. ".")
print("target friendship level: " .. target_friendship .. ".")

while friendship < target_friendship do
  if not walk_lateral_safe() then
    stop_script("Didn't detect any lateral movement.")
  end

  step_count = memory.readbyte( address_step_count )

  if step_count ~= last_step_count then
    counted_steps = counted_steps + 1
    last_step_count = step_count
  end

  friendship = memory.readbyte( address_friendship )

  if friendship ~= last_friendship then
    print( string.format("friendship level: %3d; number of steps: %d;", friendship, counted_steps ) )
    last_friendship = friendship
  end
end

print( string.format("Reached target friendship level %d.", friendship ) )
print("Stopped the script.")
emu.pause()
print( os.date("%c") )

--	walktogether.lua
--	A bot for friendship with 'mons in Pocket Monsters Gold & Silver and Crystal Version.
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