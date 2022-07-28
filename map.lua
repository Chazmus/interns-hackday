map_manager = {}

add(game_objects, map_manager)

function map_manager:init()
    map_x=0
    map_spd= 1
end

function map_manager:update()
    map_x-=map_spd
    if map_x<-127 then map_x=0 end
end

function map_manager:draw()
    map(0,0,map_x,0,16,16)
    map(0,0,128+map_x,0,16,16)
end
