bees = {}
tick = 0

function spawn_bee()
    if(tick % 10 == 0) then 
        bee = {}
        bee.x = screen_width
        bee.y = rnd(screen_height - tile_width - 2) + 1
        bee.tick = 0
        bee.alive = true

        if(tick % 100 == 0) then
            bee.sprite = 4
            bee.sprites = {4, 6}
            bee.height = 2
            bee.width = 2
            bee.hasLazer = false
        bee.deathsprites = {80, 96, 112}
        else
            bee.sprite = 1
            bee.sprites = {1, 2}
            bee.height = 1
            bee.width = 1
            bee.hasLazer = false
        bee.deathsprites = {103, 105, 107}
        end
        add(bees, bee)
    end
end

function move_bees()
    foreach(bees, move_bee)
    tick += 1
end

function move_bee(bee)    
    if bee.alive then
        if (bee.x < -tile_width) then 
            del(bees, bee)
        else
            bee.tick += 1
            bee.x -= 1.5
        end

        if bee.tick % 4 == 0 then
            bee.y -= 1
        elseif bee.tick % 2 == 0 then
            bee.y += 1
        end

        if(bee.hasLazer and (bee.tick % 60) == 0) then
            fire_lazer(bee, -90, -4, 11)
        end
    else
        if bee.sprite == bee.deathsprites[2] then
            del(bees, bee)
        end
    end
end

function kill_bee(bee)
    bee.alive = false
    pain_sound()
end

function draw_bee(bee)
    if bee.alive then
        if bee.tick % 5 == 0 then
            if bee.sprite == 1 then 
                bee.sprite = 2
            else 
                bee.sprite = 1
            end
        end
    end

    if (bee.alive == false) then
        if (bee.sprite == bee.deathsprites[0]) then
            bee.sprite = bee.deathsprites[1]
        elseif (bee.sprite == bee.deathsprites[1]) then
            bee.sprite = bee.deathsprites[2]
        else
            bee.sprite = bee.deathsprites[0]
        end
    else
        if ((bee.tick % 5) == 0) then
            if bee.sprite == 1 then 
                bee.sprite = bee.sprites[1]
            else 
                bee.sprite = bee.sprites[2]
            end
        end
    end
    spr(bee.sprite, bee.x, bee.y, bee.width, bee.height)
end