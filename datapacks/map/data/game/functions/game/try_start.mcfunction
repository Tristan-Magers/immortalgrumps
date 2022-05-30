scoreboard players set .players .game 0
execute as @a run scoreboard players add .players .game 1
execute if score .players .game >= .2 .num run function game:game/start
execute if score .players .game <= .1 .num run say not enough players