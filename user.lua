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
    foreach(bees, checkForCollision)
end

function checkForCollision(bee)
    bearBox = createBox(player)
    beeBox = createBox(bee)

    hasCollision = intersection(bearBox, beeBox)
    hasCollision = hasCollision or intersection(beeBox, bearBox)
    game_over = game_over or hasCollision
end


function createBox(o)
    box = {}
    
    box.bl={o.x,o.y+o.height*8}
    box.br={o.x+o.width*8,o.y+o.height*8}
    box.tl={o.x,o.y}
    box.tr={o.x+o.width*8,o.y}
    
    return box
end

function intersection(box1,box2)
    hasIntersection = isPointInBox(box1, box2.tl)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.tr)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.bl)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.br)
    return hasIntersection
end

function isPointInBox(box,point)
    isInXRange = point[1] >= box.tl[1] and point[1] <= box.tr[1]
    isInYRange = point[2] >= box.tl[2] and point[2] <= box.bl[2]
    return isInXRange and isInYRange
end
