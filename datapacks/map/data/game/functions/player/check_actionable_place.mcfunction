scoreboard players operation @e[tag=building] player_num -= @s player_num

tag @e remove action_build
tag @e[tag=building,scores={buildType=0,player_num=0}] add action_build

scoreboard players operation @e[tag=building] player_num += @s player_num

execute if entity @e[tag=action_build,tag=left] run tag @e[tag=center,tag=action_build] remove action_build
execute if entity @e[tag=action_build,tag=right] run tag @e[tag=center,tag=action_build] remove action_build