game_objects = {}

function _init()
	foreach(game_objects, 
        function(go) 
            if go.init != nil then
                go:init()
            end
        end)
    user_spawn()
    init_map()
end

function _update()
    user_input()
	foreach(game_objects, 
        function(go) 
            if go.update != nil then
                go:update()
            end
        end)
    foreach(game_objects, move_actor)
    spawn_bee()
    update_map()
end

function _draw()
    cls()
    draw_map()
	foreach(game_objects, 
        function(go) 
            if go.draw != nil then
                go:draw()
            end
        end)
    for actor in all(game_objects) do
        spr(actor.sprite,actor.x,actor.y,actor.width,actor.height)
    end
   
end

function move_actor(actor)
end

function draw_actor(actor)
    spr(actor.sprite,actor.x,actor.y)
end