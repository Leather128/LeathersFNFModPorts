local doneFunny = false

function start(song)
    print(song)
end

function stepHit(step)
    if step >= 838 and doneFunny == false then
        doneFunny = true

        setCharacterShouldDance("dad", false)
        playCharacterAnimation("dad", "garTightBars", true)
    end

    if step >= 848 and doneFunny == true then
        setCharacterShouldDance("dad", true)
    end
end