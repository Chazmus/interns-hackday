left,right,up,down,fire1,fire2 = 0,1,2,3,4,5
sprite_order = {67, 109, 71, 77, 69, 192}
gun_order = {97, 226, 99, 224}

Player = {}
function Player:new()
    o = {
        x = 0, 
        y = (127 - (2 * tile_height)), 
        hp = 30 ,
        sprite_logic = {
            sprite = 67,
            current_sprite = 0,
            fire_cycle = 0
        },
        height = 2,
        width = 2,
        speed = 2,
        weapons = {
            rocket = {
                dmg = 3
            },
            lazer = {
                dmg = 1,
                speed = 4,
                cooldown = 20,
                spread = 10,
                lazers_per_shot = 1
            }
        },
        cooldowns = {
            iframe = 0,
            lazer = 0
        }
    }
    setmetatable(o, self)
    self.__index = self
    self.__type = 'Player'
    self.__collisions = true
	return o
end

function Player:init()
    -- submit a callback that checks for collisions every 5 frames
    every(5, function() self.check_collisions(self) end)

    -- submit a callback that toggles the player animation every 10 frames
    every(10, function() self.toggle_animation(self) end)
end

-- player update, this is called every frame
function Player:update()
    user_input()
    self.cooldowns.lazer = max(0, self.cooldowns.lazer - 1)
    self.cooldowns.iframe = max(0, self.cooldowns.iframe - 1)
end

function Player:draw()
    if(not (self.cooldowns.iframe > 0 and gametick % 2 == 0)) then
        -- When player takes a hit, for a brief time toggle rendering their sprite.
        spr(self.sprite_logic.sprite, self.x, self.y, self.width, self.height)
    end
end

function Player.check_collisions(self)
    for object in all(game_objects) do
        if(object.__type == 'Bee' or object.type == 'Boss') then
            if(checkForCollision(self, object)) then
                self:hurt(object.hp)
                object:hurt(self.hp)
                break
            end
        elseif(object.__type == 'Pickup') then
            if(checkForCollision(self, object)) then
                apply_pickup(object)
                break
            end
        end
    end
end

function Player.toggle_animation(self)
    if (self.sprite_logic.fire_cycle > 0) then
        self.sprite_logic.sprite = gun_order[self.sprite_logic.fire_cycle]
        if (self.sprite_logic.fire_cycle == 2) then
            fire_rocket(self)
        end
        self.sprite_logic.fire_cycle = (self.sprite_logic.fire_cycle + 1) % count(gun_order)
    else
        self.sprite_logic.current_sprite = (self.sprite_logic.current_sprite + 1) % count(sprite_order)
        self.sprite_logic.sprite = sprite_order[self.sprite_logic.current_sprite + 1]
    end
end

function Player.hurt(self, amount)
    if(self.cooldowns.iframe == 0) then
        self.hp = max(0, self.hp - amount)
        self.cooldowns.iframe = 45
        if(self.hp == 0) then
            game_over = true
        end
    end
end

function user_input()
-- player movements, up, down, left and right
    if (btn(up)) then
        player.y = max(0, player.y - player.speed)
    end

    if (btn(down)) then
        player.y = min(127 - (player.height * tile_height), player.y + player.speed)
    end

    if (btn(right)) then
        player.x = min(120, player.x + player.speed)
    end

    if (btn(left)) then
        player.x = max(0, player.x - player.speed)
    end

    if (btnp(fire1)) then
        player.sprite_logic.fire_cycle = 1
    end
    if (btn(fire2)) then
        if(player.cooldowns.lazer == 0) then
            laser()
            for i = 1,player.weapons.lazer.lazers_per_shot do
                fire_lazer(player, 90 + (rnd(player.weapons.lazer.spread) - 5), player.weapons.lazer.speed, 12)
            end
            player.cooldowns.lazer = player.weapons.lazer.cooldown
        end
    end
end

function apply_pickup(pickup)
    local effectid = rnd(100) + 1
    for effect in all(pickup.effects) do 
        if(effectid <= effect.likelihood) then
            effect.effect()
        end
    end
    
    del(game_objects, pickup)
end