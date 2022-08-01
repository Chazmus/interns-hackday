pickup_types = {}
add(pickup_types, { -- lazer_cooldown
    sprite = 49
})
add(pickup_types, { -- player_hp
    sprite = 34
})

Pickup = {}
function Pickup:new(x, y, type_id)
    o = {
        x = x,
        y = y,
        height = 1,
        width = 1,
        type_id = type_id,
        sprite = pickup_types[type_id].sprite
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Pickup'
    self.__collisions = false
	return o
end

function Pickup:init()

end

function Pickup:update()
    if (self.x < -tile_width) then 
        del(game_objects, self)
    else
        self.x -= map_spd + 0.5
    end
end

function Pickup:draw()
    spr(self.sprite, self.x, self.y, self.width, self.height)
end