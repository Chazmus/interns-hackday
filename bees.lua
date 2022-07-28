bees = {}

function spawn_bee()
    if(time() % 2 == 0) then 
        half_screen = screen_width/2
        bee = {
            sprite=1,
            x=screen_width, 
            y=rnd(screen_height - tile_width)
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
        bee.x -= 1.5
    end
end

function draw_bee(bee)
    spr(bee.sprite, bee.x, bee.y)
end