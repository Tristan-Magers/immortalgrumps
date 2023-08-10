tag @a remove taking
tag @a remove battle
tag @a remove battle_wait
tag @a remove buying
tag @a remove placing
tag @a remove removing
tag @a remove placing_adv

tag @a remove bargain

tag @a remove turn
function ig:player/remove_tags

tag @s add turn
tag @s add select

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

function ig:player/draw
function ig:player/draw
function ig:player/draw
function ig:player/draw

execute as @s run function ig:player/check_actionable

tag @e remove new_royal

execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run tag @s add new_royal
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run scoreboard players set @s buildType 1000
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run execute as @e[tag=left,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run execute as @e[tag=right,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999

#
function ig:player/teleport

# title
title @s times 10 30 30
title @s title {"text":"Your Turn"}
title @s subtitle {"text":"+4 Cards"}

# timer
bossbar remove timer
bossbar add timer [{"selector":"@s"},{"text":"'s Turn","color":"white"}]

bossbar remove timer_p
bossbar add timer_p [{"text":"YOUR TURN"}]

bossbar set minecraft:timer color purple
bossbar set minecraft:timer_p color green

scoreboard players set @s turn_time 1800
scoreboard players set @s[tag=first_turn] turn_time 3600

execute store result bossbar minecraft:timer value run scoreboard players get @s turn_time
execute store result bossbar minecraft:timer max run scoreboard players get @s turn_time

execute store result bossbar minecraft:timer_p value run scoreboard players get @s turn_time
execute store result bossbar minecraft:timer_p max run scoreboard players get @s turn_time

execute at @s run bossbar set timer players @a[distance=0.001..]
bossbar set timer_p players @s