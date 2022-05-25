scoreboard players add @s buildType 0

#
execute if entity @s[tag=!ID] run function game:ent/getid

#restock store
execute if entity @s[tag=store,tag=!built,scores={buildType=..0}] run function game:drawcard/building

#restock store
execute if entity @s[tag=store2,tag=!built,scores={buildType=..0}] run function game:drawcard/advisor

#
tp @s ~ ~ ~ ~1 ~

#execute as @s[tag=seen] at @s run particle minecraft:end_rod ~ ~3 ~ 0 0 0 0 1 force

execute as @s[tag=advisor,tag=!built,scores={buildType=1..}] at @s run function game:ent/building/build_advisor
execute as @s[tag=!advisor,tag=!built,scores={buildType=1..}] at @s run function game:ent/building/build

execute as @s[tag=glow,tag=!glow2] at @s run function game:ent/building/glow
execute as @s[tag=!glow,tag=glow2] at @s run function game:ent/building/glow_stop

execute as @s[tag=seen,tag=!seen2,tag=!advisor] at @s run function game:ent/building/more_info
execute as @s[tag=seen,tag=!seen2,tag=advisor] at @s run function game:ent/building/more_info_advisor
execute as @s[tag=!seen,tag=seen2] at @s run function game:ent/building/less_info

execute as @s[tag=seen_perm,tag=!seen_perm2] at @s run function game:ent/building/glow_color
execute as @s[tag=!selected] at @s run function game:ent/building/glow_color
#execute as @s[tag=target] at @s run function game:ent/building/glow_color

tag @s[tag=seen] add seen2
tag @s[tag=!seen] remove seen2

tag @s[tag=seen_perm] add seen_perm2
tag @s[tag=!seen_perm] remove seen_perm2

tag @s[tag=glow] add glow2
tag @s[tag=!glow] remove glow2

#
execute if entity @s[scores={buildType=..0},tag=!advisor] run item replace entity @s armor.head with minecraft:tinted_glass
execute if entity @s[scores={buildType=1..}] run item replace entity @s armor.head with minecraft:air
