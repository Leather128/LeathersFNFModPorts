function create(stage)
    makeSprite('effect','thefunnyeffect', 0, 0)
	setGraphicSize('effect', 1280, 720)
	setObjectCamera('effect', 'camHud')
	updateHitbox('effect')
	setBlendMode('effect','multiply')
end

function playerTwoSing()
    triggerEvent('Add Camera Zoom',0.01,0.02)
    triggerEvent('Screen Shake','1,0.006')
end

function update(elapsed)
    setActorAlpha(getHealth() / 1.5, "effect")
end