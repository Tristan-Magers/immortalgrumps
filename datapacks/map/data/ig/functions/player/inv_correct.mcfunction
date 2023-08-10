tag @s remove paper_off
tag @s[nbt={Inventory:[{id:"minecraft:paper",Slot:-106b}]}] add paper_off

clear @s[tag=paper_off] carrot_on_a_stick
execute as @s[tag=paper_off] run function ig:player/store_cards
execute as @s[tag=paper_off] run function ig:player/unstore_cards

tag @s remove diamond_off
tag @s[nbt={Inventory:[{id:"minecraft:diamond",Slot:-106b}]}] add diamond_off
clear @s[tag=diamond_off] carrot_on_a_stick
clear @s[tag=diamond_off] diamond
give @s[tag=diamond_off] diamond

tag @s remove emerald_off
tag @s[nbt={Inventory:[{id:"minecraft:emerald",Slot:-106b}]}] add emerald_off
clear @s[tag=emerald_off] carrot_on_a_stick
clear @s[tag=emerald_off] emerald
give @s[tag=emerald_off] emerald

tag @s remove redstone_off
tag @s[nbt={Inventory:[{id:"minecraft:redstone",Slot:-106b}]}] add redstone_off
clear @s[tag=redstone_off] carrot_on_a_stick
clear @s[tag=redstone_off] redstone
give @s[tag=redstone_off] redstone

tag @s remove gold_ingot_off
tag @s[nbt={Inventory:[{id:"minecraft:gold_ingot",Slot:-106b}]}] add gold_ingot_off
clear @s[tag=gold_ingot_off] carrot_on_a_stick
clear @s[tag=gold_ingot_off] gold_ingot
give @s[tag=gold_ingot_off] gold_ingot

clear @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

clear @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] written_book
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] hotbar.8 with written_book{title:"How To Play",author:"",pages:['[{"text":"Goal: ","bold":true},{"bold":false,"text":"Collect all colors of gems. (or three in 1v1)"},{"bold":false,"text":"\\n\\nBreak Royal Towers to steal gems."},{"bold":false,"text":"\\n\\nBuy Buildings and Avisors to attack and defend yourself."},{"bold":false,"text":"\\n\\nBattle with cards, in a Rock-Paper-Scissors type fight."}]']} 1
