clone 3 -60 1 -3 -60 -5 -10 -60 -57
fill -2 -60 -55 -3 -60 -53 minecraft:soul_soil
clone 4 -60 -5 6 -60 1 -13 -60 -57

setblock -13 -60 -61 minecraft:netherite_block
setblock -13 -60 -59 minecraft:netherite_block

setblock -13 -60 -49 minecraft:lodestone
setblock -13 -60 -47 minecraft:lodestone

setblock -7 -60 -54 minecraft:redstone_block

#
summon armor_stand -14 -59.5 -51 {Tags:["newbuild","gems"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -10 -59.5 -54 {Tags:["newbuild","building","royal","new_roy"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -7 -59.5 -57 {Tags:["newbuild","building","gtower","left"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -4 -59.5 -54 {Tags:["newbuild","building","center"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -7 -59.5 -51 {Tags:["newbuild","building","gtower","right"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -13 -59.5 -49 {Tags:["newbuild","building","store","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -13 -59.5 -47 {Tags:["newbuild","building","store","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -13 -59.5 -59 {Tags:["newbuild","building","store2","1","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -13 -59.5 -61 {Tags:["newbuild","building","store2","2","advisor"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

summon armor_stand -12 -59.5 -53 {Tags:["newbuild","building","advisor","1"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}
summon armor_stand -12 -59.5 -55 {Tags:["newbuild","building","advisor","2"],CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b}

scoreboard players set @e[tag=newbuild] player_num 4

scoreboard players set @e[tag=newbuild,tag=gems] gem4 3

tag @e[tag=newbuild] remove newbuild