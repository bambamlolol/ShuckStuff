function onCreate()
        makeLuaSprite("bg", "Untitled1771_20240530224341", 0, 0)
        scaleObject("bg", 2.5, 2.5)

        makeLuaSprite("front", "stuffs", 0, 0)
        scaleObject("front", 2.5, 2.5)
        addLuaSprite("bg")
        addLuaSprite("rose")
        addLuaSprite("front", true)
end