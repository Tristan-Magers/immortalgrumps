clone 3 -60 1 -3 -60 -5 -3 -60 -64
fill 1 -60 -57 -1 -60 -56 minecraft:soul_soil
clone 14 -60 -9 8 -60 -7 -3 -60 -67

setblock 5 -60 -67 minecraft:netherite_block
setblock 7 -60 -67 minecraft:netherite_block

setblock -5 -60 -67 minecraft:lodestone
setblock -7 -60 -67 minecraft:lodestone

#
summon armor_stand 3 -59.5 -68 {Tags:["newbuild","gems"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand 0 -59.5 -64 {Tags:["newbuild","building","royal","new_roy"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 3 -59.5 -61 {Tags:["newbuild","building","gtower","left"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 0 -59.5 -58 {Tags:["newbuild","building","center"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -3 -59.5 -61 {Tags:["newbuild","building","gtower","right"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -5 -59.5 -67 {Tags:["newbuild","building","store","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -7 -59.5 -67 {Tags:["newbuild","building","store","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand 5 -59.5 -67 {Tags:["newbuild","building","store2","1","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 7 -59.5 -67 {Tags:["newbuild","building","store2","2","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -1 -59.5 -66 {Tags:["newbuild","building","advisor","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 1 -59.5 -66 {Tags:["newbuild","building","advisor","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

scoreboard players set @e[tag=newbuild] player_num 3

scoreboard players set @e[tag=newbuild,tag=gems] gem3 3

tag @e[tag=newbuild] remove newbuild