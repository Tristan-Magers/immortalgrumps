#builder advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tellraw @p[tag=turn] [{"text":"Buildings Healed!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num run scoreboard players operation @s buildHealth = @s buildHealthMax
execute as @e[tag=advisor,tag=!store2,scores={buildType=3}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!advisor,tag=!store,tag=!store2,scores={buildType=1..}] if score @s player_num = @p[tag=turn] player_num at @s run function game:ent/building/health_update

#investor advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run tellraw @s [{"text":"+1 Card (Mob)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=1}] if score @s player_num = @p[tag=turn] player_num as @e[tag=building,tag=!store,tag=!advisor,scores={buildType=1..},tag=built] if score @s player_num = @p[tag=turn] player_num if score @s buildHealth < @s buildHealthMax as @a[tag=turn] run function game:player/draw

#
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run function game:player/rebuild