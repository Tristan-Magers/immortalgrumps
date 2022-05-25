#reset
fill -12 -60 -69 12 -60 -66 minecraft:cyan_terracotta
fill 12 -60 -66 15 -60 -41 minecraft:cyan_terracotta
fill 12 -60 -42 -13 -60 -39 minecraft:cyan_terracotta
fill -12 -60 -42 -15 -60 -67 minecraft:cyan_terracotta

fill -3 -60 -44 3 -60 -64 minecraft:grass_block
fill 10 -60 -57 -10 -60 -51 minecraft:grass_block

fill -3 -60 -48 3 -60 -46 minecraft:soul_soil
fill -6 -60 -51 -8 -60 -57 minecraft:soul_soil
fill -3 -60 -60 3 -60 -62 minecraft:soul_soil
fill 6 -60 -51 8 -60 -57 minecraft:soul_soil

fill 1 -60 -55 -1 -60 -53 minecraft:soul_soil

#players
execute if score .player1 .game = .1 .num run function game:game/start_player/1
execute if score .player2 .game = .1 .num run function game:game/start_player/2
execute if score .player3 .game = .1 .num run function game:game/start_player/3
execute if score .player4 .game = .1 .num run function game:game/start_player/4
execute as @e[tag=gems] at @s run function game:ent/gem/display

#fill mid edges of player areas
fill 5 -60 -59 -5 -60 -49 minecraft:grass_block replace minecraft:polished_blackstone_bricks

#decoration
#fill -4 -60 -44 4 -60 -44 minecraft:green_concrete_powder replace grass_block
#fill -10 -60 -50 -10 -60 -58 minecraft:green_concrete_powder replace grass_block

#setblock -3 -60 -57 minecraft:netherite_block
#setblock -3 -60 -51 minecraft:netherite_block

#setblock 3 -60 -51 minecraft:lodestone
#setblock 3 -60 -57 minecraft:lodestone

#buy spots
#NOTE:moved

#setup default buildings
scoreboard players set @e[tag=building] buildType 0
scoreboard players set @e[tag=royal] buildType 1000
scoreboard players set @e[tag=gtower] buildType 999
tag @e[tag=gtower] remove gtower

