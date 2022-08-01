boss_score = 100
Boss = Bee:new(screen_width, ((screen_height / 2) - 8), 15, 12, {12}, 4, 4, true, {12})
function Boss:new()
    o = {
        speed = 2,
        dy = -2
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Boss'
    self.__collisions = true
	return o    
end

function Boss:init()
    every(15, function() fire_lazer(self, -90, 4, 8) end)
end

function Boss:update()
    -- boss enters screen from the right
    if (self.x > 90) then
        self.x -= 1
    end

    -- Boss strafes up and down
    self.y += self.dy
    if(self.y == 0) then
        self.dy = self.speed
    end
    if (self.y == (screen_height - (self.height * tile_height))) then
        self.dy = -self.speed
    end
end

function Boss:draw()
    spr(self.sprite, self.x, self.y, self.width, self.height)
end
