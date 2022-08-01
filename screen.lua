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
    print("bears and bees", 35, 10, 10)

    print("in the town of bristol,", 5, 30, 14)
    print("after too many artisan bee", 5, 40, 14)
    print("keepers led to an explosion", 5, 50, 14)
    print("in the bee population,", 5, 60, 14)
    print("only one person, nay,", 5, 70, 14)
    print("one bear can save the city...", 5, 80, 14)
    print("bear!", 55, 90, 12)
    print("press z to start", 30, 110, 7)
end

function update_game()
    user_input()
	foreach(game_objects, 
        function(go) 
            if go.update != nil then
                go:update()
            end
        end)
    gametick = (gametick + 1) % 30
    if(gametick % 30 == 0) then
        score += 1
    end
    if(score == 30) then
        boss.active = true
    end
end

function draw_game()
    cls()

    if game_over then
        -- show screen
        player.flip_y = true
        spr(197,40,40,8,4)
        stop()
    end

	foreach(game_objects, 
        function(go) 
            if go.draw != nil then
                go:draw()
            end
        end)

    print("score: "..score, 2, 2, 7)
end 