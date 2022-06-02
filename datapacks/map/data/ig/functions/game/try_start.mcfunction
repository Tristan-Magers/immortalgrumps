scoreboard players set .players .game 0
execute as @a run scoreboard players add .players .game 1
execute if score .players .game >= .2 .num run function ig:game/start
execute if score .players .game <= .1 .num run tellraw @a {"text":"NOT ENOUGH PLAYERS (requires 2)","color":"#781D1D"}