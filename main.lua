game_objects = {}

function _init()
	foreach(game_objects, 
        function(go) 
            if go.init != nil then
                go:init()
            end
        end)
    user_spawn()
end

function _update()
    user_input()
    foreach(game_objects, move_actor)
    spawn_bee()
end

function _draw()
    cls()
    for actor in all(game_objects) do
        spr(actor.sprite,actor.x,actor.y)
    end
end

function move_actor(actor)
end

function draw_actor(actor)
    spr(actor.sprite,actor.x,actor.y)
end