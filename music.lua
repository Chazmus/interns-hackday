music_manager = {}

add(game_objects, music_manager)

function game_music()
    music(0)
end
function laser() 
    sfx(4)
end

function gun()
    sfx(5)
end
function pain()
    sfx(6)
end

function music_manager:init()
    game_music()
end