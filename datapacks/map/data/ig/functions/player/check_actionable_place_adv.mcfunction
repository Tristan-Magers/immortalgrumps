scoreboard players operation @e[tag=building] player_num -= @s player_num

tag @e remove action_build
tag @e[tag=building,tag=advisor,tag=!store2,scores={player_num=0}] add action_build
execute if entity @e[tag=building,tag=advisor,tag=!store2,scores={player_num=0,buildType=0}] run tag @e[scores={player_num=0,buildType=1..}] remove action_build
tag @e[tag=building,tag=advisor,tag=!store2,scores={player_num=0,buildType=9}] add action_build

scoreboard players operation @e[tag=building] player_num += @s player_num