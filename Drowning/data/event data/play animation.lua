function onEvent(name, position, argument1, argument2)
    if string.lower(name) == "play animation" then
        local anim = argument1

        if anim == "" then
            anim = "idle"
        end

        playCharacterAnimation(getCharFromEvent(argument2), anim, true)
    end
end