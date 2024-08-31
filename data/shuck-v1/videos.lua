function onCreate()
        setProperty("camGame.alpha", 0)
        setProperty("camHUD.alpha", 0)
        setProperty("skipCountdown", true)
end

function onStepHit()
        if curStep ==  2103 then
                makeVideoSprite("myCutscene", "pingas", 200, 120, "game", true) -- Tag, Path, X, Y, Default Camera, Loop
        
                scaleObject("myCutscene", 2.5, 2.5)
                setScrollFactor("myCutscene", 0.0, 0.0)
        end
        if curStep ==  2360 then
                doTweenAlpha("myCutsceneBYE", "myCutscene", 0, 0.2, "circOut")
        end
        if curStep ==  127 then
                doTweenAlpha("myCutsceneBYE", "myCutscene", 0, 0.2, "circOut")
                doTweenAlpha("camHUDcamHUD", "camHUD", 1, 10, "circOut")
                doTweenAlpha("camGamecamGame", "camGame", 1, 10, "circOut")
        end
end