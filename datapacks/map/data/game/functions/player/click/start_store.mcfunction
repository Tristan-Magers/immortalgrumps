kill @e[tag=chattext,tag=spent]

scoreboard players operation @e[tag=text] entID -= @e[tag=building,tag=selected,tag=store,limit=1] entID

#say Buying @e[tag=text,tag=name,scores={entID=0}]
scoreboard players operation @s player_price = @e[tag=building,tag=selected,tag=store,limit=1] buildCost
scoreboard players operation @s player_price = @e[tag=building,tag=selected,tag=store2,limit=1] buildCost

scoreboard players operation @e[tag=text] entID += @e[tag=building,tag=selected,tag=store,limit=1] entID

title @s times 2 26 4
title @s title {"text":"BUYING","color":"dark_green"}
title @s subtitle {"text":"Select Cards To Spend","color":"red","bold":"true"}

tag @s remove select
tag @s add buying

function game:player/store_cards

clear @s lime_dye
clear @s barrier
item replace entity @s hotbar.7 with barrier{CustomModelData:2,display:{Name:'[{"text":"Cancel","color":"dark_red","bold":true,"italic":false},{"text":" (returns cards)","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1
