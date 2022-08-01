player = {}
player_manager = {}
add(game_objects,player_manager)

left,right,up,down,fire1,fire2 = 0,1,2,3,4,5
sprite_order = {67, 109, 71, 77, 69, 192}
gun_order = {97, 226, 99, 224}
current_sprite = 0
fire_cycle = 0
tick_counter = 0
lzr_cooldown = 0

function player_manager:init()
    player.sprite=67
    player.height=2
    player.width=2
    player.speed = 2
    player.weapons = {
        rocket = {},
        lazer = {
            speed = 4,
            cooldown = 10,
            spread  = 10
        }
    }
    player.flip_x = false
    player.flip_y = false
    player.iframe = 0
    user_spawn()
end
function player_manager:update()
    player.update()
    player.iframe = max(0, player.iframe - 1)
    check_collisions()
end
function player_manager:draw()
    spr(player.sprite,player.x,player.y,player.width, player.height, player.flip_x,player.flip_y)
end

function player:update()
    if (gametick % 5 == 0) then
        if (fire_cycle > 0) then
            player.sprite = gun_order [fire_cycle]
            if (fire_cycle == 2) then
                fire_rocket()
            end
            fire_cycle = (fire_cycle + 1) % count(gun_order)
        else
            current_sprite = (current_sprite + 1) % count(sprite_order)
            player.sprite = sprite_order [current_sprite + 1]
        end
    end
end
function player:hurt()
    if(player.iframe == 0) then
        player.hp -= 1
        player.iframe = 15
        if(player.hp == 0) then
            game_over = true
        end
    end
end

function user_input()
-- player movements, up, down, left and right
    if (btn(up)) then
        player.y = max(0, player.y - player.speed)
    end

    if (btn(down)) then
        player.y = min(127-(player.height*8), player.y + player.speed)
    end

    if (btn(right)) then
        player.x = min(120, player.x + player.speed)
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
    player.x=0
    player.y=127-(player.height*8)
    player.hp = 3
end

function check_collisions()
    foreach(bees, check_object_player_collsion)
    foreach(lazers, function(lazer)
            if(lazer.source ~= player) then
                check_object_player_collsion(lazer)
            end
        end)
end

function check_object_player_collsion(object)
    hasCollision = checkForCollision(player, object)
    game_over = game_over or hasCollision
end
