function init_map()
    map_x=0
    map_spd=1
end

function draw_map()
    cls()
    rect(0, 0, 127, 127, 8)
    map(0,map_x,0,16,16) 
    map(0,0,128+map_x,0,16,16)
end

function update_map()
    map_x-=map_spd
    if map_x<-127 then map_x=0 end
end
