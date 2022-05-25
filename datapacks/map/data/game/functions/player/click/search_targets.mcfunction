tellraw @s {"text":"Building selected. Choose a building to attack."}
tag @s remove has_center

scoreboard players operation @s player_attack = @s player_num
scoreboard players set @s t1 0

scoreboard players operation @e[tag=building] player_num -= @s player_attack

execute if entity @e[tag=building,scores={player_num=0,buildType=1..},tag=center,tag=built] run tag @s add has_center

scoreboard players operation @e[tag=building] player_num += @s player_attack

execute if entity @e[tag=selected,tag=right] run function game:player/attack/find_right_rec
execute if entity @e[tag=selected,tag=left] run function game:player/attack/find_left_rec
execute if entity @e[tag=selected,tag=center] run function game:player/attack/find_center_rec

tag @s remove has_center