game_objects = {}

function _init()
	foreach(game_objects, 
        function(go) 
            if go.init != nil then
                go:init()
            end
        end)
end

function _update()
    foreach(game_objects, move_actor)
end

function _draw()
    foreach(game_objects, draw_actor)
end

function move_actor(actor)
end

function draw_actor(actor)
end