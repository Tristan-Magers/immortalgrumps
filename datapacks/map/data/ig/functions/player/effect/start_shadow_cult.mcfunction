tellraw @a [{"selector":"@a[tag=turn]"},{"text":" : ","color":"gray"},{"text":"Picking an advisor to remove.","color":"gold"}]

function ig:player/check_actionable_adv_remove

function ig:player/store_cards
clear @s

function ig:player/remove_tags
tag @s add removing

scoreboard players set @s click 0

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.1 with barrier{CustomModelData:2,display:{Name:'[{"text":"Cancel","color":"dark_red","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1
