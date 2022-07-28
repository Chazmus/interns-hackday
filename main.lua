game_objects = {}
black=0
pink=14

screen_width = 128
screen_height = 128
tile_width = 8

function _init()
    init_colours()
	foreach(game_objects, 
        function(go) 
            if go.init != nil then
                go:init()
            end
        end)
    user_spawn()
end

function init_colours()
    palt(black, false)
    palt(pink, true)
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
    move_bees()
end

function _draw()
    cls()
	foreach(game_objects, 
        function(go) 
            if go.draw != nil then
                go:draw()
            end
        end)
    for actor in all(game_objects) do
        spr(actor.sprite,actor.x,actor.y,actor.width,actor.height)
    end

    foreach(bees, draw_bee)
end

function move_actor(actor)
end

function draw_actor(actor)
    spr(actor.sprite,actor.x,actor.y)
end