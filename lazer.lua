Lazer = {}
function Lazer:new(source, angle, speed, colour)
    local dmg = 1
    if(source == player) then
        dmg = player.weapons.lazer.dmg
    end

    local x_offset = (source.width * 8)
    if(angle < 0) then
        x_offset = 0
    end

    o = {
        x = source.x + x_offset,
        y = source.y + (source.height * 4),
        angle = angle,
        speed = speed,
        colour = colour,
        source = source,
        dmg = dmg,
        life = 60
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Lazer'
    self.__collisions = true
	return o
end

function Lazer:init()

end

function Lazer:update()
    if(self.life == 0) then
        self:remove()
        do return end
    end
    self.life -= 1
    
    if (self.speed ~= 0) then
        local offset = getOffset(self.speed, self.angle)
        self.x += offset.x
        self.y += offset.y
    end

    for object in all(game_objects) do
        if(not (object.__type == 'Lazer') and object.__collisions) then
            -- prevent self-firing
            if(self.source ~= object) then
                if (checkForLazerCollision(object, self)) then
                    if(object.hurt ~= nil) then
                        object:hurt(self.dmg)
                        self:remove()
                    end
                end
            end
        end
    end
end

function Lazer:draw()
    pset(self.x, self.y , self.colour)
    for i = 0,4 do
        local offset = getOffset(i, self.angle)
        pset(self.x - offset.x, self.y - offset.y, self.colour)
    end
end

function Lazer:hurt()
    self.remove(self)
end

function Lazer:remove()
    del(game_objects, self)
end

function fire_lazer(source, angle, speed, colour)
    local lazer = Lazer:new(source, angle, speed, colour)
    lazer:init()
    add(game_objects, lazer)
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