boss_manager = {}

boss = {
    sprites = {4, 6},
    x=90,
    y=screen_height/2,
    tick = 0
}

add(game_objects, boss_manager)

function boss_manager:init()
end

function boss_manager:update()
    --if(score > 20) then
        if (boss.x > 90) then
            boss.x -= 1
            boss.tick += 1
        end
    --end
end

function boss_manager:draw()
    --if(score > 20) then

        score = 1

        if boss.tick % 4 == 0 then
            boss.y -= 1
        elseif bee.tick % 2 == 0 then
            boss.y += 1
        end
    
        if boss.tick % 5 == 0 then
            if boss.sprite == 1 then 
                boss.sprite = 2
            else 
                boss.sprite = 1
            end
        end

        spr(boss.sprites, boss.x, boss.y)
    --end
end
