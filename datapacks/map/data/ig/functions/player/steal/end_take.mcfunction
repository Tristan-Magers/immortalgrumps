tag @e remove take

clear @s
function ig:player/unstore_cards

item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

tag @s remove taking
tag @s add select

scoreboard players set @s click 0

