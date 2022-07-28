player = {}

function user_input()
-- player movements, up, down, left and right
    if (btn(2)) then  -- up
        player.y = max(0, player.y-1)
    end

    if (btn(3)) then  -- down
        player.y = min(118, player.y+1)
    end

    if (btn(1)) then -- right
        player.x = min(63, player.x+1)
    end

    if (btn(0)) then  -- left
        player.x = max(0, player.x-1)
    end

end

function user_spawn()
-- spawns user og pos
    player.sprite=1
    player.x=0
    player.y=118
    add(game_objects,player)

end
