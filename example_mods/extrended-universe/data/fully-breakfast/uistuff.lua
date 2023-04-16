function onCreatePost()
    setObjectOrder('healthBarBG', getObjectOrder('healthBar'))


    screenCenter('timeBar', 'X')
    setProperty('timeBar.y', getProperty('timeBar.y') + 5)
    addHaxeLibrary('FlxBar', 'flixel.ui')
    runHaxeCode([[
      game.timeBar.createFilledBar(0xFF000000, 0xFFFF83FF);
    ]])
    setObjectOrder('timeBarBG', getObjectOrder('timeBar'))

    if songName:lower() == 'exploitation' then
      loadGraphic('healthBarBG', 'ui/HELLthbar')
    end
end