function start (song)
    print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end

function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
    local currentBeat = (songPos / 1000) * (bpm / 60)
end

function stepHit (step)
    if step == 1912 then
        tweenFadeOut("dad", 0, 1)
    end

    if step == 1984 then
        changeDadCharacter("cableCrowPog")
        setActorAlpha(0, "dad")
        tweenFadeOut("dad", 1, 1)
    end
end

print("Mod Chart script loaded :)")