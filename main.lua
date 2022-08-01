game_objects = {}
gametick = 0
black=0
pink=14
screen_width = 128
screen_height = 128
tile_width = 8
tile_height = 8
game_over = false
score = 0

function go_init(go) 
    if go.init != nil then
        go:init()
    end
end

function _init()
    init_colours()

    add(game_objects, Music:new())
    game_map = Map:new()
    add(game_objects, game_map)

    -- initialise all game objects that exist at the start of the game
    for go in all(game_objects) do go_init(go) end
    for go in all(managers) do go_init(go) end

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