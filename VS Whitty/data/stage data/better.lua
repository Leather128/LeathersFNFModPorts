function onEvent(n,p,v1,v2)
    if n == 'Change Character' and v2 == 'bf_cool' then
        setActorVisible(false, "reg_wall")
        setActorVisible(false, "reg_ground")
    end

    if n == 'Change Character' and v2 == 'bf'then
        setActorVisible(true, "reg_wall")
        setActorVisible(true, "reg_ground")
    end
end

function create()
    makeSprite("jacket", "number12COCK", 450, 400)
    setActorVisible(false, "jacket")
end