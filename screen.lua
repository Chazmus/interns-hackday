screen = {}
update_callbacks = {}


function init_game()
    -- create the player object and add to game objects
    player = Player:new()
    add(game_objects, player)
    player:init()

    -- every 10 ticks spawn a normal bee!
    every(10, function() 
        local bee = Bee:new(screen_width, rnd(screen_height - tile_width - 2) + 1, 1, 1, {1, 2}, 1, 1, false, {80, 96, 112})
        add(game_objects, bee)
        bee:init() 
    end)

    -- every 30 ticks attempt to spawn a pickup
    every(30, function()
        local pickup_type = 0
        local effectid = rnd(100) + 1

        if(effectid <= 15) then
            pickup_type = 1 -- Lazer pickup [15%]
        elseif(effectid <= 20) then
            pickup_type = 3 -- Slow bees [5%]
        elseif(effectid <= 60) then
            pickup_type = 2 -- HP pickup [40%]
        end

        if(pickup_type > 0) then
            local pickup = Pickup:new(screen_width, rnd(screen_height - tile_height - 2) + 1, pickup_types[pickup_type])
            pickup:init()
            add(game_objects, pickup)
        end
    end)

    -- every 100 ticks spawn a big bee!
    every(100, function() 
        local bee = Bee:new(screen_width, rnd(screen_height - tile_width - 2) + 1, 3, 4, {4, 6}, 2, 2, true, {103, 105, 107})
        bee:init()
        add(game_objects, bee)
    end)

    -- submit a callback that increments the score every 10 ticks and
    -- checks if the boss is spawnable yet
    every(10, function()
        score += 1
        if(score == boss_score) then
            boss = Boss:new()
            boss:init()
            add(game_objects, boss)
        end
    end)
end
function show_game()
    cls()
    screen.update = update_game
    screen.draw = draw_game

    init_game()
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

function every(ticks, callback)
    add(update_callbacks, {ticks = ticks, callback = callback})
end

function go_update(go) 
    if go.update != nil then
        go:update()
    end
end

function go_draw(go) 
    if go.draw != nil then
        go:draw()
    end
end

function update_game()
    
    -- call update method on all game objects
    for go in all(game_objects) do go_update(go) end
    for go in all(v) do go_update(go) end

    -- apply tick-based dynamic callbacks
    for callback in all(update_callbacks) do
        if((gametick % callback.ticks) == 0) then
            callback.callback()
        end
    end

    -- increment the game tick
    gametick += 1
end

function draw_game()
    cls()

    if game_over then
        -- show screen
        player.flip_y = true
        spr(197,40,40,8,4)
        stop()
    end

    -- call draw method on all game objects
    for go in all(game_objects) do go_draw(go) end
    for go in all(v) do go_draw(go) end

    print("hp: " ..player.hp ..". score: " ..score, 2, 2, 7)
end 