execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper"}}] run scoreboard players remove @s player_price 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:1}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"Hero","color":"dark_aqua"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:2}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"COOL Hero","color":"dark_aqua"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:3}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"LEGENDARY Hero","color":"dark_aqua"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:4}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"Monster","color":"dark_green"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:5}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"COOL Monster","color":"dark_green"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:6}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"LEGENDARY Monster","color":"dark_green"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:7}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"Assassin","color":"dark_purple"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:8}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"COOL Assassin","color":"dark_purple"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:9}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"LEGENDARY Assassin","color":"dark_purple"}'}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:10}}}] run summon marker ~ ~ ~ {Tags:["chattext","spent"],CustomName:'{"text":"TRAP","color":"gray"}'}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:0}}}] run clear @s paper{type:0} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:1}}}] run clear @s paper{type:1} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:2}}}] run clear @s paper{type:2} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:3}}}] run clear @s paper{type:3} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:4}}}] run clear @s paper{type:4} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:5}}}] run clear @s paper{type:5} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:6}}}] run clear @s paper{type:6} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:7}}}] run clear @s paper{type:7} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:8}}}] run clear @s paper{type:8} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:9}}}] run clear @s paper{type:9} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:10}}}] run clear @s paper{type:10} 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run function ig:player/click/stop_store

execute if entity @s[scores={player_price=..0}] if entity @e[tag=selected,tag=store] run function ig:player/click/bought_store
execute if entity @s[scores={player_price=..0}] if entity @e[tag=selected,tag=store2] run function ig:player/click/bought_advisor


