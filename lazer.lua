lazers = {}

function fire_lazer(actor, angle, speed) 
    add(lazers, {
        x = actor.x + (actor.width * 4),
        y = actor.y + (actor.height * 4),
        angle = angle,
        speed = speed,
        colour = 12,
        life = 60,
        source = actor -- use this to prevent self-fire collision
    })
end

function update_lazers() 
    for lazer in all(lazers) do
        if(lazer.life == 0) then
            del(lazers, lazer)
        end
        lazer.life -= 1
        
        if (lazer.speed ~= 0) then
            local offset = getOffset(lazer.speed, lazer.angle)
            lazer.x += offset.x
            lazer.y += offset.y
        end
    end
end

function draw_lazers()
    for lazer in all (lazers) do
        pset(lazer.x, lazer.y , lazer.colour)
        for i=0,4 do
            local offset = getOffset(i, lazer.angle)
            pset(lazer.x - offset.x, lazer.y - offset.y, 12)
        end
    end
end
function getOffset(r, a)
    return {
        x = -r * sin(norm(a)),
        y = -r * cos(norm(a))
    }
end
function norm(angle)
    return angle / 360
end