game_map = {}
Map = {}
function Map:new()
    o = {
        map_x = 0,
        map_spd = 0.5
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Map'
    self.__collisions = false
	return o
end

function Map:update()
    if(score < boss_score) then
        self.map_spd = min(3, max(0.5, 0.5 + (0.5 * (score / 30))))
    else
        self.map_spd = 1
    end
    self.map_x -= self.map_spd
    if (self.map_x <- 127) then 
        self.map_x = 0 
    end
end

function Map:draw()
    map(0, 0, self.map_x, 0, 16, 16)
    map(0, 0, 128 + self.map_x, 0, 16, 16)
end
