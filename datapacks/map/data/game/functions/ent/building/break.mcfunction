#
tag @e remove replacing
tag @e remove me
tag @s add me

#Thief advisor effect
execute if score @s player_num > @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tellraw @s [{"text":"+2 Cards","color":"white"}]
execute if score @s player_num > @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run function game:player/draw
execute if score @s player_num > @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run function game:player/draw

execute if score @s player_num < @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tellraw @s [{"text":"+2 Cards","color":"white"}]
execute if score @s player_num < @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run function game:player/draw
execute if score @s player_num < @p[tag=turn] player_num as @e[tag=advisor,tag=!store2,scores={buildType=4}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run function game:player/draw

#Forest Village effect
execute if entity @s[scores={buildType=7}] as @a if score @s player_num = @e[tag=me,limit=1] player_num run function game:player/draw
execute if entity @s[scores={buildType=7}] as @a if score @s player_num = @e[tag=me,limit=1] player_num run function game:player/draw

#
scoreboard players operation @e[tag=adv_vis] entID -= @s entID

tag @e[tag=adv_vis,scores={entID=0}] add kill

scoreboard players operation @e[tag=adv_vis] entID += @s entID

#execute at @s run tag @e[tag=adv_vis,distance=..1] add kill

#
scoreboard players operation @e[tag=text] entID -= @s entID

kill @e[tag=text,scores={entID=0}]

scoreboard players operation @e[tag=text] entID += @s entID

scoreboard players set @s buildHealth 0
scoreboard players set @s buildType 0

tag @s remove built
fill ~ ~1 ~ ~ ~1 ~ air

#
scoreboard players operation @e[tag=gems] player_num -= @s player_num

execute if entity @s[tag=royal] as @e[tag=gems,scores={player_num=0}] run function game:ent/gem/take

scoreboard players operation @e[tag=gems] player_num += @s player_num

execute if entity @s[tag=!advisor] as @e[tag=building,scores={buildType=1..},tag=built,tag=center] if score @s player_num = @e[tag=me,limit=1] player_num run tag @s add replacing

tag @e remove me

execute if entity @e[tag=replacing,tag=building] run scoreboard players operation @s buildType = @e[tag=replacing,tag=building,limit=1] buildType
execute if entity @e[tag=replacing,tag=building] run scoreboard players operation @s buildHealth = @e[tag=replacing,tag=building,limit=1] buildHealth
execute if entity @e[tag=replacing,tag=building] run execute as @e[tag=replacing,tag=building,limit=1] at @s run function game:ent/building/break