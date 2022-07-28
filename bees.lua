bees = {}

function spawn_bee()
    if(time() % 2 == 0) then 
        half_screen = screen_width/2
        bee = {x=screen_width, 
            y=rnd(screen_height - tile_width)}
        add(bees, bee)
    end
end

function move_bees()
    if(true) then 
        foreach(bees, move_bee)
    end
end

function move_bee(bee)
    if (bee.x < -tile_width) then 
        del(bees, bee)
    else
        bee.x = bee.x - 1
    end
end

function draw_bee(bee)
    spr(1, bee.x, bee.y)
end