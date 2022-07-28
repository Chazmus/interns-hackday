bees = {}
tick = 0

function spawn_bee()
    if(tick % 10 == 0) then 
        half_screen = screen_width/2
        bee = {
            sprite=1,
            height=1,
            width=1,
            x=screen_width,
            y=rnd(screen_height - tile_width - 2) + 1,
            tick = 0
        }
        add(bees, bee)
    end
end

function move_bees()
    foreach(bees, move_bee)
    tick += 1
    printh(tick)
end

function move_bee(bee)    
    if (bee.x < -tile_width) then 
        del(bees, bee)
    else
        bee.tick += 1
        bee.x -= 1.5
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