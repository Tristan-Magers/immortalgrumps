tag @e remove royaldown

scoreboard players add @s player_attack 1
scoreboard players add @s t1 1

scoreboard players set @s[scores={player_attack=5}] player_attack 1

scoreboard players operation @e[tag=building] player_num -= @s player_attack

execute if entity @e[tag=building,scores={player_num=0,buildType=1..},tag=royal,tag=built] if entity @e[tag=building,scores={player_num=0,buildType=1..},tag=left,tag=built] run tag @e[tag=building,scores={player_num=0,buildType=1..},tag=left,tag=built] add target
execute if entity @e[tag=building,scores={player_num=0,buildType=1..},tag=royal,tag=built] unless entity @e[tag=building,scores={player_num=0,buildType=1..},tag=left,tag=built] run tag @e[tag=building,scores={player_num=0,buildType=1..},tag=royal,tag=built] add target

tag @e[tag=building,scores={player_num=0},tag=royal,tag=!built] add royaldown

scoreboard players operation @e[tag=building] player_num += @s player_attack

execute unless entity @e[tag=target] unless entity @e[tag=building,tag=royaldown] if entity @s[scores={t1=..2}] run function ig:player/attack/find_right_rec

execute unless entity @s[tag=has_center] run tag @e[tag=building,scores={buildType=1..},tag=center,tag=built] add target

tag @e[tag=target] add glow
tag @e[tag=target] add seen
tag @e[tag=target] add seen_perm