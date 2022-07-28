screen = {}

score = 20

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
    print("bears and bees", 35, 10, 10)

    print("in the town of bristol,", 5, 30, 14)
    print("after too many artisan bee", 5, 40, 14)
    print("keepers led to an explosion", 5, 50, 14)
    print("in the bee population,", 5, 60, 14)
    print("only one person, nay,", 5, 70, 14)
    print("one bear can save the city...", 5, 80, 14)
    print("bear!", 55, 90, 12)
    print("press z to start", 30, 110, 7)
    score = 0
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
    if(score < 20) then
        spawn_bee()
    end
    move_bees()
    update_user_sprite()
    update_lazers()
    score += 0.1
    update_rockets()
    check_dead_bear()
end

function draw_game()
    cls()

    if game_over then
        stop('YOU DIE')
    end

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
    print("sCORE:"..score, 95, 5, 7)
    draw_lazers()
    draw_rockets()
end 