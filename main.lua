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
    show_menu()
end

function init_colours()
    palt(black, false)
    palt(pink, true)
end

function _update()
    screen.update()
end

function _draw()
    screen.draw()
end

function move_actor(actor)
end

function draw_actor(actor)
    spr(actor.sprite,actor.x,actor.y)
end