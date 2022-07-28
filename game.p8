pico-8 cartridge // http://www.pico-8.com
version 36
__lua__

game_objects = {}

function _init()
	foreach(game_objects, 
        function(go) 
            if go.init != nil then
                go:init()
            end
        end)
end

function _update()
    foreach(game_objects, move_actor)
end

function _draw()
    foreach(game_objects, draw_actor)
end

function move_actor(actor)
end

function draw_actor(actor)
end

-- page 1
#include page1.lua
-->8
-- page 2
#include page2.lua
-->8
-- page 3
#include page3.lua
-->8
-- page 4
#include page4.lua
__gfx__
00000000ecdcecdcedcdedcdeeeeeeeeeee000eee000eeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000
00000000eecdcdceeedcecdeeeeeeeeeee0dcd0e0dcd0eeeee0000eee0000eee0000000000000000000000000000000000000000000000000000000000000000
00700700e000d0dee000c0ceeeeeeeeeee0dccd0dccd0eeee0ddcc0e0ccdd0ee0000000000000000000000000000000000000000000000000000000000000000
000770000aa90a0e0aa90a0eeeeeeeeeeee0dcd0dcd0eeeeee0ddcd0dcdd0eee0000000000000000000000000000000000000000000000000000000000000000
000770000a090a900a090a90eeeeeeeeeeee0c0dcd0eeeeeeee0dc0dcdd0eeee0000000000000000000000000000000000000000000000000000000000000000
007007000aa90a900aa90a90eeeeeeeeee0000d00000eeeeee0000d00000eeee0000000000000000000000000000000000000000000000000000000000000000
00000000e0990990e0990990eeeeeeeee0aaa90a90a90eeee0aaa90a90a90eee0000000000000000000000000000000000000000000000000000000000000000
00000000ee00e00eee00e00eeeeeeeee0aaaaa90a90a90ee0aaaaa90a90a90ee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa00a90a90a900e0aa00a90a90a900e0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa80a90a90a90600aa80a90a90a90600000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aaaaa90a90a900e0aaaaa90a90a900e0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee0aaa90a90000eeee0aaa90a90000eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00a900905150eeee00a900905150eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee00000011b10eeeee00000011b10eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00b551115150eeee00b551115150eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee0000000000eeeeee0000000000eeee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000ee44444e444e4eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e4444444444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000444444444444404eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000004444444444444440eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000004444444444444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e444444444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e44444444444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e4444eee4444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e44444ee44444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000ee4444eee4444eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000edddddeeedddddeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000666660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000611160000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddd0616160000101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000
d11111dc616160001010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000
d61616dc616160000101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000
d11111dc611160001010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000
d61616dc61616c001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
d11111dc61616c001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
d616162828616c001111111ddd111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
d1111ddddddddd0011111dddddd11111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000
d6161d28282222001212ddddddd21212121212121212121200000000000000000000000000000000000000000000000000000000000000000000000000000000
d1111d26262626002121ddddddd1212ddddd21212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000
d6161d2222222200121ddddddd121dddddddd2121212121200000000000000000000000000000000000000000000000000000000000000000000000000000000
d1111d26262626002dddddddddddddddddddd12121212ddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
d6161d2222222200ddddddddddddddddddddd2222222dddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
d1111d2222222200dddddddddddddddddddd2222222ddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000ddddddddddddddddd2222222222ddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
5555555555555555ddddddddddddddd2222222222222dddd00000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddddddddddddd222222222112222dd00000000000000000000000000000000000000000000000000000000000000000000000000000000
dddddddddddddddd222ddddddddddd22222222221122222200000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666662222222222222222222222221122222200000000000000000000000000000000000000000000000000000000000000000000000000000000
656565656565656522266666622222222222222211ddd22200000000000000000000000000000000000000000000000000000000000000000000000000000000
565656565656565622261111622222222222222211ddd22200000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666662226166162222222fff2fff211ddd22200000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111115526111162222222f4f2f4f211ddd25500000000000000000000000000000000000000000000000000000000000000000000000000000000
10001110000111006526166162222222f4f2f4f211ddd25600000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111115526111162222222f4f2f4f211ddd25500000000000000000000000000000000000000000000000000000000000000000000000000000000
11000001111000116526166169999922f4f2f4f211ddd25600000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111115526111169696922f4fdf4f211ddd25500000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111116526166169999922f4fdf4f211ddd25600000000000000000000000000000000000000000000000000000000000000000000000000000000
10000110000110005526111169696922f4fdf4f211ddd25500000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111115526111169999922f4fdf4f211ddd25500000000000000000000000000000000000000000000000000000000000000000000000000000000
