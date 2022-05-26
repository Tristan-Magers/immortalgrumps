tag @a remove battle
tag @a remove battle_wait
tag @a remove buying
tag @a remove placing
tag @a remove removing
tag @a remove placing_adv
tag @a remove select

tag @a remove turn
function game:player/remove_tags

tag @s add turn
tag @s add select

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

function game:player/draw
function game:player/draw
function game:player/draw
function game:player/draw

execute as @s run function game:player/check_actionable

tag @e remove new_royal

execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run tellraw @a [{"selector":"@a[tag=turn]"},{"text":" REBUILT","color":"blue"}]
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run tag @s add new_royal
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run scoreboard players set @s buildType 1000
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run execute as @e[tag=left,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999
execute as @e[tag=royal,tag=!built] if score @s player_num = @p[tag=turn] player_num run execute as @e[tag=right,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999

#
function game:player/teleport