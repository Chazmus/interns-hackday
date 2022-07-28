player = {}
left,right,up,down,fire1,fire2 = 0,1,2,3,4,5
sprite_order = {67, 109, 71, 77, 69, 192}
gun_order = {97, 226, 99, 224}
current_sprite = 0
fire_cycle = 0
tick_counter = 0
lzr_cooldown = 0

function user_input()
-- player movements, up, down, left and right
    if (btn(up)) then
        player.y = max(0, player.y - player.speed)
    end

    if (btn(down)) then  -- down
        player.y = min(127-(player.height*8), player.y + player.speed)
    end

    if (btn(right)) then
        player.x = min(63, player.x + player.speed)
    end

    if (btn(left)) then
        player.x = max(0, player.x - player.speed)
    end

    if (btnp(fire1)) then
        fire_cycle = 1
    end
    if (btn(fire2)) then
        if(lzr_cooldown == 0) then
            laser()
            fire_lazer(player, 90 + (rnd(player.weapons.lazer.spread) - 5), player.weapons.lazer.speed, 12)
            lzr_cooldown = player.weapons.lazer.cooldown
        else
            lzr_cooldown = max(0, lzr_cooldown - 1)
        end
    end
end

function user_spawn()
-- spawns user og pos
    player.sprite=67
    player.height=2
    player.width=2
    player.x=0
    player.y=127-(player.height*8)
    player.speed = 1
    player.weapons = {
        rocket = {},
        lazer = {
            speed = 4,
            cooldown = 10,
            spread  = 10
        }
    }
    add(game_objects,player)
end

function update_user_sprite()
    tick_counter += 1
    if (tick_counter % 5 == 0) then
        if (fire_cycle > 0) then
            player.sprite = gun_order [fire_cycle]
            if (fire_cycle == 2) then
                gun()
            end
            fire_cycle = (fire_cycle + 1) % count(gun_order)
        else
            current_sprite = (current_sprite + 1) % count(sprite_order)
            player.sprite = sprite_order [current_sprite + 1]
        end
    end
end

function check_dead_bear()
    foreach(bees, checkForBeeCollision)
end

function checkForBeeCollision(bee)
    hasCollision = checkForCollision(player, bee)
    game_over = game_over or hasCollision
end
