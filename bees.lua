bees = {}
spawn_rate = 1

function spawn_bee()
    if(time() % (1 / spawn_rate) == 0) then 
        half_screen = screen_width/2
        bee = {
            sprite=1,
            x=screen_width,
            y=rnd(screen_height - tile_width - 2) + 1,
            tick = 0
        }
        add(bees, bee)
    end
end

function move_bees()
    foreach(bees, move_bee)
end

function move_bee(bee)    
    if (bee.x < -tile_width) then 
        del(bees, bee)
    else
        if bee.tick == 100 then
            bee.tick = 1
        else
            bee.tick += 1
            bee.x -= 1.5
        end
    end
end

function draw_bee(bee)
    if bee.tick % 4 == 0 then
        bee.y -= 1
    elseif bee.tick % 2 == 0 then
        bee.y += 1
    end

    if bee.tick % 5 == 0 then
        if bee.sprite == 1 then 
            bee.sprite = 2
        else 
            bee.sprite = 1
        end
    end

    spr(bee.sprite, bee.x, bee.y)
end