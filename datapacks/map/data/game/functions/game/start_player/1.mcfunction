#
clone 3 -60 1 -3 -60 -5 -3 -60 -50
fill 1 -60 -52 -1 -60 -51 minecraft:soul_soil
clone 14 -60 -9 8 -60 -7 -3 -60 -43

setblock -5 -60 -41 minecraft:netherite_block
setblock -7 -60 -41 minecraft:netherite_block

setblock 5 -60 -41 minecraft:lodestone
setblock 7 -60 -41 minecraft:lodestone

#
summon armor_stand -3 -59.5 -40 {Tags:["newbuild","gems"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand 0 -59.5 -44 {Tags:["newbuild","building","royal"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 3 -59.5 -47 {Tags:["newbuild","building","gtower","right"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 0 -59.5 -50 {Tags:["newbuild","building","center"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -3 -59.5 -47 {Tags:["newbuild","building","gtower","left"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand 5 -59.5 -41 {Tags:["newbuild","building","store","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 7 -59.5 -41 {Tags:["newbuild","building","store","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -5 -59.5 -41 {Tags:["newbuild","building","store2","1","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -7 -59.5 -41 {Tags:["newbuild","building","store2","2","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -1 -59.5 -42 {Tags:["newbuild","building","advisor","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand 1 -59.5 -42 {Tags:["newbuild","building","advisor","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

scoreboard players set @e[tag=newbuild] player_num 1

scoreboard players set @e[tag=newbuild,tag=gems] gem1 3

tag @e[tag=newbuild] remove newbuild
