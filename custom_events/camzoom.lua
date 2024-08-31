function onEvent(eventName, value1, value2)
        if eventName == 'camzoom' then
                doTweenZoom("zoom", "camGame", 1.3, 0.6, "circInOut")
                doTweenAngle("ffdfdsafs", "camGame", 360, 0.6, "circInOut")
        end
end

function onTweenCompleted(tag)
        if tag == 'zoom' then
                doTweenZoom("2", "camGame", 0.6, 0.3, "circInOut")
                cameraFlash('camGame', "FFFFFF", 0.5, true)
        end
end