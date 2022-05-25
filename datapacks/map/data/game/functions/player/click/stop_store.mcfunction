function game:player/unstore_cards
title @s times 2 10 6
title @s title {"text":"BUY CANCELED","color":"dark_green"}
title @s subtitle {"text":"","color":"dark_green"}

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

tag @s add select
tag @s remove buying

function game:player/click/select_building
scoreboard players set @s click 0