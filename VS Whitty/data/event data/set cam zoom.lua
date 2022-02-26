function onEvent(name, position, arg1, arg2)
    if string.lower(name) == "set cam zoom" then
        if arg2 == '' then
      	    setProperty("defaultCamZoom",arg1)
	    else
            tweenCameraZoomIn(tonumber(arg1), tonumber(arg2) / getProperty("", "songMultiplier"))
	    end
    end
end