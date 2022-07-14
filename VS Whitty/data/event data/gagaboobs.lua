-- hehe guys guess what?!?!?1? the event has the word 'BOOBS' in it... EHIURRSH*)YUGFDUIJHGUDFISHNFISDPFUSDHJFPIUHUSDFUIHODSFHUOIFDSAHIOUYDSFHAIOU THATS SOO FUNYD(USPSFJHD(USDOIHUHUIOFSJD))

function onEvent(name, position, arg1, arg2)
    if string.lower(name) == "gagaboobs" then
        print("funny jacket go br")

        setActorVisible(true, "jacket")
        tweenPos("jacket", 2000, getActorY("jacket"), 0.15 / getProperty("", "songMultiplier"), "")
    end
end