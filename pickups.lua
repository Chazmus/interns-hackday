pickup_types = {}
add(pickup_types, { -- lazer_cooldown
    id = 1,
    sprite = 49,
    effects = { -- Likelihood here is the position in a 1 - 100 slice to trigger the effect, see user.lua > apply_pickup()
        {
            likelihood = 5,
            effect = function() -- extra lazer per shot! [5% chance]
                player.weapons.lazer.lazers_per_shot = max(3, player.weapons.lazer.lazers_per_shot + 1)
            end
        },
        {
            likelihood = 20,
            effect = function() -- decrease spread [20% chance]
                player.weapons.lazer.spread = max(0, player.weapons.lazer.spread - 1)
            end
        },
        {
            likelihood = 75,
            effect = function() -- decrease cooldown, but increase spread [75% chance]
                player.weapons.lazer.cooldown = max(5, player.weapons.lazer.cooldown - 1)
                player.weapons.lazer.spread = min(20, player.weapons.lazer.spread + 1)
            end
        }
    }
})
add(pickup_types, { -- player_hp
    id = 2,
    sprite = 34,
    effects = {
        {
            likelihood = 100,
            effect = function()
                player.hp += 5
            end
        }
    }
})
add(pickup_types, { -- slow bees
    id = 3,
    sprite = 33,
    effects = {
        {
            likelihood = 100,
            effect = function()
                game_map.map_spd = max(1, game_map.map_spd - 1.5)
            end
        }
    }
})

Pickup = {}
function Pickup:new(x, y, type)
    o = {
        x = x,
        y = y,
        height = 1,
        width = 1,
        type_id = type.id,
        sprite = type.sprite,
        effects = type.effects
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
        self.x -= game_map.map_spd + 0.5
    end
end

function Pickup:draw()
    spr(self.sprite, self.x, self.y, self.width, self.height)
end