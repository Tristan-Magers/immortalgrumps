# The Pit effect
execute as @e[tag=!advisor,tag=!store,tag=!store2,scores={buildType=5}] at @s if score @s player_num = @p[tag=turn] player_num run function ig:ent/building/break

# Bargain effect
tag @a remove bargain
execute as @e[tag=advisor,tag=!store2,scores={buildType=10}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add bargain

execute if entity @s[tag=bargain] as @e[tag=store,scores={buildCost=..2}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 0","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store2,scores={buildCost=..2}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 0","color":"dark_aqua"}'}

execute if entity @s[tag=bargain] as @e[tag=store,scores={buildCost=3..}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store2,scores={buildCost=3..}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}

# Dragon effect
tag @a remove dragon1
tag @a remove dragon2

execute as @e[tag=1,tag=advisor,tag=!store2,scores={buildType=8}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add dragon1
execute as @e[tag=2,tag=advisor,tag=!store2,scores={buildType=8}] if score @s player_num = @p[tag=turn] player_num run tag @a[tag=turn] add dragon2

#investor advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run tellraw @s [{"text":"+1 Card (Mob)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run function ig:player/draw

#builder advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num run scoreboard players add @s buildHealth 2
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth > @s buildHealthMax run scoreboard players operation @s buildHealth = @s buildHealthMax
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num at @s run function ig:ent/building/health_update

#
execute as @e[tag=royal,tag=!built,scores={buildType=..0}] if score @s player_num = @p[tag=turn] player_num run function ig:player/rebuild