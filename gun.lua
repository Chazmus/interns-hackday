rockets = {}
rocket_manager = {}
add(game_objects, rocket_manager)

function rocket_manager:init()

end
function rocket_manager:update()
    foreach(rockets, update_rocket)
end
function rocket_manager:draw()
    foreach(rockets, draw_rocket)
end

function draw_rocket(rocket)
    spr(rocket.sprites[rocket.sprite_index], rocket.x, rocket.y, rocket.width, rocket.height)
end

function update_rocket(rocket)    
    if (rocket.x > 200) then 
        del(rockets, rocket)
    else
        rocket.x += rocket.speed
        rocket.speed += 0.2
        rocket.sprite_index = ((rocket.sprite_index + 1) % count(rocket.sprites)) + 1
    end

    foreach(bees, function(bee) 
            if (checkForCollision(rocket, bee)) then
                kill_bee(bee)
                del(rockets, rocket)
            end
        end)
end

function fire_rocket()
    rocket = {}

    rocket.sprites = {101, 117}
    rocket.sprite_index = 0
    rocket.height = 1
    rocket.width = 2
    rocket.x = player.x
    rocket.y = player.y
    rocket.speed = 1

    gun_sound()

    add(rockets, rocket)

end