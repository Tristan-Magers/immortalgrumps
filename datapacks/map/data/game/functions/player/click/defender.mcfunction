execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:0}}}] run scoreboard players set @s player_card_select 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:1}}}] run scoreboard players set @s player_card_select 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:2}}}] run scoreboard players set @s player_card_select 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:3}}}] run scoreboard players set @s player_card_select 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:4}}}] run scoreboard players set @s player_card_select 4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:5}}}] run scoreboard players set @s player_card_select 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:6}}}] run scoreboard players set @s player_card_select 6
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:7}}}] run scoreboard players set @s player_card_select 7
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:8}}}] run scoreboard players set @s player_card_select 8
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:9}}}] run scoreboard players set @s player_card_select 9
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:10}}}] run scoreboard players set @s player_card_select 10

execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:0}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:1}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:2}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:3}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:4}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:5}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:6}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 6
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:7}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 7
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:8}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 8
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:9}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 9
execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{type:10}}}] run scoreboard players set @a[tag=turn,limit=1] player_card_opponent 10

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

tag @s[scores={player_card_select=1..}] remove battle