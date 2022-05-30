tellraw @a [{"selector":"@a[tag=turn]"},{"text":"Pick an advisor to remove.","color":"green"}]

function game:player/check_actionable_adv_remove

function game:player/store_cards
clear @s

function game:player/remove_tags
tag @s add removing

scoreboard players set @s click 0

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.1 with barrier{CustomModelData:2,display:{Name:'[{"text":"Cancel","color":"dark_red","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1
