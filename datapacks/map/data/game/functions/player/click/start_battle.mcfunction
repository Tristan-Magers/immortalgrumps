say START BATTLE

tag @a remove battle
tag @a remove battle_wait

tag @s remove select
tag @s add battle

tag @a remove defender

tag @e[tag=target,tag=!target_seen] remove seen_perm
tag @e[tag=!target_seen] remove target

execute as @e[tag=target_seen] run scoreboard players operation @a player_num -= @s player_num

tag @a[scores={player_num=0}] add defender
tag @a[scores={player_num=0}] add battle

title @a[scores={player_num=0}] times 8 40 20
title @a[scores={player_num=0}] title {"text":"ATTACKED","color":"dark_red"}
title @a[scores={player_num=0}] subtitle {"text":"CHOOSE A CARD","color":"gold"}

execute as @e[tag=target_seen] run scoreboard players operation @a player_num += @s player_num

scoreboard players set @a player_card_select -1
scoreboard players set @a player_card_opponent -1

scoreboard players set @s click 0