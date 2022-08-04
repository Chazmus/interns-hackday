Rocket = {}
function Rocket:new(source, speed)
    local dmg = 3
    if(source == player) then
        dmg = player.weapons.rocket.dmg
    end

    local x_offset = (source.width * 8)
    if(speed < 0) then
        x_offset = -16 
    end

    o = {
        x = source.x + x_offset,
        y = source.y + (((source.height * 8) / 2) - 4),
        speed = speed,
        sprites = {101, 117},
        height = 1,
        width = 2,
        source = source,
        sprite_index = 1,
        flip_x = (speed < 0),
        flip_y = false,
        dmg = dmg
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Rocket'
    self.__collisions = true
	return o   
end

function Rocket:init()
    gun_sound()
end

function Rocket:update()
    if ((self.x > screen_width) or (self.x < -(self.width * 8))) then 
        self:remove()
    else
        self.x += self.speed
        self.speed += 0.2
        self.sprite_index = ((self.sprite_index + 1) % count(self.sprites)) + 1
    end

    for object in all(game_objects) do
        -- don't check lazers, the lazers will check for intersections with rockets
        if(not (object.__type == 'Lazer' or object.__type == 'Rocket') and object.__collisions) then
            -- prevent self-firing
            if(self.source ~= object) then
                if (checkForCollision(self, object)) then
                    if(object.hurt ~= nil) then
                        object:hurt(self.dmg)
                        self:remove()
                    end
                end
            end
        end
    end
end

function Rocket:draw()
    spr(self.sprites[self.sprite_index], self.x, self.y, self.width, self.height, self.flip_x, self.flip_y)
end

function Rocket:hurt()
    self.remove(self)
end

function Rocket:remove()
    del(game_objects, self)
end

function fire_rocket(source)
    local speed = 1
    if(source ~= player) then
        speed = -1
    end
    local rocket = Rocket:new(source, speed)
    rocket:init()
    add(game_objects, rocket)
end