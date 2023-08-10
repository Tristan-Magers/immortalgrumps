tag @a remove placing
tag @a remove placing_adv

scoreboard players operation @e[tag=building] player_num -= @s player_num

tag @e remove action_build
tag @e[tag=building,scores={player_num=0}] add action_build
tag @e[tag=building,scores={buildType=0}] remove action_build
tag @e[tag=building,tag=store] add action_build
tag @e[tag=building,tag=store2] add action_build
tag @e[tag=building,scores={buildType=0}] remove action_build
tag @e[tag=building,tag=advisor,tag=!store2] remove action_build

execute unless entity @e[tag=building,scores={buildType=0,player_num=0}] run tag @e[tag=building,tag=store] remove action_build

scoreboard players operation @e[tag=building] player_num += @s player_num

tag @e[tag=royal] remove action_build