Bee = {}
function Bee:new(x, y, hp, sprite, sprites, width, height, has_lazer, deathsprites)
    o = {
        x = x,
        y = y,
        iframe = 0,
        hp = hp,
        sprite = sprite,
        sprites = sprites,
        width = width,
        height = height,
        has_lazer = has_lazer,
        deathsprites = deathsprites,
        render = true,
        bob = true
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Bee'
    self.__collisions = true
	return o
end

function Bee:init()
    -- register callback every 2 ticks that toggles render if iframes active
    every(2, function() self.check_iframe_flicker(self) end)

    -- apply bobbing motion every 2 ticks
    every(2, function()
        if(self.bob) then
            self.y -= 1
        else
            self.y += 1
        end
        self.bob = not self.bob
    end)

    -- If bee has lazer, shoot every 30 ticks
    if(self.hasLazer) then
        every(30, function()
            fire_lazer(self, -90, 4, 11)
        end)
    end

    -- register callback every 5 ticks that toggles the bee animation
    every(5, function() self.toggle_animation(self) end)
end

function Bee:update()
    self.iframe = max(0, self.iframe - 1)
    if (self.hp > 0) then
        self.move(self)
    else
        -- only kill after death animation has played out
        if self.sprite == self.deathsprites[2] then
            self:kill()
        end
    end
end

function Bee:draw()
    if(self.render) then
        spr(self.sprite, self.x, self.y, self.width, self.height)
    end
end

function Bee:toggle_animation()
    -- if(self.iframe == 0) then
        self.render = true
        if (self.hp > 0) then
            if self.sprite == self.sprites[2] then 
                self.sprite = self.sprites[1]
            else 
                self.sprite = self.sprites[2]
            end
        else
            if (self.sprite == self.deathsprites[1]) then
                self.sprite = self.deathsprites[2]
            elseif (self.sprite == self.deathsprites[2]) then
                self.sprite = self.deathsprites[3]
            else
                self.sprite = self.deathsprites[1]
            end
        end
    -- end
end

function Bee:check_iframe_flicker()
    if(self.iframe > 0) then
        self.render = not self.render
    end
end

function Bee:move()
    if (self.x < -tile_width) then 
        self:kill()
    else
        self.x -= game_map.map_spd + 0.5
    end
end

function Bee.hurt(self, amount)
    if(self.iframe == 0) then
        self.hp = max(0, self.hp - amount)
        self.iframe = 2
        pain_sound()
    end
end

function Bee:kill()
    del(game_objects, self)
end