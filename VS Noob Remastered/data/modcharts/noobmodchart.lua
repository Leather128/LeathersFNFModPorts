function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)

    setActorColor("dad",0,0,0,255)

    setActorColor("builderman",0,0,0,255)
    setActorColor("guest",0,0,0,255)
    setActorColor("nooblings",0,0,0,255)

    setActorTrailVisible("dad", false)
end

function update(elapsed)
    
end

function stepHit(step)
    -- colors i guess /shrug
    if step == 57 then
        setActorColor("dad",25,25,25,255)

        setActorColor("builderman",25,25,25,255)
        setActorColor("guest",25,25,25,255)
        setActorColor("nooblings",25,25,25,255)
    end

    if step == 58 then
        playActorAnimation("light", "light1")
        setActorColor("dad",50,50,50,255)

        setActorColor("builderman",50,50,50,255)
        setActorColor("guest",50,50,50,255)
        setActorColor("nooblings",50,50,50,255)
    end

    if step == 59 then
        setActorColor("dad",100,100,100,255)

        setActorColor("builderman",100,100,100,255)
        setActorColor("guest",100,100,100,255)
        setActorColor("nooblings",100,100,100,255)
    end

    if step == 60 then
        setActorColor("dad",200,200,200,255)

        setActorColor("builderman",200,200,200,255)
        setActorColor("guest",200,200,200,255)
        setActorColor("nooblings",200,200,200,255)
    end

    if step == 61 then
        setActorColor("dad",255,255,255,255)

        setActorColor("builderman",255,255,255,255)
        setActorColor("guest",255,255,255,255)
        setActorColor("nooblings",255,255,255,255)
    end

    -- DEATH OF GUEST
    if step == 448 then
        playActorAnimation("builderman", "scared")

        setActorAlpha(0.25, "guest")
    end

    if step == 449 then
        setActorAlpha(0, "guest")
    end

    -- GET DOWn!!!!
    if step == 56 then
        addActorAnimation('dad', 'singLEFT', 'Noob Get Down', 24, false)
        addActorAnimation('dad', 'singDOWN', 'Noob Get Down2', 24, false)
    end

    if step == 63 then
        addActorAnimation('dad', 'singLEFT', 'Noob Right', 24, false)
        addActorAnimation('dad', 'singDOWN', 'Noob Down', 24, false)

        playActorAnimation("light", "light2")
    end

    if step == 66 then
        setActorAlpha(0, "light")
    end

    -- cool up anim at end :poggers:
    if step == 551 then
        addActorAnimation('dad', 'singUP', 'Noob Up 2', 24, false)
    end

    if step == 559 then
        addActorAnimation('dad', 'singUP', 'Noob Up 3', 24, false)
        setActorTrailVisible("dad", true)
    end

    if step == 577 then
        addActorAnimation('dad', 'singUP', 'Noob Up0', 24, false)
        setActorTrailVisible("dad", false)
    end
end

print("Mod Chart script loaded :)")