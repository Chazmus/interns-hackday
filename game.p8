pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
#include screen.lua
#include main.lua
#include map.lua
#include bees.lua
#include user.lua
#include music.lua
#include lazer.lua
__gfx__
00000000ecdcecdcedcdedcdeeeeeeeeeee000eee000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000
00000000eecdcdceeedcecdeeeeeeeeeee0dcd0e0dcd0eeeee0000eee0000eeeeeeeeeeeeeeeeeeeeee0000000000eeeeeeeeeee000000000000000000000000
00700700e000d0dee000c0ceeeeeeeeeee0dccd0dccd0eeee0ddcc0e0ccdd0eeeeeeeeeeeeeeeeeee00999999999900eeeeeeeee000000000000000000000000
000770000aa90a0e0aa90a0eeeeeeeeeeee0dcd0dcd0eeeeee0ddcd0dcdd0eeeeeeeeeeeeeeeeeee099aaaaaaaaaa990eeeeeeee000000000000000000000000
000770000a090a900a090a90eeeeeeeeeeee0c0dcd0eeeeeeee0dc0dcdd0eeeeebbbbbbeeeeeeee09aaaaaaaaaaaaaa90eeeeeee000000000000000000000000
007007000aa90a900aa90a90eeeeeeeeee0000d00000eeeeee0000d00000eeeeeeeeeeeeeeeeee09aaaa00000000aaaa90eeeeee000000000000000000000000
00000000e0990990e0990990eeeeeeeee0aaa90a90a90eeee0aaa90a90a90eeeeeeeeeeeeeeeee09a00099999999000a90eeeeee000000000000000000000000
00000000ee00e00eee00e00eeeeeeeee0aaaaa90a90a90ee0aaaaa90a90a90eeeeeeeeeeeeeee0000999aaaaaaaa9990000eeeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa00a90a90a900e0aa00a90a90a900eeeeeeeeeeeee09999aaaaaaaaaaaaaa99990eeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa80a90a90a90600aa80a90a90a9060eeeeeeeeeeee09aaaaaaaaaaaaaaaaaaaa90eeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aaaaa90a90a900e0aaaaa90a90a900eeeeeeeeeeeee09aaaaaaaaaaaaaaaaaaaa90eeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee0aaa90a90000eeee0aaa90a90000eeeeeeeeeeeeeee09aa0000000000000000aa90eeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00a900905150eeee00a900905150eeeeeeeeeeeeeeee0009999999999999999000eeeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee00000011b10eeeee00000011b10eeeeeeeeeeeeeee0999aaa000aaaaaaaaaa9990eeee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00b551115150eeee00b551115150eeeeeeeeeeeeee09aaaaa00001aaaaaaaaaaaa90eee000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee0000000000eeeeee0000000000eeeeeeeeeeeeeee09aaaaa00001aaaaaaaaaaaa90eee000000000000000000000000
00000000e000000ee000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaaa00001aaaaaaaaaaaa90eee000000000000000000000000
000000000444444007777770eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaaa00011aaaaaaaaaaaa90eee000000000000000000000000
000000000644446007788770eeeeeeeeeeee00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0999aaa111aaaaaaaaaa9990eeee000000000000000000000000
0000000006a99a6007888870eeeeeeeeee00aaaaaaaa00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0009999999999999999000eeeee000000000000000000000000
0000000006a99a6007888870eeeeeeeee0aaaaaaaaaa990eeeeeeeeeeeeeeeeeeeeeeeeeeeee09aa0000000000000000aa90eeee000000000000000000000000
0000000006aaaa6007788770eeeeeeee0d0aaaaaa9990010eeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaaaaaaaaaaaaaaaaaa90eeee000000000000000000000000
000000000666666007777770eeeeeeee0dd0aaaa9000d510eeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaaaaaaaaaaaaaaaaaa90eeee000000000000000000000000
00000000e000000ee000000eeeeeeeeee000aa990ddd000eeeeeeeeeeeeeeeeeeeeeeeeeeeee09999aaaaaaaaaaaaaa99990eeee000000000000000000000000
00000000e000000ee000000eeeeeeeeee0d009900000dd0eeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000999aaaaaaaa9990000eeeee000000000000000000000000
000000000663366005555550eeeeeeee0ddd0990dddddd10eeeeeeeeeeeeeeeeeeeeeeeeeeeeee09a00099999999000a90eeeeee000000000000000000000000
00000000063bb36005555550eeeeeeee0ddd090dddddd510eeeeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaa00000000aaaa90eeeeee000000000000000000000000
0000000003bbbb3005555550eeeeeeee0dddd0ddddddd510eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09aaaaaaaaaaaaaa90eeeeeee000000000000000000000000
0000000003bbbb3005555550eeeeeeee0dddddddddd55110eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee099aaaaaaaaaa990eeeeeeee000000000000000000000000
00000000063bb36005555550eeeeeeeee0dddddd5551110eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00999999999900eeeeeeeee000000000000000000000000
000000000663366005555550eeeeeeeeee001111111100eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000000000eeeeeeeeeee000000000000000000000000
00000000e000000ee000000eeeeeeeeeeeee00000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000
eeb3eeeeeeeeeeeeeeeeeeeeee000000000eeeeeeeeee000eeeeeeee00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000eeeee00000000
ebbb3eeeee00000e000e0eeee088888888800eeeeee0088800000eee080eee0000000eeeeeeeeeeeee0eeeeeee00000e000e0eeee088888888800eee00000000
bbbbb3eee0444440444040ee08888888888800eeee088888888000ee08800088888000eeeeeeeeeee0a0eeeee0444440444040ee08888888888800ee00000000
eeb33eee044444444444440e088888888880440ee08888888880440e088888888880440eeeeee0ee0a90eeee044444444444440e088888888880440e00000000
eeb3eeee0444444444440740088888888804074008888888880407400888888888040740eee00a0e0a9a0eee0444444444440740088888888804074000000000
eeeeeeee0444444444440045088880008880004508888888888000450888888888800045ee0aa9a0a999a0ee0444444444440045088880008880004500000000
eeeeeeee0444444444444444088004440880444408888800888044440888888088804444eee00a99999a0eee0444444444444444088004440880444400000000
eeeeeeee04440fff4444440008040fff40080400088800ff00080400088880ff00080400eeeee0a9999a0eee04440fff4444440008040fff4008040000000000
eeeeeeee044440fff44400ee004440fff4408080088040fff4408080e08800fff4408080ee000a999aa9a0ee044440fff44400ee004440fff440808000000000
ee00e0eee044400004440eee00444000044408080004400004440808e000400004440808e0aaa9aa9a00aa0ee044400004440eee004440000444080800000000
e0aa0a0ee044440e044440ee0044440e04444008e044440e04444008e044440e04444008ee000a00aa0e00eee044440e044440ee0044440e0444400800000000
ee0a9aa0ee04440ee04440ee0e04440ee04440e0ee04440ee04440e0ee04440ee04440e0eeee0a0e0aa0eeeeee04440ee04440ee0e04440ee04440e000000000
ee09990eddd000dddd000dddddd000dddd000dddddd000dddd000dddddd000dddd000dddeeeee0eee00eeeeeddd000dddd000dddddd000dddd000ddd00000000
e0a09aa0edddddeeedddddeeedddddeeedddddeeedddddeeedddddeeedddddeeedddddeeeeeeeeeeeeeeeeeeedddddeeedddddeeedddddeeedddddee00000000
ee00a00eee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeeeeeeeeeeeeeeeeeee7cceeeee7cceeeee7cceeeee7cceee00000000
eeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee7cceeeee7cceeeee7cceeeee7cceee00000000
ee00e00eee0500400eeeeeeeeeee00400eeeeeeeeaeeeeeeeeeeeeeeeeeeee0eeeee0eeeeeeeee0eeeee0eeeeeeeeeeeeeee0eeeeeeee000eeeeeeee00000000
e0aa0aa0e055044440eeeeeeee00044440eeeeeeaeeeeaaeeeeeeeee0eeee0a0eee0a0ee0eee00a0eee0a0eeeeee0eeeeee0a0eeeee0088800000eee00000000
0aa9a9a0ee055040740eeeeeee04444084000eeeeeeaa99977eee77e000ee09a0e0aa0ee0000aa9a0e0aa0ee0eeeeeeeee0e00eeee088888888000ee00000000
0a999a0ee04055000450eeeee04400000003300eeea9998855555557e0a00999a0aa9a0ee0a99999a0aa9a0ee00eeeeeeeee0a0ee08888888880440e00000000
e0aa9a0ee04405550440eeeee000555553333330eeeaa99877eee77ee0a999999aa999a0e0a900909a0099a0e0a0ee0eeee090ee088888888804074000000000
e0aaaaa004444055500eeeee005555555530000eeaeeeaaeeeeeeeeeee0a989998989a0eee00ee0e00ee0a0eee00ee0eeeee000e088888888880004500000000
0a0a0aa0044440505550eeee05505550000eeeeeeeeeeeeeeeeeeeeeeee099898989aa0eeee00eeeeee0aa0eeeeeeeeeeeee0a0e088888008880444400000000
e0e0e00e0444f05500550eee0504050400eeeeeeeeeeeeeeeeeeeeeee00a98888899a0eee00a90eeee09a0eee0eeeeeeeee0a0ee088800ff0008040000000000
eeeeeeee0444f000440330ee00440504440eeeeeeeeeeeeeeeeeeeee0aa98989989990ee0aa90ee0eee090ee0a0eeeeeeeee00ee088040fff440808000000000
e0eeee0e0444f0e04400330e0444f0e0440eeeeeaeeeeeeeeeeeeeeee0a9989989899a0ee0a90e00e0e09a0ee0a0eeeeeeee0a0e000440000444080800000000
eeeeeea0e044440e00ee0330e044440e00eeeeeeeeeaeeeeeeeeeeeeee0a9998999899a0ee0a9098090e09a0e00eeeeeeeeee0a0e044440e0444400800000000
0aeeee0ee044440eeeeee030e044440eeeeeeeeeeeeeeaaa77eee77eeee0a9998998aa0eeee0a999890e0a0eeee0eee0eeeeee00ee04440ee04440e000000000
e0aeeeeedd0000dddddddd0ddd0000ddddddddddeeaeaa9855555557ee0aa9aa999a90eeee0aa9aa999090eeee0a0e0a00eeeeeeddd000dddd000ddd00000000
eeeee0eeedddddeeedddddeeedddddeeedddddeeeeea998877eee77ee0aa9aa0a9a0aa0ee0aa9aa0a9a0aa0ee0a0eee0aa0eeeeeedddddeeedddddee00000000
0eee0eeeee7cceeeee7cceeeee7cceeeee7cceeeeeeea99aeeeeeeee0a00a00e0a00a0e00a00a00e0a00a0e00a00eeee00eeeeeeee7cceeeee7cceee00000000
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeeaaeeeeeeeeee0ee0eeee0ee0eeee0ee0eeee0ee0eeee0ee0eeeeeeeeeeeee7cceeeee7cceee00000000
5526111166666922f4f5f4f261616255000000000000000000000000000000006666666666666666666666666666666600000000000000000000000000000000
112616616111691111f5f4f261116211000000000000000000000000000000006666666666666666666666666666666600000000000000000000000000000000
ddddddd16161691addddddd26161621a010101010101010101010101010101016666666666666666666666666666666600000000000000000000000000000000
d11111dc6161691ad11111dc6161621a101010101010101010101010101010106666666666666666666666666666666600000000000000000000000000000000
d61616dc61616911d61616dc61616211010101010101010101010101010101016666666666666666666666666666666600000000000000000000000000000000
d11111dc6111691ad11111dc6111621a101010101010101010101010101010106666666666666666666666666666666600000000000000000000000000000000
d61616dc61616c1ad61616dc61616c1a111111111111111111111111111111116666666666666666666666666666666600000000000000000000000000000000
d11111dc61616c11d11111dc61616c11111111111111111111111111111111116666666666666666666666666666666600000000000000000000000000000000
d61616dc61616c1ad61616dc61616c1a1111111ddd11111111111111111111116666666666666666666666666666666600000000000000000000000000000000
d1111dddddddddddd1111ddddddddddd11111dddddd1111111111111111111116666666666666666666666666666666600000000000000000000000000000000
d6161d222222222dd6161d222222222d1212ddddddd2121212121212121212126666666666666666666666666666666600000000000000000000000000000000
d1111d262626262dd1111d262626262d2121ddddddd1212ddddd2121212121216666666666666666666666666666666600000000000000000000000000000000
d6161d222222222dd6161d222222222d121ddddddd121dddddddd212121212126666666666666666666666666666666600000000000000000000000000000000
d1111d262626262dd1111d262626262d2dddddddddddddddddddd12121212ddd6666666666666666666666666666666600000000000000000000000000000000
d6161d222222222dd6161d222222222dddddddddddddddddddddd2222222dddd6666666666666666666666666666666600000000000000000000000000000000
d1111d222222222dd1111d222222222ddddddddddddddddddddd2222222ddddd6666666666666666666666666666666600000000000000000000000000000000
00000000000000000000000000000000ddddddddddddddddd2222222222ddddd6666666666666666666666666666666600000000000000000000000000000000
55555555555555555555555555555555ddddddddddddddd2222222222222dddd6666666666666666666666666666666600000000000000000000000000000000
ddddddddddddddddddddddddddddddddddddddddddddddd222222222112222dd6666666666666666666666666666666600000000000000000000000000000000
dddddddddddddddddddddddddddddddd222ddddddddddd2222222222112222226666666666666666666666666666666600000000000000000000000000000000
66666666666666666666666666666666222222222222222222222222112222226666666666666666666666666666666600000000000000000000000000000000
6565656565656565656565656565656522266666622222222222222211ddd2226666666666666666666666666666666600000000000000000000000000000000
5656565656565656565656565656565622261111622222222222222211ddd2226666666666666666666666666666666600000000000000000000000000000000
666666666666666666666666666666662226166162222222fff2fff211ddd2226666666666666666666666666666666600000000000000000000000000000000
111111111111111111111111111111115526111162222222f4f2f4f211ddd2556666666666666666666666666666666600000000000000000000000000000000
100011100001110010001110000111006526166162222222f4f2f4f2118dd2566666666666666666666666666666666600000000000000000000000000000000
111111111111111111111111111111115526111162222222f4f2f4f2116dd2556666666666666666666666666666666600000000000000000000000000000000
110000011110001111000001111000116526166169999922f4f2f4f21666d2566666666666666666666666666666666600000000000000000000000000000000
111111111111111111111111111111115526111169696922f4fdf4f2666662556666666666666666666666666666666600000000000000000000000000000000
111111111111111111111111111111116526166169999922f4fdf4f2611162566666666666666666666666666666666600000000000000000000000000000000
100001100001100010000110000110005526111169696922f4fdf4f2616162556666666666666666666666666666666600000000000000000000000000000000
111111111111111111111111111111115526166169999922f4fdf4f2616162556666666666666666666666666666666600000000000000000000000000000000
00eeeeeeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
080eee0000000eee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08800088888000ee0000000000000000000000000000000000000000000000000000000000000000000000777000000000000000000000000000000000000000
088888888880440e0000000000000000000000000000000000888800888800088880000880008800000007777700000000000000000000000000000000000000
08888888880407400000000000000000000000000000000000088800888000800088000880008800000077777770000000000000000000000000000000000000
08888888888000450000000000000000000000000000000000088800888000800088000880008800000077070770000000000000000000000000000000000000
08888880888044440000000000000000000000000000000000008800880000800088000880008800000077070770000000000000000000000000000000000000
088880ff000804000000000000000000000000000000000000008800880000800088000880008800000007777770000000000000000000000000000000000000
e08800fff44080800000000000000000000000000000000000000888800000800088000880008800000007777700000000000000000000000000000000000000
e0004000044408080000000000000000000000000007770000000088000000800088000880008800000007070700000000000000000000000000000000000000
e044440e044440080000000000000000000000000077777000000088000000800088000880008800000000000000000000000000000000000000000000000000
ee04440ee04440e00000000000000000000000000777777700000088000000800088000880008800000000000000000000000000000000000000000000000000
ddd000dddd000ddd0000000000000000000000000770707700000088000000800088000080008000000000000000000000000000000000000000000000000000
edddddeeedddddee0000000000000000000000000770707700000088000000088880000008880000000000000000000000000000000000000000000000000000
ee7cceeeee7cceee0000000000000000000000000077777700000000000000000000000000000000000000000000000000000000000000000000000000000000
ee7cceeeee7cceee0000000000000000000000000077777000000000000000000000000000000000000000000000000000000000000000000000000000000000
ee0500400eeeeeeeeeee00400eeeeeee000000000070707000000000000000000000000000000000000000000000000000000000000000000000000000000000
e055044440eeeeeeee00044440eeeeee000000000000000000008888880000888888888800088888800000000000000000000000000000000000000000000000
ee055040740eeeeeee04444084000eee000000000000000000008000088800088888888000888888000000000000000000000000000000000000000000000000
e04055000450eeeee04400000003300e000000000000000000088000008880000088000000880000000000000000000000000000000000000000000000000000
e04405550440eeeee000555553333330000000000000000000088000000880000088000000880000000000000000000000000000000000000000000000000000
04444055500eeeee005555555530000e000000000000000000088000000088000088000000880000000000000000000000000000000000000000000000000000
044440505550eeee05505550000eeeee000000000000000000088000000088000088000000888880000000000000000000000000000000000000000000000000
0444f05500550eee0504050400eeeeee000000000000000000088000000088000088000000888888800000000000000000000000000000000000000000000000
0444f000440330ee00440504440eeeee000000000000000000088000000088000088000000888888000000000000000000000000000000000000000000000000
0444f0e04400330e0444f0e0440eeeee000000000000000000088000000880000088000000880000000000000000000000000000000000000000000000000000
e044440e00ee0330e044440e00eeeeee000000000000000000088000000880000088000000880000000000000000000000000000000000000000000000000000
e044440eeeeee030e044440eeeeeeeee000000000000000000088000008800000088000000880000000000000000000000000000000000000000000000000000
dd0000dddddddd0ddd0000dddddddddd000000000000000000088000088000000088000000880000000000000000000000000000000000000000000000000000
edddddeeedddddeeedddddeeedddddee000000000000000000088000888000008888880000888888000000000000000000000000000000000000000000000000
ee7cceeeee7cceeeee7cceeeee7cceee000000000000000000008888800000888888888800088888800000000000000000000000000000000000000000000000
ee7cceeeee7cceeeee7cceeeee7cceee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
8485868784858687848586878485868700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
9495969794959697949596979495969700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
a4a5a6a7a4a5a6a7a4a5a6a7a4a5a6a700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b4b5b6b7b4b5b6b7b4b5b6b7b4b5b6b700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8081828380818283808182838081828300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
9091929390919293909192939091929300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
a0a1a2a3a0a1a2a3a0a1a2a3a0a1a2a300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b0b1b2b3b0b1b2b3b0b1b2b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
a0a1a2a3a0a1a2a3a3a0a1a2a3a0a1a200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
231000000303003000030000303003000030000303007000030000705007050030000b0500b050030000300003030030000300003030030000300003030070000300007050070500300003030030300300003000
0010000000000000001d70000600276201f7002270000000000002760000000227002762022700000001b70000000000001d70000600276201f70000000000000000027600000002270027620227001d7001b700
a91000002e75230752337520a7023375200002337522e7522e7522e7522b752297522975229752277522775229752297522975227752297522b7522e7522e7522975229752297522e7522e7522e7522e7522e752
a91000002e75230752337520a7023375200002337522e7522e7522e7522b752297522975229752277522775229752297522975227752297522b7522e7522e7522975229752297522775227752277522775227752
120100003d5503c5503b5503955038550365503555034550335503255031550305502f5502e5502d5502c5502b5502a55029550285502755030500305002f5002e5002e5002d5002c5002b5002b5002a50029500
00020000336602e6602b660296602665024650226501e6501d6501a65019650176501665014650136501265010650106500e6500d6400c6400a64009630086400663006620056100561004600046000460004600
400100000000201352036020135201602006520165202352016520235201352013520060200652006520275201752006520065200602006020060201602006020060200602000020160201602036020260201602
__music__
01 00010244
02 00010344

