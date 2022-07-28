pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- page 1
#include main.lua
-->8
-- page 2
#include bees.lua
-->8
-- page 3
#include map.lua
-->8
-- page 4
#include page4.lua
-->8
-- page 5
#include user.lua
__gfx__
00000000ecdcecdcedcdedcdeeeeeeeeeee000eee000eeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eecdcdceeedcecdeeeeeeeeeee0dcd0e0dcd0eeeee0000eee0000eeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00700700e000d0dee000c0ceeeeeeeeeee0dccd0dccd0eeee0ddcc0e0ccdd0eeeeeeeeee00000000000000000000000000000000000000000000000000000000
000770000aa90a0e0aa90a0eeeeeeeeeeee0dcd0dcd0eeeeee0ddcd0dcdd0eeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000770000a090a900a090a90eeeeeeeeeeee0c0dcd0eeeeeeee0dc0dcdd0eeeeebbbbbbe00000000000000000000000000000000000000000000000000000000
007007000aa90a900aa90a90eeeeeeeeee0000d00000eeeeee0000d00000eeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e0990990e0990990eeeeeeeee0aaa90a90a90eeee0aaa90a90a90eeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000ee00e00eee00e00eeeeeeeee0aaaaa90a90a90ee0aaaaa90a90a90eeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa00a90a90a900e0aa00a90a90a900e0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aa80a90a90a90600aa80a90a90a90600000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeee0aaaaa90a90a900e0aaaaa90a90a900e0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee0aaa90a90000eeee0aaa90a90000eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00a900905150eeee00a900905150eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee00000011b10eeeee00000011b10eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeee00b551115150eeee00b551115150eee0000000000000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeeeeeeeee0000000000eeeeee0000000000eeee0000000000000000000000000000000000000000000000000000000000000000
00000000e000000ee000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000000444444007777770eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000000644446007788770eeeeeeeeeeee00000000eeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
0000000006a99a6007888870eeeeeeeeee00aaaaaaaa00eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
0000000006a99a6007888870eeeeeeeee0aaaaaaaaaa990eeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
0000000006aaaa6007788770eeeeeeee0d0aaaaaa9990010eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000000666666007777770eeeeeeee0dd0aaaa9000d510eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e000000ee000000eeeeeeeeee000aa990ddd000eeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e000000ee000000eeeeeeeeee0d009900000dd0eeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000000663366005555550eeeeeeee0ddd0990dddddd10eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000063bb36005555550eeeeeeee0ddd090dddddd510eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
0000000003bbbb3005555550eeeeeeee0dddd0ddddddd510eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
0000000003bbbb3005555550eeeeeeee0dddddddddd55110eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000063bb36005555550eeeeeeeee0dddddd5551110eeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
000000000663366005555550eeeeeeeeee001111111100eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000e000000ee000000eeeeeeeeeeeee00000000eeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeeeee00000eeeeeeeeeeeeeeeeeeeeeee0eeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000eeeeeeeeeeeeeeeeee008888800eeeeeeeeee000eeeeeeee00eeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000
00000000ee00000e000e0eeee088888888800eeeeee0088800000eee080eee0000000eee00000000000000000000000000000000000000000000000000000000
00000000e0444440444040ee08888888888800eeee088888888000ee08800088888000ee00000000000000000000000000000000000000000000000000000000
00000000044444444444440e088888888880440ee08888888880440e088888888880440e00000000000000000000000000000000000000000000000000000000
00000000444444444444074008888888880407400888888888040740088888888804074000000000000000000000000000000000000000000000000000000000
00000000444444444444004508888000888000450888888888800045088888888880004500000000000000000000000000000000000000000000000000000000
00000000444444444444444408800444088044440888880088804444088888808880444400000000000000000000000000000000000000000000000000000000
0000000004440fff4444440008040fff40080400088800ff00080400088880ff0008040000000000000000000000000000000000000000000000000000000000
00000000044440fff44400ee004440fff4408080088040fff4408080e08800fff440808000000000000000000000000000000000000000000000000000000000
00000000e044400004440eee00444000044408080004400004440808e00040000444080800000000000000000000000000000000000000000000000000000000
00000000e044440e044440ee0044440e04444008e044440e04444008e044440e0444400800000000000000000000000000000000000000000000000000000000
00000000ee04440ee04440ee0e04440ee04440e0ee04440ee04440e0ee04440ee04440e000000000000000000000000000000000000000000000000000000000
00000000ddd000dddd000dddddd000dddd000dddddd000dddd000dddddd000dddd000ddd00000000000000000000000000000000000000000000000000000000
00000000edddddeeedddddeeedddddeeedddddeeedddddeeedddddeeedddddeeedddddee00000000000000000000000000000000000000000000000000000000
00000000ee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceeeee7cceee00000000000000000000000000000000000000000000000000000000
00000000ee0500400eeeeeeeeeee00400eeeeeeeeaeeeeeeeeeeeeeeeeeeeeeaeeee9eee00000000000000000000000000000000000000000000000000000000
00000000e055044440eeeeeeee00044440eeeeeeaeeeeaaeeeeeeeee9eee99a99eee99ee00000000000000000000000000000000000000000000000000000000
00000000ee055040740eeeeeee04444084000eeeeeeaa99977eee77e9999999999e999e900000000000000000000000000000000000000000000000000000000
00000000e04055000450eeeee04400000003300eeea9998855555557e99999999999999900000000000000000000000000000000000000000000000000000000
00000000e04405550440eeeee000555553333330eeeaa99877eee77ee99999989899999e00000000000000000000000000000000000000000000000000000000
0000000004444055500eeeee005555555530000eeaeeeaaeeeeeeeeee99999988899999e00000000000000000000000000000000000000000000000000000000
00000000444440505550eeee55505550000eeeeeeeeeeeeeeeeeeeeeee999988899999ae00000000000000000000000000000000000000000000000000000000
000000004444f05500550eee0504050400eeeeeeeeeeeeeeeeeeeeee9ee9898888899eee00000000000000000000000000000000000000000000000000000000
000000004444f000440330ee40440504440eeeeeeeeeeeeeeeeeeeeee9e99888899999ee00000000000000000000000000000000000000000000000000000000
000000000444f0e04400330e0444f0e0440eeeeeaeeeeeeeeeeeeeeee99998988899999e00000000000000000000000000000000000000000000000000000000
00000000044440ee00ee0330044440ee00eeeeeeeeeaeeeeeeeeeeeee99999989899999900000000000000000000000000000000000000000000000000000000
00000000e044440eeeeee030e044440eeeeeeeeeeeeeeaaa77eee77ee999ea999999999e00000000000000000000000000000000000000000000000000000000
00000000e044440eeeeeee0ee044440eeeeeeeeeeeaeaa9855555557e999ee999e9999ee00000000000000000000000000000000000000000000000000000000
00000000dd0000dddddddddddd0000ddddddddddeeea998877eee77e9e99ee99eee9999e00000000000000000000000000000000000000000000000000000000
00000000edddddeeedddddeeedddddeeedddddeeeeeea99aeeeeeeeeeee99ee9eee999e900000000000000000000000000000000000000000000000000000000
00000000ee7cceeeee7cceeeee7cceeeee7cceeeeaeeeaaeeeeeeeeeeeee9ee9eeee9eee00000000000000000000000000000000000000000000000000000000
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
