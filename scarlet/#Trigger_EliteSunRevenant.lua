--scarlet\#Trigger_EliteSunRevenant.lua NPC ID 175307
--Wizard Epic 1.5
--scarlet\Elite_Sun_Revenant.lua Trigger

function event_spawn(e)
	eq.set_timer("delay",3000);	
end

function event_timer(e)
	eq.stop_timer("delay");
	eq.set_proximity(-407-18, -407+18, 782-18, 782+18);
	eq.enable_proximity_say();
end

function event_proximity_say(e)
	local qglobals = eq.get_qglobals(e.other);
	
	if (e.message:findi("gems") and qglobals.wiz_epic == "1") then
		eq.zone_emote(15, "A voice booms from the center of the cauldron. These gems are sacred, important to our survival, you shall not have them.");
		eq.spawn2(175306,525410,0,-334.12,-3.41,-37.06,10);
		eq.depop_with_timer();
	else
		eq.zone_emote(15,"Unfortunately my friend, you are not a student of the sorcerous arts, and cannot be trusted with information so vital to our cause");
	end
end

-- 