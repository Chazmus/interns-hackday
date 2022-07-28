player = {}
left,right,up,down,fire1,fire2 = 0,1,2,3,4,5

function user_input()
-- player movements, up, down, left and right
    if (btn(up)) then
        player.y = max(0, player.y-1)
    end

    if (btn(down)) then  -- down
        player.y = min(127-(player.height*8), player.y+1)
    end

    if (btn(right)) then
        player.x = min(63, player.x+1)
    end

    if (btn(left)) then
        player.x = max(0, player.x-1)
    end

    if (btn(fire1)) then
        gun()
    end
    if (btn(fire2)) then
        laser()
    end
end

function user_spawn()
-- spawns user og pos
    player.sprite=65
    player.height=2
    player.width=2
    player.x=0
    player.y=127-(player.height*8)
    add(game_objects,player)

end
