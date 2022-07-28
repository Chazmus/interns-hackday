screen = {}

function show_game()
    cls()
    screen.update = update_game
    screen.draw = draw_game
end

function show_menu()
    cls()
    screen.update = update_menu
    screen.draw = draw_menu
end

function update_menu()
    if(btnp(4)) then show_game() end
end

function draw_menu()
    cls()
    print("bears and bees", 6, 40, 14)
    print("press z to start", 30, 100, 7)
end

function update_game()
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
    update_user_sprite()
end

function draw_game()
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