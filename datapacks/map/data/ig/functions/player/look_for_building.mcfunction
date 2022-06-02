#
execute positioned ~ ~1.6 ~ if entity @e[tag=building,type=armor_stand,distance=..1.0] run tag @e[tag=building,type=armor_stand,distance=..1.1] add seen_me
execute positioned ~ ~1.6 ~ if entity @e[tag=building,type=armor_stand,distance=..1.0] run scoreboard players set @s t1 0
scoreboard players remove @s t1 1
execute if entity @s[scores={t1=1..}] positioned ^ ^ ^0.5 run function ig:player/look_for_building

execute if entity @s[tag=turn] run tag @e[tag=seen_me] add glow
execute if entity @s[tag=turn] run tag @e[tag=seen_me,tag=target] add target_seen
tag @e[tag=seen_me] add seen