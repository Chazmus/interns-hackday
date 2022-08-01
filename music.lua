Music = {}
function Music:new()
    o = {}
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Music'
    self.__collisions = false
	return o
end

function Music:init()
    music(0)
end

function laser() 
    sfx(4)
end

function gun_sound()
    sfx(5)
end
function pain_sound()
    sfx(6)
end
