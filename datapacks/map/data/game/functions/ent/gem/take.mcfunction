execute as @a[tag=turn,tag=!taking] run function game:player/store_cards
clear @a[tag=turn]

execute if entity @s[scores={gem1=1..}] run give @a[tag=turn] emerald
execute if entity @s[scores={gem2=1..}] run give @a[tag=turn] gold_ingot
execute if entity @s[scores={gem3=1..}] run give @a[tag=turn] diamond
execute if entity @s[scores={gem4=1..}] run give @a[tag=turn] redstone

clear @a[scores={player_num=1}] emerald
clear @a[scores={player_num=2}] gold_ingot
clear @a[scores={player_num=3}] diamond
clear @a[scores={player_num=4}] redstone

execute if entity @a[tag=turn,nbt=!{Inventory:[{id:"minecraft:emerald"}]},nbt=!{Inventory:[{id:"minecraft:redstone"}]},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]},nbt=!{Inventory:[{id:"minecraft:diamond"}]}] run item replace entity @a[tag=turn] hotbar.7 with barrier{CustomModelData:2,display:{Name:'[{"text":"Cancel","color":"dark_red","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

tag @e remove take
tag @s add take

tag @a[tag=turn] add taking
tag @a[tag=turn] remove select