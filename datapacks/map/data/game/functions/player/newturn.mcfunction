# Bargain effect
tag @a remove bargain
execute as @e[tag=advisor,tag=!store2,scores={buildType=10}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add bargain

execute if entity @s[tag=bargain] as @e[tag=store] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 0","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store2] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 0","color":"dark_aqua"}'}

# Dragon effect
tag @a remove dragon1
tag @a remove dragon2

execute as @e[tag=1,tag=advisor,tag=!store2,scores={buildType=8}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add dragon1
execute as @e[tag=2,tag=advisor,tag=!store2,scores={buildType=8}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add dragon2

#investor advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run tellraw @s [{"text":"+1 Card (Mob)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run function game:player/draw

#builder advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tellraw @p[tag=turn] [{"text":"Buildings Healed!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num run scoreboard players operation @s buildHealth = @s buildHealthMax
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num at @s run function game:ent/building/health_update

#
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run function game:player/rebuild