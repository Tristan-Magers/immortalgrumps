tag @s remove done

scoreboard players add @s t2 1
scoreboard players set @s[scores={t2=6..}] t2 1

scoreboard players operation @a player_num -= @s t2

execute if entity @a[scores={player_num=0}] run tag @s add done
execute if entity @a[scores={player_num=0}] run execute as @a[scores={player_num=0},limit=1] at @s run function game:player/click/start_turn

scoreboard players operation @a player_num += @s t2

execute unless entity @s[tag=done] run function game:player/search_for_next_player