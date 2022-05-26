scoreboard players remove @e[tag=gems,tag=take] gem2 1

scoreboard players operation @e[tag=gems] player_num -= @s player_num

scoreboard players add @e[tag=gems,scores={player_num=0}] gem2 1

scoreboard players operation @e[tag=gems] player_num += @s player_num

execute as @e[tag=gems] at @s run function game:ent/gem/display

function game:player/steal/try_end_take