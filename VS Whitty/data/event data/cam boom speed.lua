boomspeed = 4
bam = 1

function onEvent(name, position, arg1, arg2)
    if string.lower(name) == "cam boom speed" then
        boomspeed = tonumber(arg1)
        bam = tonumber(arg2)
    end
end

function beatHit()
	if curBeat % boomspeed == 0 then
		triggerEvent("Add Camera Zoom", 0.015 * bam, 0.03 * bam)
	end
end