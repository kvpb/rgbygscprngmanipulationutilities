step_to_egg_address = 0xDEB7
daycare_man_address = 0xDE89

last_step_to_egg = -1
last_daycare_man = -1

while true do
    step_to_egg = memory.readbyte(step_to_egg_address)
    daycare_man = memory.readbyte(daycare_man_address)

    if step_to_egg ~= last_step_to_egg or daycare_man ~= last_daycare_man then
        print( string.format("steps to egg: %3d; daycare man: 0x%02X;", step_to_egg, daycare_man ) )

        if daycare_man == 0xC1 then
            print("Readied an egg.")
        elseif step_to_egg == 0 then
            print("steps to potential egg: 256;")
        else
            print("steps to potential egg: " .. step_to_egg .. ";")
        end

        last_step_to_egg = step_to_egg
        last_daycare_man = daycare_man
    end

    emu.frameadvance()
end

--	count.lua
--	A bot for the read-out of the day care egg step counter of Pocket Monsters Gold & Silver and Crystal Version.
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