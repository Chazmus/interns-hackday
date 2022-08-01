boss = {}
add(game_objects, boss)

function boss:init()
    -- boss.sprites = {12}
    -- boss.sprite_index = 0
    boss.sprite = 12
    boss.width = 
    boss.height = 4
    boss.x = 90
    boss.y = screen_height/2 - (boss.height * 4)
    boss.tick = 0
    boss.active = false
end

function boss:update()
    if(boss.active) then
        if (boss.x > 90) then
            boss.x -= 1
            boss.tick += 1
        end
        -- boss.sprite_index = ((boss.sprite_index + 1) % count(boss.sprites)) + 1
    end
end

function boss:draw()
    if(boss.active) then
        if boss.tick % 4 == 0 then
            boss.y -= 1
        elseif bee.tick % 2 == 0 then
            boss.y += 1
        end

        spr(boss.sprite, boss.x, boss.y, boss.width, boss.height)
    end
end
