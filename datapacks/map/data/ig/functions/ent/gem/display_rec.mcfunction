execute at @s if entity @s[scores={player_num=3,gems=1..}] run tp @s ~-1 ~ ~
execute at @s if entity @s[scores={player_num=2,gems=1..}] run tp @s ~ ~ ~1
execute at @s if entity @s[scores={player_num=1,gems=1..}] run tp @s ~1 ~ ~
execute at @s if entity @s[scores={player_num=4,gems=1..}] run tp @s ~ ~ ~-1

execute at @s if entity @s[scores={gem1t=1..}] run setblock ~ ~ ~ minecraft:emerald_ore
execute at @s if entity @s[scores={gem1t=..0,gem2t=1..}] run setblock ~ ~ ~ minecraft:gold_ore
execute at @s if entity @s[scores={gem1t=..0,gem2t=..0,gem3t=1..}] run setblock ~ ~ ~ minecraft:diamond_ore
execute at @s if entity @s[scores={gem1t=..0,gem2t=..0,gem3t=..0,gem4t=1..}] run setblock ~ ~ ~ minecraft:redstone_ore

execute at @s if entity @s[scores={gem1t=..0,gem2t=..0,gem3t=..0,gem4t=1..}] run scoreboard players remove @s gem4t 1
execute at @s if entity @s[scores={gem1t=..0,gem2t=..0,gem3t=1..}] run scoreboard players remove @s gem3t 1
execute at @s if entity @s[scores={gem1t=..0,gem2t=1..}] run scoreboard players remove @s gem2t 1
execute at @s if entity @s[scores={gem1t=1..}] run scoreboard players remove @s gem1t 1

scoreboard players remove @s gems 1

execute at @s if entity @s[scores={gems=1..}] run function ig:ent/gem/display_rec
