execute at @s if entity @s[scores={player_num=3}] run fill ~ ~ ~ ~-10 ~ ~ minecraft:cyan_terracotta
execute at @s if entity @s[scores={player_num=2}] run fill ~ ~ ~ ~ ~ ~10 minecraft:cyan_terracotta
execute at @s if entity @s[scores={player_num=1}] run fill ~ ~ ~ ~10 ~ ~ minecraft:cyan_terracotta
execute at @s if entity @s[scores={player_num=4}] run fill ~ ~ ~ ~ ~ ~-10 minecraft:cyan_terracotta

execute at @s if entity @s[scores={player_num=1}] run setblock ~ ~ ~ minecraft:deepslate_emerald_ore
execute at @s if entity @s[scores={player_num=2}] run setblock ~ ~ ~ minecraft:deepslate_gold_ore
execute at @s if entity @s[scores={player_num=3}] run setblock ~ ~ ~ minecraft:deepslate_diamond_ore
execute at @s if entity @s[scores={player_num=4}] run setblock ~ ~ ~ minecraft:deepslate_redstone_ore

scoreboard players set @s gems 0

scoreboard players operation @s gem1t = @s gem1
scoreboard players operation @s gem2t = @s gem2
scoreboard players operation @s gem3t = @s gem3
scoreboard players operation @s gem4t = @s gem4

scoreboard players operation @s gems += @s gem1
scoreboard players operation @s gems += @s gem2
scoreboard players operation @s gems += @s gem3
scoreboard players operation @s gems += @s gem4

function game:ent/gem/display_rec

execute at @s if entity @s[scores={player_num=3}] run tp @s 3 -59.5 -68
execute at @s if entity @s[scores={player_num=2}] run tp @s 14 -59.5 -57
execute at @s if entity @s[scores={player_num=1}] run tp @s -3 -59.5 -40
execute at @s if entity @s[scores={player_num=4}] run tp @s -14 -59.5 -51