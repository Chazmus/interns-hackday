rockets = {}
function update_rocket(rocket)
    move_rocket(rocket)
end

function draw_rocket(rocket)
    if rocket.flip then 
        rocket.sprite = 101
        rocket.flip = false
    else 
        rocket.sprite = 117
        rocket.flip = true
    end

    spr(rocket.sprite, rocket.x, rocket.y, rocket.width, rocket.height)
end

function update_rockets()
    foreach(rockets, 
        function(rocket) 
            update_rocket(rocket)
        end)
end

function draw_rockets()
    foreach(rockets, 
        function(rocket) 
            draw_rocket(rocket)
        end)
end

function move_rocket(rocket)    
    if (rocket.x > 200) then 
        del(rocket)
    else
        rocket.x += rocket.speed
        rocket.speed += 0.2
    end
end

function gun()
    rocket = {}

    rocket.sprite = 101
    rocket.height = 1
    rocket.width = 2
    rocket.x = player.x
    rocket.y = player.y
    rocket.speed = 1
    rocket.flip = true

    gun_sound()

    add(rockets, rocket)

end

--add(game_objects,rockets)