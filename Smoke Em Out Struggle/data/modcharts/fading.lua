local doneFunny = false

local fadingOutLol = false

local time = 0
local lastFadeTime = 0

function start(song)
    print(song)
end

function update(elapsed)
    time = time + elapsed

    if fadingOutLol and lastFadeTime + 0.1 < time and getActorAlpha("dad") > 0 then
        lastFadeTime = time

        setActorAlpha(getActorAlpha("dad") - 0.05, "dad")
        setActorAlpha(getActorAlpha("iconP2") - 0.05, "iconP2")

        if getActorAlpha("dad") <= 0 then
            fadingOutLol = false
        end
    end
end

function stepHit(step)
    if step >= 240 and fadingOutLol == false and getActorAlpha("dad") > 0 then
        fadingOutLol = true
    end

    if step >= 247 and doneFunny == false then
        doneFunny = true

        setCharacterShouldDance("dad", false)
        playCharacterAnimation("dad", "garFarewell", true)
    end
end